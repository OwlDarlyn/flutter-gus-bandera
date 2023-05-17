class GusMap {
  final String date;
  final String itemId;

  GusMap({
    required this.date,
    required this.itemId,
  });

  factory GusMap.fromMap(Map<String, dynamic> json) => GusMap(
        date: json['date'],
        itemId: json['itemId'],
      );
  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'itemId': itemId,
    };
  }
}
