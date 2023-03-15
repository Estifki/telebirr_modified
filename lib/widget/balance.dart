import 'package:flutter/material.dart';

class BalanceWidget extends StatelessWidget {
  final String title;
  String amount;
  Icon icon;
  VoidCallback onPresssed;

  BalanceWidget(
      {required this.title,
      required this.amount,
      required this.icon,
      required this.onPresssed});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.15,
      width: screenSize.width * 0.44,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 17),
              ),
              Spacer(),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      amount,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      onTap: onPresssed,
                      child: icon,
                    )
                  ])
            ]),
      ),
    );
  }
}
