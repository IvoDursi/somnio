import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:somnio/app/resources/images.dart';
import 'package:somnio/app/utils/string_extension.dart';
import 'package:somnio/l10n/l10n.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    required this.title,
    required this.body,
    super.key,
  });

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return FadeInLeft(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.shade900,
              blurRadius: 1,
            )
          ],
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child: Text(
                        l10n.community,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    title.capitalize,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    body.capitalize,
                    style: const TextStyle(fontSize: 22),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: GestureDetector(
                      onTap: () {
                        //TODO:
                      },
                      child: Row(
                        children: [
                          Text(
                            l10n.readMore,
                            style: const TextStyle(color: Colors.blue),
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            size: 16,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 220,
              width: double.maxFinite,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                child: Image.asset(
                  AppImages.googleLogo,
                  fit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
