# Get the latest commit SHA in SOURCE branch
last_SHA=$(git log --pretty=format:'%h' -n 1)

# The name of the temporary folder will be the
#   last commit SHA, to prevent possible conflicts
#   with other folder names.
tmp_dir="temp_$last_SHA"

SITE="gh-pages"
SOURCE="main" 

# Build the Jekyll site directly to a temporary folder
jekyll build -d ~/$tmp_dir > /dev/null 2>&1
if [ $? = 0 ]; then
  echo "Jekyll build successful"
else
  echo "Jekyll build failed"
  exit 1
fi

# Switch to the SITE branch
git checkout $SITE > /dev/null 2>&1

# Do the update just to set head to same as on remote
git fetch > /dev/null > /dev/null 2>&1
git reset --hard HEAD > /dev/null 2>&1
git merge '@{u}' > /dev/null 2>&1

# Remove the current contents of the SITE branch and
#   replace them with the contents of the temp folder
current_dir=${PWD}
rm -r $current_dir/*
git rm -r --cached * > /dev/null 2>&1
cp -r ~/$tmp_dir/* $current_dir

# Commit the changes to the SITE branch
message="Updated $SITE site from $SOURCE ($last_SHA)"
git add --all .
git commit -m "$message" > /dev/null 2>&1

# Delete the temporary folder
rm -r ~/$tmp_dir

# Push latest SITE to server
git push -u origin $SITE > /dev/null 2>&1
if [ $? = 0 ]; then
  echo "Push $SITE successful"
else
  echo "Push $SITE failed"
fi

# Switch back to SOURCE branch
git checkout $SOURCE > /dev/null 2>&1

# Push the SOURCE to the server
git push -u origin $SOURCE > /dev/null 2>&1
if [ $? = 0 ]; then
  echo "Push $SOURCE successful"
else
  echo "Push $SOURCE failed"
fi