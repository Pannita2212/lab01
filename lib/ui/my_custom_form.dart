import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Form"),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Image.asset(
              "resources/Koala.jpg",
              height: 100,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Please input your email",
                icon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                //add conditions when user input here!!
                if (value.isEmpty) {
                  return "Please input value";
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Please input your password",
                icon: Icon(Icons.lock),
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
              validator: (value) {
                if (value.isEmpty) {
                  return "Please input value";
                }
              },
            ),
            RaisedButton(
              child: Text("Continue"),
              onPressed: () {
                _formKey.currentState.validate();
              },
            ),
            // Center(
            //   child: FlatButton(
            //     child: Text("back to first screen"),
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
