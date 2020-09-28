import 'package:flutter/material.dart';
import 'package:widget_slider/ui/widgets/movie_box.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List<Color> colors = [Colors.red, Colors.green, Colors.blue];
    List<String> urls = [
      "https://images-na.ssl-images-amazon.com/images/I/A1hFzTczzJL._SL1500.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/A1hFzTczzJL._SL1500.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/A1t8xCe9jwL._SL1500.jpg",
    ];
    PageController controller =
        PageController(initialPage: 0, viewportFraction: 0.6);

    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Slider - AR XXI"),
        backgroundColor: Colors.black,
      ),
      body: PageView.builder(
        controller: controller,
        itemCount: urls.length,
        itemBuilder: (context, index) => Center(
          child: MovieBox(urls[index]),
        ),
      ),
    );
  }
}
