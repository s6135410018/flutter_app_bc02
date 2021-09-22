import "package:flutter/material.dart";

class LogInUI extends StatefulWidget {
  const LogInUI({ Key? key }) : super(key: key);

  @override
  _LogInUIState createState() => _LogInUIState();
}

class _LogInUIState extends State<LogInUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
    );
  }
}