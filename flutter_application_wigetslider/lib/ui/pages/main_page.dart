import 'package:flutter/material.dart';

import '../wigets/moviebox.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: 0, viewportFraction: 0.6);
    // List<Color> colors = [
    //   Colors.amber,
    //   Color.fromARGB(255, 106, 7, 255),
    //   Color.fromARGB(255, 7, 255, 15)
    // ];/
    List<String> urls = [
      "https://s3.bukalapak.com/img/30823876952/s-330-330/data.jpeg.webp",
      "https://cf.shopee.co.id/file/a808b498ca349c81984234a57a1a7097",
      "https://i0.wp.com/dekoruma.blog/wp-content/uploads/2017/07/flush-door-500x500.jpg?resize=500%2C500&ssl=1"
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('wiget slider'),
        ),
        body: PageView.builder(
            controller: controller,
            itemCount: urls.length,
            itemBuilder: ((context, index) => Center(
                  child: MovieBox(urls[index]),
                ))));
  }
}
