import 'package:flutter/material.dart';

class FrontPageView extends StatefulWidget {

  FrontPageView({
    Key? key,
    this.payload = "",
  }) : super(key: key);

  String payload;

  @override
  State<FrontPageView> createState() => _FrontPageViewState();
}

class _FrontPageViewState extends State<FrontPageView> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
