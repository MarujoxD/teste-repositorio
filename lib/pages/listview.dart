import 'package:flutter/material.dart';

class HomePageList extends StatelessWidget {
  const HomePageList({Key? key}) : super(key: key);

  int nPrimo(int n) {
    int divisores = 0;
    for (int i = 1; i <= n; i++) {
      if (n % i == 0) {
        divisores++;
      }
    }
    if (divisores == 2) {
      return 1;
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListBuild Numeros Não Primos'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('item $index'),
          );
        },
      ),
    );
  }
}
