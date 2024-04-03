import 'package:flutter/material.dart';
import 'package:news_app/widgets/custom_app_bar.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';
import 'package:news_app/widgets/back_to_top_button.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconed: true,
        title: widget.category,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 25.0,
              horizontal: 16.0,
            ),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              controller: _scrollController,
              slivers: [
                NewsListViewBuilder(
                  category: widget.category,
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
