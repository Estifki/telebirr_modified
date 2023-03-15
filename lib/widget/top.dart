import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/telebirr.png",
              height: MediaQuery.of(context).size.height * 0.075,
              color: Colors.white),
          Icon(Icons.notifications, color: Colors.white, size: 26)
        ],
      ),
    );
  }
}
