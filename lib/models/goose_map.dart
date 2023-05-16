class GusMap {
  final int id;
  // final int time;
  // final Date date;
  final String title;
  // final String picture;

  GusMap({
    required this.id,
    // required this.time,
    // required this.date,
    required this.title,
    // required this.picture,
  });

  factory GusMap.fromMap(Map<String, dynamic> json) => GusMap(
        id: json['id'],
        title: json['title'],
      );
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
    };
  }
}
