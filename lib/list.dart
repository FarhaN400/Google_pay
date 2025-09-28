import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  final String? fText;
  final Icon? icon;
  final String? sText;
  final bool? Add;
  final bool? New;

  const MyList({
    super.key,
    required this.fText,
    required this.icon,
    this.sText,
    this.Add,
    this.New,
  });
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 55,
      decoration: BoxDecoration(color: CupertinoColors.black),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 4,
              right: 4,
              left: 4,
              bottom: 2,
            ),
            child: Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(icon?.icon, color: Color(0xFF87CEEB), size: 38),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              fText!,
                              style: TextStyle(
                                fontSize: 18,
                                color: CupertinoColors.white,
                              ),
                            ),
                            SizedBox(width: 10,),
                            New!
                                ? Container(
                              width: 40,
                              height: 18,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: Color(0xFF87CEEB),
                              ),
                              child: Center(
                                child: Text(
                                  "New",
                                  style: TextStyle(
                                    color: CupertinoColors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            )
                                : Text(""),
                            SizedBox(width: 85,),
                            Add!
                                ? Text(
                              "Add",
                              style: TextStyle(
                                color: Color(0xFF87CEEB),
                                fontSize: 18,
                              ),
                            )
                                : Text(""),
                          ],
                        ),
                        Text(
                          sText!,
                          style: TextStyle(fontSize: 14, color: Colors.white60),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
