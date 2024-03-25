import 'package:flutter/material.dart';

class ReelPage extends StatelessWidget {
  final List<String> videos = [
    "https://th.bing.com/th/id/OIP.yWwxrhl28jGIbK7NEMH-gAHaEK?rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIP.yWwxrhl28jGIbK7NEMH-gAHaEK?rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIP.yWwxrhl28jGIbK7NEMH-gAHaEK?rs=1&pid=ImgDetMain",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reels'),
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
            },
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
               
                      image: NetworkImage('https://www.pixel-creation.com/wp-content/uploads/full-hd-1080p-waterfall-wallpapers-hd-desktop-backgrounds-1920x1080-800x800.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.play_circle_fill,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.thumb_up),
                        onPressed: () {
                        },
                        color: Colors.white,
                      ),
                      IconButton(
                        icon: Icon(Icons.mode_comment),
                        onPressed: () {
                        },
                        color: Colors.white,
                      ),
                      IconButton(
                        icon: Icon(Icons.share),
                        onPressed: () {
                        },
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}