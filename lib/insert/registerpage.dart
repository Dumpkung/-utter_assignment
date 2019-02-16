import 'package:flutter/material.dart';
import 'package:regisapp/insert/loginpage.dart';

class Registerpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Registerwork();
  }

}

class Registerwork extends State<Registerpage> {

  var userid = "", userpass = "", userconfirmpass = "";
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          centerTitle: true ,
          title: new Text("Register"),
      ),
      body: Form(
         key: _formKey,
         child: ListView(
           padding: const EdgeInsets.all(35.0),
           children: <Widget>[
             Center(
               child: TextFormField(
                    decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: 'Please enter your email'),
                    validator: (value) {
                        userid = value;
                    },
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (value) => print(value),
                  ),
             ),
                Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        hintText: 'Please enter your password'),
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        onSaved: (value) => print(value),
                        validator: (value) {
                          userpass = value;
                        },
                  ),
                ),
                Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        hintText: 'Please confirm your password again'),
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        onSaved: (value) => print(value),
                        validator: (value) {
                          userconfirmpass = value;
                        },
                  ),
                ),
                Center(
                  child: RaisedButton(
                      child: Text("Continue"),
                      onPressed: () {
                        if(_formKey.currentState.validate()) {
                          if(userid == "" || userpass == "" || userconfirmpass == ""){
                            _scaffoldKey.currentState.showSnackBar(SnackBar(
                              backgroundColor: Colors.black,
                              content: Text('กรุณาระบุข้อมูลให้ครบถ้วน'),
                            ));
                          }
                          else if(userid == "admin"){
                            _scaffoldKey.currentState.showSnackBar(SnackBar(
                              backgroundColor: Colors.black,
                              content: Text('user นี้มีอยู่ใน ระบบแล้ว'),
                            ));
                          }
                          else {
                              Navigator.pop(context);
                          } 
                        } 
                      }
                  ),
                ),
           ],
        ),
      ),
    );
  }
}