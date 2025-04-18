import 'package:flutter/material.dart';
import 'package:flutter_social/_routing/routes.dart';
import 'package:flutter_social/models/feed.dart';

class FeedCard2 extends StatelessWidget {
  final Feed feed;

  const FeedCard2({
    super.key,
    required this.feed,
  });

  @override
  Widget build(BuildContext context) {
    final userImage = Positioned(
      left: 0,
      top: 15.0,
      child: InkWell(
        onTap: () => Navigator.pushNamed(
          context,
          userDetailsViewRoute,
          arguments: feed.userId,
        ),
        child: Hero(
          tag: feed.userImage,
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(14.0),
            child: Container(
              height: 120.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                image: DecorationImage(
                  image: feed.userImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );

    final postDate = Text(
      feed.createdAt,
      style: TextStyle(
        color: Colors.grey.withOpacity(0.6),
        fontWeight: FontWeight.bold,
      ),
    );

    final userName = Text(
      feed.userName,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
    );

    final descriptionText = SizedBox(
      height: 80.0,
      child: Text(
        feed.description,
        style: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w600,
          fontSize: 14.0,
        ),
      ),
    );

    final cardContent = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        postDate,
        userName,
        const SizedBox(
          height: 5.0,
        ),
        descriptionText
      ],
    );

    return SizedBox(
      height: 150.0,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(14.0),
              child: Container(
                padding: const EdgeInsets.only(top: 20.0, left: 100.0),
                height: 150.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: cardContent,
              ),
            ),
          ),
          userImage
        ],
      ),
    );
  }
}
