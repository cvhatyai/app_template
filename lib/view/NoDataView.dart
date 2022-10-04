import 'package:app_template/system/StringTheme.dart';
import 'package:flutter/material.dart';

class NoDataView extends StatelessWidget {
  const NoDataView({
    Key? key,
    this.onRefresh,
  }) : super(key: key);
  final onRefresh;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(StringTheme().noData),
          SizedBox(height: 8),
          if (onRefresh != null)
            GestureDetector(
              onTap: () {
                onRefresh();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  color: Color(0xFFB7B7B7),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  "Refresh",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
