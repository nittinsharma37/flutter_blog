import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
   final _formKey = GlobalKey<FormState>();

  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _confirmPasswordTextController = TextEditingController();
  TextEditingController _usernameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/back.jpg",
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0, bottom: 10.0),
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white.withOpacity(0.6),
                child: Material(
                  elevation: 30.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 100.0,
                            width: 150.0,
                            child: Image(
                              image: AssetImage("assets/logo.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                      Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Full name",
                                    hintText: "John doe",
                                  ),
                                  keyboardType: TextInputType.text,
                                  controller: _usernameTextController,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Email",
                                    hintText: "name@example.com",
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  controller: _emailTextController,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    hintText: "1234567",
                                  ),
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  controller: _passwordTextController,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    hintText: "1234567",
                                  ),
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  controller: _confirmPasswordTextController,
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: MaterialButton(
                                  color: Colors.black,
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Sign up",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22.0),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("Already a user "),
                                      Text(
                                        "Log in",
                                        style: TextStyle(
                                            color:  Theme.of(context).primaryColor,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0,)
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}