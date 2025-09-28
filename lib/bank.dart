import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bank_details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 220,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xFF171718),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 10, bottom: 8, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Set up Payment methods 2/3",
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(width: 89),
                Icon(Icons.navigate_next, color: Color(0xFF87CEEB)),
              ],
            ),
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_balance_outlined,
                        color: Color(0xFF87CEEB),
                        size: 36,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Bank Account",
                        style: TextStyle(color: CupertinoColors.white),
                      ),
                      Text(
                        "3 Account",
                        style: TextStyle(color: Colors.white54),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            radius: 24,
                            backgroundColor: Color(0xFF1E88E5),
                            child: Icon(
                              Icons.credit_card_outlined,
                              color: Color(0xFF87CEEB),
                              size: 28,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Color(0xFF87CEEB),
                                border: Border.all(
                                  color: CupertinoColors.black,
                                  width: 2,
                                ),
                              ),
                              child: Center(
                                child: Icon(Icons.add, color: Colors.black87),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "RuPay Credit\n       card",
                        style: TextStyle(color: CupertinoColors.white),
                      ),
                      Text(
                        "Pay with UPI",
                        style: TextStyle(color: Colors.white54),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Icon(Icons.bolt, color: Color(0xFF87CEEB), size: 39),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Icon(Icons.error_outline, size: 18),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "UPI Lite",
                        style: TextStyle(color: CupertinoColors.white),
                      ),
                      SizedBox(height: 8),
                      Container(
                        width: 60,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color(0xFFD32F2F),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Text(
                            "Inactive",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
