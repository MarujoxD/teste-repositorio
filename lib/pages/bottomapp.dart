import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:lista/pages/novo_login_tela.dart';

import 'package:lista/pages/bottomapp.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  State<BottomNavigator> createState() => _BottomNavigator();
}

class _BottomNavigator extends State<BottomNavigator> {
  int _selectOpition = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectOpition = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey[200],
        child: Column(children: [
          SizedBox(
            height: 18.0,
          ),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: Text('Sair'),
            subtitle: Text('Voltar para tela de login'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => NovoLogin()));
              print('Tela de Login');
            },
          )
        ]),
      ),
      appBar: AppBar(
        title: const Text('BottomNavigationBar'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectOpition),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectOpition,
        onTap: (opition) {
          print('Clicou $opition');
          setState(() {
            _selectOpition = opition;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
