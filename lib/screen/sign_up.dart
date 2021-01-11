import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() {
    return _SignUpState();
  }
}

class _SignUpState extends State<SignUp> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController _fullname = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Login & SignUp CTS"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  )),

              TextFormField(
                controller: _fullname,
                decoration: InputDecoration(hintText: 'Full Name.'),
                validator: (value) => (value.length == 0 ? 'This field is mandatory' : null),

              ),
              TextFormField(
                validator: (value) => (value.length == 0 ? 'This field is mandatory' : null),
                decoration: InputDecoration(hintText: 'User Name'),
                controller: _username,

              ),
              TextFormField(
                validator: (value) => (value.length == 0 ? 'This field is mandatory' : null),
                decoration: InputDecoration(hintText: 'Email '),
                controller: _email,

              ),
              TextFormField(
                validator: (value) => (value.length == 0 ? 'This field is mandatory' : null),
                decoration: InputDecoration(hintText: 'Password'),
                obscureText: true,
                controller: _password,

              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Center(
                  child: RaisedButton(
                    color: Colors.green,
                    onPressed: () {
                      // if (_formKey.currentState.validate()) {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => DisplayFormData(
                      //         username: _username.text,
                      //         password: _password.text,
                      //       ),
                      //     ),
                      //   );
                      // }

                      print(_fullname.text);
                      print(_username.text);
                      print(_email.text);
                      print(_password.text);
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),


            ]
          ),
        ),
      ),
    );
  }
  }