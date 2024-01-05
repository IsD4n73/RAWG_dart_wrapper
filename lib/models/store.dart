class Store {
    /// Constructor of Store
    Store({
        required this.id,
        required this.name,
        required this.domain,
        required this.slug,
        required this.gamesCount,
        required this.imageBackground,
        required this.description,
    });

    /// ID of Store
    final int id;
    /// name of the store
    final String name;
    /// site of the store
    final String domain;
    /// slug ID of the store
    final String slug;
    /// count of [Game] on this store
    final int gamesCount;
    /// image of the store
    final String imageBackground;
    /// description of the store
    final String description;

    /// get the [Store] from the json
    factory Store.fromJson(Map<String, dynamic> json){ 
        return Store(
            id: json["id"] ?? 0,
            name: json["name"] ?? "",
            domain: json["domain"] ?? "",
            slug: json["slug"] ?? "",
            gamesCount: json["games_count"] ?? 0,
            imageBackground: json["image_background"] ?? "",
            description: json["description"] ?? "",
        );
    }

    @override
    String toString(){
        return "$id, $name, $domain, $slug, $gamesCount, $imageBackground, $description, ";
    }
}
