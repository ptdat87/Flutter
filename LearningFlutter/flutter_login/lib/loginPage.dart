import 'package:flutter/material.dart';
import 'user.dart';
import 'package:toast/toast.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoginPageState();
  }
}

class LoginPageState extends State<LoginPage>{
  final User user = new User();

  @override
  Widget build(BuildContext context) {
    final TextField _txtUserName = new TextField(
      decoration: InputDecoration(
          hintText: "Enter your username",
          contentPadding: EdgeInsets.all(10.0),
          border: InputBorder.none
      ),
      keyboardType:  TextInputType.text,
      autocorrect: false,
      onChanged: (text){
      setState(() {
        this.user.userName = text;
      });
    },
    );

    final TextField _txtPassword = new TextField(
      decoration: InputDecoration(
          hintText: "Enter your password",
          contentPadding: EdgeInsets.all(10.0),
          border: InputBorder.none
      ),
      keyboardType:  TextInputType.text,
      autocorrect: false,
      obscureText: true ,
      onChanged: (text){
        setState(() {
          this.user.passWord = text;
        });
      },
    );

    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Login Screen Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0) ,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 230 , 230, 240),
              border: new Border.all(width: 1.2,color: Colors.black12),
              borderRadius: const BorderRadius.all(const Radius.circular(4.0))
            ),
            child: _txtUserName,
          ),
          Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20.0) ,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 230 , 230, 240),
                border: new Border.all(width: 1.2,color: Colors.black12),
                borderRadius: const BorderRadius.all(const Radius.circular(4.0))
            ),
            child: _txtPassword,
          ),
          Container(
            margin: EdgeInsets.only(left:20.0,right: 20.0),
            child: Row (
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("Login"),
                    onPressed: (){
                      Toast.show("Hi ${user.userName}", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.TOP);
                    },
                  ),
                )

              ],
            ),
          )

        ],
      ),
    );
  }
}