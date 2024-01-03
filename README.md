# RAWG Wrapper

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


### TODO
- [ ] Screenshot for game
- [ ] Search games by platform
- [ ] Search games by genre
- [ ] Store wrapper


echo "# RAWG_dart_wrapper" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/IsD4n73/RAWG_dart_wrapper.git
git push -u origin main
