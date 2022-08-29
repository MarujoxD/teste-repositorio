import 'package:flutter/material.dart';

import 'package:lista/pages/bottomapp.dart';
import 'package:lista/pages/novo_login_tela.dart';
import 'package:lista/pages/listview.dart';

import 'package:lista/pages/bottomapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NovoLogin());
  }
}
