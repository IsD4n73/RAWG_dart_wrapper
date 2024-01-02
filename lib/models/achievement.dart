class Achievement {
    Achievement({
        required this.id,
        required this.name,
        required this.description,
        required this.image,
        required this.percent,
    });

    final int id;
    final String name;
    final String description;
    final String image;
    final String percent;

    factory Achievement.fromJson(Map<String, dynamic> json){ 
        return Achievement(
            id: json["id"] ?? 0,
            name: json["name"] ?? "",
            description: json["description"] ?? "",
            image: json["image"] ?? "",
            percent: json["percent"] ?? "",
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "image": image,
        "percent": percent,
    };

    @override
    String toString(){
        return "$id, $name, $description, $image, $percent, ";
    }
}
