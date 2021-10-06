import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:flutter_app_bc02/views/sign_up_ui.dart';

class LogInUI extends StatefulWidget {
  const LogInUI({Key? key}) : super(key: key);

  @override
  _LogInUIState createState() => _LogInUIState();
}

class _LogInUIState extends State<LogInUI> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xFF424552),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30.0,
                      )),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      fontSize: 45.0,
                      color: Colors.orangeAccent[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                  right: 40.0,
                ),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFE38D00),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.person_outline,
                      size: 35.0,
                      color: Colors.grey,
                    ),
                    hintText: "Username",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                  right: 40.0,
                ),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFE38D00),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      size: 35.0,
                      color: Colors.grey,
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Incorrect Password",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange[800],
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 80,
                    55.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      55.0,
                    ),
                    side: BorderSide(
                      color: Colors.orange.shade200,
                      width: 2.0,
                    ),
                  ),
                  elevation: 10.0, //เงา
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "First time here ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context){
                            return SignUpUI();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[200],
                        fontSize: 16.0,
                      ),
                    ),
                  ),//ให้ text กดได้ ใช้ได้ 2 ตัวคือ InkWell กับ GestureDetector
                ],
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
