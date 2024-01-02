class Platform {
    Platform({
        required this.id,
        required this.name,
        required this.slug,
        required this.gamesCount,
        required this.imageBackground,
    });

    final int id;
    final String name;
    final String slug;
    final int gamesCount;
    final String imageBackground;

    factory Platform.fromJson(Map<String, dynamic> json){ 
        return Platform(
            id: json["id"] ?? 0,
            name: json["name"] ?? "",
            slug: json["slug"] ?? "",
            gamesCount: json["games_count"] ?? 0,
            imageBackground: json["image_background"] ?? "",
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "games_count": gamesCount,
        "image_background": imageBackground,
    };

    @override
    String toString(){
        return "$id, $name, $slug, $gamesCount, $imageBackground, ";
    }
}
