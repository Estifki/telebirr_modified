import 'package:flutter/material.dart';

import '../const.dart';
import '../widget/balance.dart';
import '../widget/more_service.dart';
import '../widget/payment.dart';
import '../widget/top.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showMainBalance = true;
  bool _showRewardBalance = false;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: screenSize.height * 0.35,
                width: screenSize.width,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //
                      //Image
                      //
                      TopWidget(),
                      SizedBox(height: screenSize.height * 0.025),
                      //
                      //Name
                      //
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Welcome, John",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: screenSize.height * 0.025),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //
                            //Main Balance
                            //
                            BalanceWidget(
                              title: "Main\nBalance",
                              amount: _showMainBalance ? "16250.00" : "* * * *",
                              icon: _showMainBalance
                                  ? Icon(Icons.visibility_off, size: 20)
                                  : Icon(Icons.visibility, size: 20),
                              onPresssed: () {
                                setState(() {
                                  _showMainBalance = !_showMainBalance;
                                });
                              },
                            ),
                            //
                            //Reward Balance
                            //
                            BalanceWidget(
                              title: "Reward\nBalance",
                              amount: _showRewardBalance ? "0.00" : "* * * *",
                              icon: _showRewardBalance
                                  ? Icon(Icons.visibility_off, size: 20)
                                  : Icon(Icons.visibility, size: 20),
                              onPresssed: () {
                                setState(() {
                                  _showRewardBalance = !_showRewardBalance;
                                });
                              },
                            ),
                          ])
                    ]),
              )
              //
              // Send Recieve and Scan QR Code
              //
              ,
              SizedBox(height: 15),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PaymentWidget(
                      title: "Send",
                      icon: Icons.keyboard_double_arrow_up_outlined,
                    ),
                    PaymentWidget(
                      title: "Recieve",
                      icon: Icons.keyboard_double_arrow_down_outlined,
                    ),
                    PaymentWidget(
                      title: "Scan QR",
                      icon: Icons.qr_code,
                    ),
                  ]),
              //
              //More Services
              //
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "More Services",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              //
              //List View
              //

              SizedBox(height: 15),
              ListView.builder(
                shrinkWrap: true,
                itemCount: moreServicesData.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: MoreServicesWidget(
                      title: moreServicesData[index]["title"],
                      icon: moreServicesData[index]["icon"],
                    ),
                  );
                },
              )
            ]),
      )),
    );
  }
}
