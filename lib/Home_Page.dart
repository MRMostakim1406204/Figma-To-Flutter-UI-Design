import 'package:figma_to_flutter_design_anik_vai/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.33,
                  width: double.maxFinite,
                  // height: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 71,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 243, 239, 239),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(50)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 283,
                        margin: EdgeInsets.only(right: 10),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "আরএমজি কর্মীদের স্বাস্থ্য সংক্রান্ত ",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              TextSpan(
                                text: "মনিটরিং টুল",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.purple),
                              ),
                            ],
                          ),
                          // textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 8),
                      _buildCircleImagesStack(context),
                      SizedBox(height: 5)
                    ],
                  ),
                ),
                SizedBox(height: 43),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.purple,
                      minWidth: double.maxFinite,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      height: 48,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "প্রবেশ করুন ",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )),
                ),
                SizedBox(height: 22),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "আপনি কি নতুন ইউজার ?",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: " কন্টাক্ট এডমিন",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.purple),
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCircleImagesStack(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 341,
        width: 294,
        child: Stack(
          // alignment: Alignment.bottomRight,
          children: [
            Container(
              height: 176,
              width: 176,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  53,
                ),
              ),
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 30),
              child: Image.asset("assets/images/Ellipse 554.png"),
            ),
            Container(
              height: 106,
              width: 106,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  53,
                ),
              ),
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 190,
              ),
              child: Image.asset(
                "assets/images/Ellipse 556.png",
              ),
            ),
            Container(
              height: 106,
              width: 106,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  53,
                ),
              ),
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 190, top: 190),
              child: Image.asset("assets/images/Ellipse 555.png"),
            ),
            Container(
              height: 106,
              width: 106,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  53,
                ),
              ),
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(top: 240),
              child: Image.asset("assets/images/Ellipse 557.png"),
            )
          ],
        ),
      ),
    );
  }
}
