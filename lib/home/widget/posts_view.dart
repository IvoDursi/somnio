import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:somnio/home/home.dart';

class PostsView extends StatefulWidget {
  const PostsView({super.key});

  @override
  State<PostsView> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  Future<void> _onScroll() async {
    if (_isBottom) {
      context.read<PostsBloc>().add(const PostsEvent.fetch());
    }
  }

  Future<void> _onRefresh() async {
    context.read<PostsBloc>().add(const PostsEvent.fetch());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsBloc, PostsState>(
      builder: (context, state) => state.maybeWhen(
        loaded: (posts) => RefreshIndicator(
          onRefresh: _onRefresh,
          child: ListView.builder(
            controller: _scrollController,
            itemCount: posts.length,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: PostCard(
                    title: posts[index].title,
                    body: posts[index].body,
                  ),
                );
              }
              return PostCard(
                title: posts[index].title,
                body: posts[index].body,
              );
            },
          ),
        ),
        orElse: () => const Center(
          child: CircularProgressIndicator(),
        ),
        failed: (error) => Center(
          child: Text(
            error,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
