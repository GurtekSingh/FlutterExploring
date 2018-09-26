import 'package:flutter/material.dart';
import 'bottom.dart';
import 'labelvalue.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  _DragScreenState createState() => _DragScreenState();
}

class _DragScreenState extends State<BottomSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Open Bottom Sheet"),
      onTap: () {
        bottomSheet(context);
      },
    );
  }

  Widget bottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Theme(
            data: ThemeData.dark(),
            child: Container(
              color: Colors.green[600],
              child: Column(

                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Label Here !",
                      style: Theme.of(context).textTheme.headline.copyWith(
                        color: Colors.white
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        LabelValue(),
                        LabelValue(),
                        LabelValue(),
                        LabelValue(),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: 140.0,
                            height: 80.0,
                            child: FlatButton(onPressed: (){},
                              child: Text("Confirm"
                                ,style: Theme.of(context).textTheme.subhead.copyWith(
                                  color: Colors.white
                                ),),
                             shape: RoundedRectangleBorder(
                               side: BorderSide(
                                 color: Colors.white,
                                 style: BorderStyle.solid
                               ),
                               borderRadius: BorderRadius.all(Radius.circular(10.0))
                             ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
