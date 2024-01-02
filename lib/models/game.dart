class Game {
    Game({
        required this.id,
        required this.slug,
        required this.name,
        required this.nameOriginal,
        required this.description,
        required this.released,
        required this.tba,
        required this.backgroundImage,
        required this.website,
        required this.achievementsCount,  
        required this.alternativeNames,
    });

    final int id;
    final String slug;
    final String name;
    final String nameOriginal;
    final String description;
    final String released;
    final bool tba;
    final String backgroundImage;
    final String website;
    final int achievementsCount;
    final List<String> alternativeNames;

    factory Game.fromJson(Map<String, dynamic> json){ 
        return Game(
            id: json["id"] ?? 0,
            slug: json["slug"] ?? "",
            name: json["name"] ?? "",
            nameOriginal: json["name_original"] ?? "",
            description: json["description"] ?? "",
            
            released: json["released"] ?? "",
            tba: json["tba"] ?? false,
            backgroundImage: json["background_image"] ?? "",
            website: json["website"] ?? "",
            achievementsCount: json["achievements_count"] ?? 0,
            alternativeNames: json["alternative_names"] == null ? [] : List<String>.from(json["alternative_names"]!.map((x) => x)),
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "slug": slug,
        "name": name,
        "name_original": nameOriginal,
        "description": description,
        "released": released,
        "tba": tba,
        "background_image": backgroundImage,
        "website": website,
        "achievements_count": achievementsCount,
        "alternative_names": alternativeNames.map((x) => x).toList(),
    };


  @override
  String toString() {
    return 'Game(id: $id, slug: $slug, name: $name, nameOriginal: $nameOriginal, description: $description, released: $released, tba: $tba, backgroundImage: $backgroundImage, website: $website, achievementsCount: $achievementsCount, alternativeNames: $alternativeNames)';
  }
}

              