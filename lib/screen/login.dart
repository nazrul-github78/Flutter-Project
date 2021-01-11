import 'package:flutter/material.dart';
import 'package:login_signing_cts/screen/sign_up.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() {
    return _LoginState();
  }

}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login & SignUp CTS'),
      ),
      body: Form (
      key: _formKey,
      child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListView( children: <Widget>[
      Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: Text(
            'CTrends Software and Services Ltd.',
            style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.w500,
                fontSize: 20),
          )),
      Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: Text(
            'Log in',
            style: TextStyle(fontSize: 20),
          )),
      Container(
        padding: EdgeInsets.all(10),
        child: TextField(
          controller: _username,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'User Name',

          ),
        ),
      ),
      Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: TextField(
          obscureText: true,
          controller: _password,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
        ),
      ),
      FlatButton(
        onPressed: () {
          //forgot password screen
        },
        textColor: Colors.blue,
        child: Text('Forgot Password'),
      ),
      Container(
          height: 50,
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: RaisedButton(
            textColor: Colors.white,
            color: Colors.teal,
            child: Text('Login'),
            onPressed: () {
              // if (_formKey.currentState.validate()) {
              //   if (nameController.text =='nazrul' && passwordController.text =='123') {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => DisplayPage(
              //           username: nameController.text,
              //           password: passwordController.text,
              //         ),
              //       ),
              //     );
              //   }
              //   else{
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => DisplayInvalidPage(
              //           username: nameController.text,
              //           password: passwordController.text,
              //         ),
              //       ),
              //     );
              //   }
              //
              // }

              print(_username.text);
              print(_password.text);



            },
          )),
      Container(
          child: Row(
            children: <Widget>[
              Text('Does not have account?'),
              FlatButton(
                textColor: Colors.blue,
                child: Text(
                  'Sign up',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignUp(),
                  ));
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ))
    ],
    ),
      )
      ),
    );
  }
}
