import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lista/pages/bottomapp.dart';

class NovoLogin extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('LoginPage'),
          centerTitle: true,
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: <Widget>[
              Icon(
                Icons.people_alt,
                size: 108,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'E-mail'),
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                validator: (text) {
                  if (text!.isEmpty || !text.contains('@'))
                    return "E-mail invalido";
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Password'),
                obscureText: true,
                validator: (text) {
                  if (text!.isEmpty || text.length < 6) return 'senha invalida';
                },
              ),
              Align(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'esqueceu a senha ?',
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              RaisedButton(
                child: Text(
                  'Entrar',
                  style: TextStyle(fontSize: 18.0),
                ),
                textColor: Colors.white,
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => BottomNavigator()));
                  }
                },
              )
            ],
          ),
        ));
  }
}
