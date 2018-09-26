import 'package:flutter/material.dart';

class LabelValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            "Label",
            style: Theme.of(context).textTheme.body1.copyWith(
              fontSize: 16.0
            ),
          ),
          Text("Value", style: Theme.of(context).textTheme.body2.copyWith(
            fontSize: 18.0
          ))
        ],
      ),
    );
  }
}
