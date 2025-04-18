import 'package:flutter/material.dart';
import 'package:flutter_social/utils/available_images.dart';

import '../../utils/utils.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    final pageTitle = Padding(
      padding: const EdgeInsets.only(top: 1.0, bottom: 30.0),
      child: Text(
        "Notifications",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 40.0,
        ),
      ),
    );

    final image = Image.asset(
      AvailableImages.emptyState as String,
    );

    final notificationHeader = Container(
      padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
      child: const Text(
        "No New Notification",
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24.0),
      ),
    );
    
    final notificationText = Text(
      "You currently do not have any unread notifications.",
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
        color: Colors.grey.withOpacity(0.6),
      ),
      textAlign: TextAlign.center,
    );

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 70.0,
          left: 30.0,
          right: 30.0,
          bottom: 30.0,
        ),
        height: deviceHeight,
        width: deviceWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            pageTitle,
            SizedBox(
              height: deviceHeight * 0.1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[image, notificationHeader, notificationText],
            ),
          ],
        ),
      ),
    );
  }
}
