import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_food_log_app/models/food.dart';

class SupabaseService {
  final supabase = Supabase.instance.client;

  Future<List<Food>> getAllFood() async {
    try {
      final data = await supabase
          .from('food_tb')
          .select('*')
          .order('foodDate', ascending: false);

      return (data as List).map((e) => Food.fromJson(e)).toList();
    } catch (e) {
      print('Supabase Error: $e');
      return [];
    }
  }

  Future insertFood(Food food) async {
    await supabase.from('food_tb').insert(food.toJson());
  }
}
