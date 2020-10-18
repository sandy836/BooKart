import 'package:flutter/material.dart';

class CustomCircularProgressWidget extends StatelessWidget {
  const CustomCircularProgressWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 10,
              height: 65,
            ),
            CircularProgressIndicator(),
            SizedBox(
              width: 5.0,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Loading....",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15.0),
            )
          ],
        ),
      ),
    );
  }
}
