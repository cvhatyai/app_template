import 'package:app_template/system/Info.dart';
import 'package:app_template/system/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var user = User();
  bool isLogin = false;
  var userAvatar = Info().baseUrl + "images/nopic-personal.jpg";

  void initState() {
    super.initState();
    getUsers();
  }

  getUsers() async {
    await user.init();
    setState(() {
      isLogin = user.isLogin;
      if (isLogin) {
        userAvatar = user.avatar;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Color(0xFFc7dbf0),
          child: Column(
            children: [
              Text("adad"),
            ],
          ),
        ),
      ),
    );
  }
}
