import 'package:basic/responsive_utils.dart';
import 'package:basic/typography.dart';
import 'package:flutter/material.dart';

class MyResponsiveGridImage extends StatelessWidget {
  const MyResponsiveGridImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);

    // Set the default number of columns to 3.
    int columnsCount = 2;

    // Use the ResponsiveUtils class to determine the device's screen size.
    if (ResponsiveUtils.isMobile(context)) {
      columnsCount = 1;
    } else if (ResponsiveUtils.isDesktop(context)) {
      columnsCount = 4;
    }

    // Build the grid view using the number of columns.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Grid View'),
      ),
      body: GridView.builder(
        // Set padding and spacing between cards.
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // Set the number of columns based on the device's screen size.
          crossAxisCount: columnsCount,
          // Set the aspect ratio of each card.
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        // Set the number of items in the grid view.
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          // Build each card in the grid view.
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  // Add an image to each card.
                  child:
                  Image.asset('assets/images/bg.webp',
                    fit: BoxFit.cover,
                  ),
                 /* Image.network(
                    'https://picsum.photos/id/$index/400/300',
                    fit: BoxFit.cover,
                  ),*/
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Add a title to each card.
                      MyTextStyle(
                          name: 'Item $index', style: textTheme.titleLarge!),
                      const SizedBox(height: 5),
                      // Add a description to each card.
                      MyTextStyle(
                          name: 'Description of item $index', style: textTheme.bodyMedium!),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          );
        },
        // Set the grid view to shrink wrap its contents.
        shrinkWrap: true,
        // Disable scrolling in the grid view.
        //physics: const NeverScrollableScrollPhysics(),
      ),
    );
  }
}
