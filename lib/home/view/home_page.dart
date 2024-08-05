import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:somnio/home/home.dart';
import 'package:somnio/l10n/l10n.dart';
import 'package:somnio_repository/somnio_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocProvider(
      create: (_) => PostsBloc(
        somnioRepository: RepositoryProvider.of<SomnioRepository>(context),
      )..add(const PostsEvent.fetch()),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Blog',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  l10n.example,
                  style: const TextStyle(fontSize: 14, color: Colors.white70),
                ),
              ],
            ),
            bottom: TabBar(
              tabs: [
                Tab(text: l10n.posts),
                Tab(text: l10n.friends),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              PostsView(),
              FriendsView(),
            ],
          ),
        ),
      ),
    );
  }
}
