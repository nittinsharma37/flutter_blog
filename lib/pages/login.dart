import 'package:app27_blog/pages/signup.dart';
import 'package:app27_blog/utils/myslide.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _fromkey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Image(
              image: AssetImage("assets/login.jpg"),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(top: 90.0, left: 30.0, right: 30.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      " Welcome",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      "  Back.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42.0,
                        letterSpacing: 2.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 70.0,),
                      child: Form(
                        key: _fromkey,
                        child: Column(
                          children: <Widget>[
                            //email field here
                            TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle( fontSize: 20.0),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            //password field here.
                            SizedBox(
                              height: 30.0,
                            ),
                            TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(fontSize: 20.0),
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                            ),
                            SizedBox(height: 30.0,),
                            //Signin field here.
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                                  "Sign in",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Color(0xff515862),
                                  foregroundColor: Colors.white,
                                  onPressed: (){},
                                  child: Icon(Icons.arrow_forward, size: 40.0,),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    //signup and forgot password
                    SizedBox(height: 60.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            Route route = MySlide(builder: (context) => SignUpPage());
                            Navigator.push(context, route);
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                         InkWell(
                          onTap: (){},
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
