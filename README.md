# RAWG Wrapper
[![Pub](https://img.shields.io/pub/v/rawg_dart_wrapper.svg)](https://pub.dev/packages/rawg_dart_wrapper)

### RAWG API Documentation

RAGW API Docs Avalible <a href ="https://api.rawg.io/docs/">here.</a>

```HTML
https://api.rawg.io/docs/
`````

### Import
```dart
import 'package:rawg_dart_wrapper/rawg_dart_wrapper.dart';
`````

### Usage
1) Initialize 
```dart
Rawg(apiKey: "0000000000000000");

// now you can use the static methods
``` 

2) Usage
- games
```dart
// get all games
List<Game> games = await Rawg.getGames(page: 1);

List<Game> games = await Rawg.getGames(order: Ordering.released); // custom order

// search for games
List<Game> games = await Rawg.getGames(query: "Call of duty");

// get details
Game detail = await Rawg.getGameDetails(id: 5);

// get the screenshot
List<String> screen = await Rawg.getScreenshot(gameID: 5);

// get the trailer
List<String> trailer = await Rawg.getTrailers(gameID: 5);
```

- genres
```dart
// get the genres
List<Genre> genres = await Rawg.getGenres();
```

- achievements
```dart
Game game = ... // single game from getGames()

// get the achievement for game
List<Achievement> achievement = await Ragw.getAchievements(id: game.id);

List<Achievement> achievement = await Ragw.getAchievements(id: game.id, page: 3);
```

- platforms
```dart
// get the platform
List<Platform> platforms = await Ragw.getPlatforms();
```

- publisher
```dart
// get the publisher
List<Publisher> publisher = await Ragw.getPublisher();
```
- store
```dart
// get the store
List<Store> publisher = await Ragw.getStore();

// get the store for game
List<String> gameStore = await Rawg.getStoreForGame(gameID: 5);
``` 


### TODO
- Get links to the stores that sell the game
