class Stock {
  final String id;
  final String title;
  final String description;
  final double price;
  final String percentage;
  final String type;
  bool isWatchlist;

  Stock({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.percentage,
    required this.type,
    this.isWatchlist = false,
  });

  Stock copyWith({
    String? id,
    String? title,
    String? description,
    double? price,
    String? percentage,
    String? type,
    bool? isWatchlist,
  }) {
    return Stock(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      percentage: percentage ?? this.percentage,
      type: type ?? this.type,
      isWatchlist: isWatchlist ?? this.isWatchlist,
    );
  }
}
