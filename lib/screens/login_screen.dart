import 'package:doccieconfeitaria3/screens/category_screen.dart';
import 'package:doccieconfeitaria3/screens/singup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Doccie Confeitaria"),
          centerTitle: true,
        ),
        body: Stack(
          /*decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/bg-cake.jpg"),
              )
          ),*/
          children: <Widget>[
        Image.asset("images/bg-cake3.png",
            fit: BoxFit.cover),
            ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 0, bottom: 60),
                            child: Image.asset("images/logo.png",
                                width: 200,
                                height: 250,
                                fit: BoxFit.contain),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: FlatButton(
                                onPressed: (){},
                                child: Text("Esqueci minha senha",
                                  textAlign: TextAlign.right,)
                            ),
                          ),
                          SizedBox(
                            height: 44.0,
                            child: RaisedButton(
                              onPressed: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => CategoryScreen())
                                );
                              },
                              child: Text("Entrar",
                                style: TextStyle(
                                  fontSize: 18,

                                ),
                              ),
                              textColor: Colors.white,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          SizedBox(
                            height: 44.0,
                            child: RaisedButton(
                              onPressed: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => SignUpScreen())
                                );
                              },
                              child: Text("Cadastrar",
                                style: TextStyle(
                                  fontSize: 18,

                                ),
                              ),
                              textColor: Colors.white,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
    );
  }
}
