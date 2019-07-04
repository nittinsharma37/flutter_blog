import 'package:app27_blog/pages/signup.dart';
import 'package:flutter/material.dart';

class LoginSignup extends StatefulWidget {
  @override
  _LoginSignupState createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
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
            padding: const EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
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
                              //email field here 
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Email",
                                    hintText: "name@example.com",
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  controller: _emailTextController,
                                  validator: (value){
                                    if(value.isEmpty){
                                      Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                      RegExp regExp = RegExp(pattern);
                                      if(!regExp.hasMatch(value)){
                                        return "please make sure  your email address is valid ";
                                      }
                                      return null;
                                    }
                                  },
                                ),
                              ),
                              // password field here 
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
                                  validator: (value){
                                    if(value.isEmpty){
                                      return "Password is required to login ";
                                    } else if(value.length < 6){
                                      return "Password is required to be atleast 6";
                                    }
                                    return null;
                                  },
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
                                        "Sign In",
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("New user? "),
                                      Text(
                                        "Create account",
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
