class Food {
  String? id;
  DateTime? created_at;
  DateTime? foodData;
  String? foodMeal;
  String? foodName;
  double? foodPrice;
  int? foodPerson;

  Food({
    this.id,
    this.created_at,
    this.foodData,
    this.foodMeal,
    this.foodName,
    this.foodPrice,
    this.foodPerson,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': created_at?.toIso8601String(),
      'foodData': foodData?.toIso8601String(),
      'foodMeal': foodMeal,
      'foodName': foodName,
      'foodPrice': foodPrice,
      'foodPerson': foodPerson,
    };
  }

  factory Food.fromMap(Map<String, dynamic> map)  =>Food (
      id: map['id'] as String,
      created_at: DateTime.parse(map['created_at'] as String),
      foodData: DateTime.parse(map['foodData'] as String),
      foodMeal: map['foodMeal'] as String,
      foodName: map['foodName'] as String,
      foodPrice: map['foodPrice'] as double,
      foodPerson: map['foodPerson'] as int,
    );
}
