import 'package:flutter/cupertino.dart';

class MyCard extends StatelessWidget{
  final Color? color;
  final Color? fcolor;
  final Icon? icon;
  final String? fText;
  final String? sText;

  const MyCard({
    Key? key,
    this.icon,
    this.color,
    this.fcolor,
    this.fText,
    this.sText,
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185,
      height: 63,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon!.icon ,
                  color: fcolor,
                )
              ],
            ),
            SizedBox(width: 8,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fText! ,
                  style: TextStyle(fontSize: 18,color: fcolor),
                ),
                Text(
                  sText! ,
                  style: TextStyle(fontSize: 12,color: fcolor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}