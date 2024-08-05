import 'package:flutter/material.dart';
import 'package:somnio/l10n/l10n.dart';

class FriendsView extends StatelessWidget {
  const FriendsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.l10n.emptyFriends,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.black54,
        ),
      ),
    );
  }
}
