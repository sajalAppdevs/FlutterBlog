import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Define a list of ImageData objects
    List<ImageData> imageDataList = [
      ImageData(
        imagePath: "assets/images/bg.webp",
        name: "Image 1",
        description: "This is the first image.",
      ),
      ImageData(
        imagePath: "assets/images/bg.webp",
        name: "Image 2",
        description: "This is the second image.",
      ),
      ImageData(
        imagePath: "assets/images/bg.webp",
        name: "Image 4",
        description: "This is the first image.",
      ),
      ImageData(
        imagePath: "assets/images/bg.webp",
        name: "Image 5",
        description: "This is the second image.",
      ),
      ImageData(
        imagePath: "assets/images/bg.webp",
        name: "Image 6",
        description: "This is the first image.",
      ),
      ImageData(
        imagePath: "assets/images/bg.webp",
        name: "Image 7",
        description: "This is the second image.",
      ),
      ImageData(
        imagePath: "assets/images/bg.webp",
        name: "Image 8",
        description: "This is the first image.",
      ),
      ImageData(
        imagePath: "assets/images/bg.webp",
        name: "Image 9",
        description: "This is the second image.",
      ),
      ImageData(
        imagePath: "assets/images/bg.webp",
        name: "Image 10",
        description: "This is the first image.",
      ),
      ImageData(
        imagePath: "assets/images/bg.webp",
        name: "Image 11",
        description: "This is the second image.",
      ),

      // add more images here...
    ];

    return Scaffold(
        body:

        // Create a ListView widget with the list of ImageData objects
        ListView.separated(
            itemCount: imageDataList.length, // Set the number of items in the list
            separatorBuilder: (BuildContext context, int index) => const Divider(), // Add a divider between each item in the list
            itemBuilder: (BuildContext context, int index) {
              final imageData = imageDataList[index]; // Get the ImageData object at the current index
              return ListTile(
                leading: Image.asset(imageData.imagePath), // Display the image on the left side of the ListTile
                title: Text(imageData.name), // Display the name as the title of the ListTile
                subtitle: Text(imageData.description), // Display the description as the subtitle of the ListTile
              );
            }
        )
    );
  }
}

// Define a data class for the image data
class ImageData {
  final String imagePath;
  final String name;
  final String description;

  ImageData({
    required this.imagePath,
    required this.name,
    required this.description,
  });
}
