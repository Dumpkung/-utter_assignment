import 'package:flutter/material.dart';
import 'package:regisapp/insert/homepage.dart';
import 'package:regisapp/insert/registerpage.dart';

class Loginpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Loginpagework();
  }

}

class Loginpagework extends State<Loginpage> {

  var userid = "", userpass = "";
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      body: Form(
          key: _formKey,
          child: ListView(
              padding: const EdgeInsets.all(35.0),
              children: <Widget>[
                new Center(child: Image.asset("img/login.jpg", width: 200, height: 200,fit: BoxFit.cover,),),
                new Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                    icon: Icon(Icons.account_box),
                    hintText: 'User id'),
                    validator: (value) {
                        userid = value;
                    },
                    keyboardType: TextInputType.text,
                    onSaved: (value) => print(value),
                  ), 
                ),
                new Center(
                  child: TextFormField(
                      decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: 'Password'),
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      onSaved: (value) => print(value),
                      validator: (value) {
                        userpass = value;
                      },
                  ),
                ),
                new Center(
                  child: RaisedButton(
                    child: Text("Login"),
                    onPressed: () {
                      if(_formKey.currentState.validate()) {
                        if(userid == "" || userpass == ""){
                          _scaffoldKey.currentState.showSnackBar(SnackBar(
                            backgroundColor: Colors.black,
                            content: Text('กรุณาระบุ user or password'),
                          ));
                        }
                        else if(userid == "admin" && userpass == "admin"){
                          _scaffoldKey.currentState.showSnackBar(SnackBar(
                            backgroundColor: Colors.black,
                            content: Text('user or password ไม่ถูกต้อง'),
                          ));
                        }
                        else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homepage()));
                        } 
                      } 
                    }
                  ),
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: FlatButton(
                        child: Text(
                          "Register New Account",
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Registerpage()));
                        })),
              ],
            ),
          ),
        );
  }


}