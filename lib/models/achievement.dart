class Achievement {
  /// Constructor of Achievement
  Achievement({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.percent,
  });

  /// ID of Achievement 
  final int id;
  /// name of Achievement
  final String name;
  /// description of Achievement
  final String description;
  /// image of Achievement
  final String image;
  /// percent of Achievement
  final String percent;

  /// get the model from the json
  factory Achievement.fromJson(Map<String, dynamic> json) {
    return Achievement(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      description: json["description"] ?? "",
      image: json["image"] ?? "",
      percent: json["percent"] ?? "",
    );
  }

  /// get the json from the model
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "image": image,
        "percent": percent,
      };

  @override
  String toString() {
    return "$id, $name, $description, $image, $percent, ";
  }
}
