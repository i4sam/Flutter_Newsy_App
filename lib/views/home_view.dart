import 'package:flutter/material.dart';
import 'package:news_app/widgets/back_to_top_button.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/custom_app_bar.dart';

import '../widgets/news_list_view_builder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        iconed: true,
        title: "News",
        titleTile: "y",
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              slivers: const [
                SliverToBoxAdapter(child: CategoriesListView()),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 32,
                  ),
                ),
                NewsListViewBuilder(
                  category: 'general',
                ),
              ],
            ),
          ),
          BackToTopButton(scrollController: _scrollController),
        ],
      ),
    );
  }
}
