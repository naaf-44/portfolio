import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/portfolio_model.dart';

class PortfolioService {
  static Future<PortfolioModel> loadPortfolioData() async {
    try {
      final String jsonString = await rootBundle.loadString('assets/data/portfolio_data.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      return PortfolioModel.fromJson(jsonData);
    } catch (e) {
      throw Exception('Failed to load portfolio data: $e');
    }
  }
}