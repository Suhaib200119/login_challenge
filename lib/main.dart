import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_challenge/Screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/screen2': (context) => new Screen2(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool statePassword = true;
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
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  "assets/images/logoLogin.jpg",
                  height: 250,
                ),
                Text(
                  "Welcome back!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Login to your existant account of Q Allure",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(
                  height: 25,
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
                  height: 15,
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
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(color: Colors.black38),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
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
                  onPressed: () {

                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Or connect using",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      child: Text(
                        "F facebook",
                        style: TextStyle(fontSize: 22),
                      ),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Colors.red,
                      textColor: Colors.white,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      child: Text(
                        "G Google",
                        style: TextStyle(fontSize: 22),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "To create an account ",
                      style: TextStyle(color: Colors.black38),
                    ),
                    InkWell(
                      child: Text(
                        "click here ",
                        style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacement(MaterialPageRoute(builder: (_) {
                          return Screen2();
                        }));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
