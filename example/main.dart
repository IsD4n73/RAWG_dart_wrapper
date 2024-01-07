import 'dart:async';
import 'package:rawg_dart_wrapper/rawg_dart_wrapper.dart';

Future<dynamic> main() async {
  // Initialize
  Rawg(apiKey: "0000000000000000");
  // now you can use the static methods

  // get all games
  List<Game> games = await Rawg.getGames(page: 1);

  List<Game> games2 =
      await Rawg.getGames(order: Ordering.released); // custom order

  // get the screenshot
  List<String> screen = await Rawg.getScreenshot(gameID: games2.first.id);

  // get the trailer
  List<String> trailer = await Rawg.getTrailers(gameID: games2.first.id);

  // search for games
  games2 = await Rawg.getGames(query: "Call of duty");

  // get details
  Game detail = await Rawg.getGameDetails(id: games2.first.id);

  // get the genres
  List<Genre> genres = await Rawg.getGenres();

  // get the platform
  List<Platform> platforms = await Rawg.getPlatforms();

  // get the achievement for game
  List<Achievement> achievement =
      await Rawg.getAchievements(id: games.first.id);

  achievement = await Rawg.getAchievements(id: games.first.id);

  /// get the publisher
  List<Publisher> publish = await Rawg.getPublisher();

  /// get the store
  List<Store> store = await Rawg.getStore();

  print(games);
  print(detail);
  print(trailer);
  print(screen);
  print(platforms);
  print(genres);
  print(achievement);
  print(publish);
  print(store);
}
