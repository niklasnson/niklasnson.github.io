---
layout: post
title: libGDX save and load game data
categories: [programming, network, tips and tricks]
tags: [c++, ruby, python, git, vim, ruby on rails]
---

So you want to load and save some data in your game, a good way is via a JSON file.

In your main class:
{% highlight java %}
	@Override
	public void create () {
		batch = new SpriteBatch();
    GameManager.getInstance().initializeGameData();
		setScreen(new IntroScene(this));
	}
{% endhighlight %}

Set up a GameData class:
{% highlight java %}
public class GameData {

  private int highscore;
    private boolean musicOn;

  public int getHighscore() {
    return highscore;
  }

  public void setHighscore(int highscore) {
    this.highscore = highscore;
  }

  public boolean isMusicOn() {
    return musicOn;
  }

  public void setMusicOn(boolean musicOn) {
    this.musicOn = musicOn;
  }
}
{% endhighlight %}

And set up a GameManager class:
{% highlight java %}
  private static GameManager ourInstance = new GameManager();

  public GameData gameData;
  private Json json = new Json();
  private FileHandle fileHandle = Gdx.files.local("bin/GameData.json");
  private GameManager() {}

  public void initializeGameData() {
    if (!fileHandle.exists()) {
      gameData = new GameData();

      gameData.setHighscore(0);
      gameData.setMusicOn(false);

      saveData();
    } else {
      loadData();
    }
  }

  public void saveData() {
    if (gameData != null) {
      fileHandle.writeString(Base64Coder.encodeString(json.prettyPrint(gameData)),
          false);
    }
  }

  public void loadData() {
    gameData = json.fromJson(GameData.class,
        Base64Coder.decodeString(fileHandle.readString()));
  }
    public static GameManager getInstance() {
    return ourInstance;
  }
{% endhighlight %}

Game data will be loaded if the is JSON file in "bin/" else a file will be created.
The file will be encoded so it will be hard to manipulate by a user.

