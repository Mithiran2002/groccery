import 'package:sizer/sizer.dart';
import 'package:logger/logger.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

const purple = Color(0xFF6d276d);

var logger = Logger(
  printer: PrettyPrinter(
      methodCount: 2, // Number of method calls to be displayed
      errorMethodCount: 8, // Number of method calls if stacktrace is provided
      lineLength: 2000, // Width of the output
      colors: true, // Colorful log messages
      printEmojis: true, // Print an emoji for each log message
      printTime: false // Should each log print contain a timestamp
      ),
);

class ApiConstants {
  static String BASEURL = 'https://dummyjson.com/';
  static String RECIPE_ENDPOINT = 'recipes';
  static String AUTH_ENDPOINT = 'auth/login';
  static String LOGIN_ENDPOINT = 'login';
  static String COUNT_ENDPOINT = 'count';
}
