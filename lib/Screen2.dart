import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_challenge/main.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool statePassword = true;
  bool statePassword2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            height: 805,
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Stack(
              children:[
                IconButton( onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
                    return MyApp();
                  }));
                },
                    icon: Icon(Icons.arrow_back_sharp)
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      "Lets Get Started!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Create an account to Q Allure to get all features",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "username",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black26),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        prefixIcon: Icon(Icons.person),
                      ),
                      style: TextStyle(
                          color: Colors.blueAccent, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black26),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        prefixIcon: Icon(Icons.email),
                      ),
                      style: TextStyle(
                          color: Colors.blueAccent, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "phone",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black26),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        prefixIcon: Icon(Icons.phone_android),
                      ),
                      style: TextStyle(
                          color: Colors.blueAccent, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: statePassword,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black26),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              statePassword = !statePassword;
                            });
                          },
                          icon: Icon(statePassword
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                      style: TextStyle(
                          color: Colors.blueAccent, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: statePassword2,
                      decoration: InputDecoration(
                        hintText: "Confirnm Password",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black26),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              statePassword2 = !statePassword2;
                            });
                          },
                          icon: Icon(statePassword2
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                      style: TextStyle(
                          color: Colors.blueAccent, fontWeight: FontWeight.bold),
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 90),
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 22),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an accounted? ",
                          style: TextStyle(color: Colors.black38),
                        ),
                        InkWell(
                          child: Text(
                            "Login Here ",
                            style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(builder: (_) {
                              return MyApp();
                            }));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
