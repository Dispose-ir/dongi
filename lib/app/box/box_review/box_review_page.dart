import 'package:dongi/constants/font_config.dart';
import 'package:dongi/widgets/category/category_widget.dart';
import 'package:dongi/widgets/friends/friends_widget.dart';
import 'package:dongi/widgets/list_tile/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constants/color_config.dart';
import './box_review_widget.dart';

class BoxReviewPage extends ConsumerWidget with BoxReviewWidget {
  const BoxReviewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorConfig.primarySwatch,
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                color: ColorConfig.background,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: ListView(
                children: [
                  Column(
                    children: [
                      friendsList(),
                      CategoryWidget(
                        name: 'category name',
                        balance: '210,000',
                      ),
                      expensesList(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}