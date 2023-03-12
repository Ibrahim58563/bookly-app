import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_book_details_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'book_action.dart';
import 'book_details_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Column(
              children: const [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                SizedBox(height: 18),
                BooksAction(),
                Expanded(child: SizedBox(height: 14)),
                SimilarBooksSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
