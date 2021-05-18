import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool btnClicked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        // child: ElevatedButton(
        //   child: Text("Login"),
        //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
        //   onPressed: () {
        //     Navigator.pushNamed(context, "/home");
        //   },
        // ),
        child: InkWell(
          onTap: () async {
            setState(() {
              btnClicked = true;
            });
            await Future.delayed(Duration(milliseconds: 300));
            Navigator.pushNamed(context, "/home");
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            width: btnClicked ? 50 : 150,
            height: 50,
            alignment: Alignment.center,
            child: btnClicked
                ? Icon(
                    Icons.done,
                    color: Colors.white,
                  )
                : Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: btnClicked
                    ? BorderRadius.circular(50)
                    : BorderRadius.circular(8)),
          ),
        ),
      ),
    );
  }
}
