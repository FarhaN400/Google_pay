import 'package:flutter/material.dart';
import 'package:google_pay/Card.dart';
import 'package:google_pay/bank.dart';
import 'package:google_pay/list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height * .22,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      child: Icon(Icons.arrow_back, color: Colors.white),
                      onTap: () {},
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Farhan Akhtar",
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                    Text(
                      "UPI ID : fa0720436@oksbi",
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Text(
                          '82XXXXXX92',
                          style: TextStyle(color: Colors.white70, fontSize: 20),
                        ),
                        SizedBox(width: 18),
                        Container(
                          width: 155,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.add_circle, color: Colors.lightBlue),
                              Text(
                                "Link UPI Number",
                                style: TextStyle(color: Colors.lightBlue),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      child: Icon(Icons.menu, color: Colors.white),
                      onTap: () {},
                    ),
                    SizedBox(height: 35),
                    Stack(
                      //alignment: Alignment.bottomRight,
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(
                            'assets/images/Farhan.png',
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black87),
                              image: DecorationImage(
                                image: AssetImage('assets/images/qr.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        height: size.height,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyCard(
                    color: Color(0xFF3B2B0B),
                    icon: Icon(Icons.emoji_events_outlined),
                    fText: "₹197",
                    sText: "Reward eraned",
                    fcolor: Color(0xFFFFC107),
                  ),
                  SizedBox(width: 12),
                  MyCard(
                    color: Color(0xFF083B46),
                    icon: Icon(Icons.person_outlined),
                    fText: "Get ₹101",
                    sText: "Refer a friend",
                    fcolor: Color(0xFF6FE5FF),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Bank_details(),
              SizedBox(height: 10),
              MyList(
                icon: Icon(Icons.credit_card_outlined),
                fText: "Pay with credit or debit card",
                sText: "Pay bills with your card",
                Add: true,
                New: false,
              ),
              MyList(
                icon: Icon(Icons.qr_code_2),
                fText: "Your QR code",
                sText: "use to receive money from any UPI id",
                New: false,
                Add: false,
              ),
              MyList(
                icon: Icon(Icons.favorite_border_outlined),
                fText: "UPI Circle",
                sText: "Help people you trust make UPI payments",
                New: true,
                Add: false,
              ),
              MyList(
                icon: Icon(Icons.settings),
                fText: "Settings",
                sText: "",
                New: false,
                Add: false,
              ),
              MyList(
                icon: Icon(Icons.account_circle_outlined),
                fText: "Manage Google account",
                sText: "",
                New: false,
                Add: false,
              ),
              MyList(
                icon: Icon(Icons.help_outline),
                fText: "Get Help",
                sText: "",
                New: false,
                Add: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
