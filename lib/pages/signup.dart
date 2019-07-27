import 'package:app27_blog/pages/login.dart';
import 'package:app27_blog/utils/myslide.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

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
              image: AssetImage("assets/signup.jpg"),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(top: 90.0, left: 30.0, right: 30.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Create",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      "Account.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42.0,
                        letterSpacing: 2.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50.0,),
                      child: Form(
                        key: _fromkey,
                        child: Column(
                          children: <Widget>[
                            //email field here
                            TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.white, fontSize: 24.0),
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
                                hintStyle: TextStyle(color: Colors.white, fontSize: 24.0),
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
                                  "Sign up",
                                  style: TextStyle(
                                    color: Colors.white,
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
                            Route route = MySlide(builder: (context) => LoginPage());
                            Navigator.push(context, route);
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.white,
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