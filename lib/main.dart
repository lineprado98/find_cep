import 'package:find_cep/app/core/utils/service_locator.dart';
import 'package:find_cep/app/my_app_widget.dart';
import 'package:flutter/material.dart';

void main() {
  ServiceLocator.setup();
  runApp(const MyApp());
}
