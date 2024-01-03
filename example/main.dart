import 'dart:async';
import 'package:rawg_dart_wrapper/rawg_dart_wrapper.dart';

Future<dynamic> main() async {
  // Initialize
  Rawg(apiKey: "0000000000000000");
  // now you can use the static methods

  // get all games
  List<Game> games = await Rawg.getGames(page: 1);

  List<Game> games2 = await Rawg.getGames(order: Ordering.released); // custom order

  // search for games
  games2 = await Rawg.getGames(query: "Call of duty");

  // get details
  Game detail = await Rawg.getGameDetails(id: games2.first.id);

  // get the genres
  List<Genre> genres = await Rawg.getGenres();

  // get the platform
  List<Platform> platforms = await Rawg.getPlatforms();

  // get the achievement for game
  List<Achievement> achievement = await Rawg.getAchievements(id: games.first.id);

  achievement = await Rawg.getAchievements(id: games.first.id);

  print(games);
  print(detail);
  print(platforms);
  print(genres);
  print(achievement);
}
