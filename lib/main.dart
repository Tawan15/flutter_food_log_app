import 'package:flutter/material.dart';
import 'package:flutter_food_log_app/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://rhevairflahafkapeulx.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJoZXZhaXJmbGFoYWZrYXBldWx4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzM3ODc5NzYsImV4cCI6MjA4OTM2Mzk3Nn0.yNVd3PfffmUcmAnoTHD9oRXPdfDyiJ9pHRKKqYMEws8',
  );
  runApp(const FlutterFoodLogApp());
}

class FlutterFoodLogApp extends StatefulWidget {
  const FlutterFoodLogApp({super.key});

  @override
  State<FlutterFoodLogApp> createState() => _FlutterFoodLogAppState();
}

class _FlutterFoodLogAppState extends State<FlutterFoodLogApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
          textTheme: GoogleFonts.promptTextTheme(Theme.of(context).textTheme)),
    );
  }
}
