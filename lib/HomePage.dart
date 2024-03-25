import 'package:facebook_clone/chat.dart';
import 'package:facebook_clone/market.dart';
import 'package:facebook_clone/menu.dart';
import 'package:facebook_clone/notification.dart';
import 'package:facebook_clone/reel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}); 

final List<String> Images =[
  'https://3.bp.blogspot.com/-kRS9Ra2_yR8/W9c08W_-4NI/AAAAAAAANlk/Gkd38Ekl3AkCeh9AH-cc-9GGGcH2C7QMwCLcBGAs/s1600/BzWaHSBCcAAaKqQ.jpg',
  'https://1.bp.blogspot.com/-E9BFcqb0XNg/XvNhVJH7YBI/AAAAAAABD4M/Id2OlZSIn-At29Tb7QZTqLjDIy_tE5g7gCK4BGAsYHg/s2048/allu-arjun-unseen-stills-from%2B-dj%2B%25281%2529.jpg',
  'https://th.bing.com/th/id/OIP.jnFj6yB3bi3C-EKuuv8_rwHaHX?rs=1&pid=ImgDetMain'

];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Facebook',
            style: TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_circle_sharp),
            ),
            IconButton(
              onPressed: () {},
              
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChatHome(),));
              },
              icon: Icon(Icons.messenger),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
             IconButton(
      icon: Icon(Icons.video_library),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  ReelPage(),));
      }
    ),
      IconButton(
      icon: Icon(Icons.shopping_bag),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  MarketPlace(),));
      }
    ),
      IconButton(
      icon: Icon(Icons.notification_add),
      onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) =>  NotificationPage(),));
      }
    ),
             
             
              Tab(icon: Icon(Icons.group)),
                 IconButton(
      icon: Icon(Icons.menu_sharp),
      onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) =>  Menubar(),));
      }
    ),

            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 10),
                    CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      backgroundImage: NetworkImage('https://4.bp.blogspot.com/-CCW346J8k7Y/VwgAIHGxSvI/AAAAAAAAE1o/KMFbHMkgqQkOrgJZGl8V29IYc2eNy2dAA/s1600/Shah-Rukh-Khan-HD-Wallpaper-Download.jpg'),
                      radius: 25,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Write something here',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      child: Icon(Icons.camera_alt),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.grey,
                    height: 6,
                  ),
                ),
                SizedBox(
                  height: 250, 
                  child: ListView.builder(
                    itemCount: Images.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                        
                          width: 150,
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.only(left: 15, top: 5),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image:  DecorationImage(
                              image: NetworkImage(Images[index]),
                              fit: BoxFit.cover,
                            
                              
                            ),
                            
                          ),
                         child:Stack(
  children: [
    Positioned(
      top: 0,
      left: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), 
        child: Image.network(
          Images[index],
          width: 40, 
          height: 40,
          fit: BoxFit.cover, 
        ),
      ),
    )
  ],
)

                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.grey,
                    height: 6,
                  ),
                ),
                Container(
                  height: 300, 
                  color: Color.fromARGB(255, 204, 201, 201),
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://2.bp.blogspot.com/-Z1kwrvNUwTo/VufT774jE2I/AAAAAAAAMFs/L_vfZU-r1yIuVvEayQOLCJmqzZUDCxMpQ/s1600/shahrukh-khan-hd-whatsup-image.jpg'),
                        ),
                        title: Row(
                          children: [
                            const Text(
                              'srk',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                          
                          ],
                        ),
                        subtitle: const Text('feb 10'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'follow',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                            const Icon(Icons.more_horiz),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(Icons.cancel),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.blue,
                        height: 200, 
                        child: Image.network(
                          'https://4.bp.blogspot.com/-CCW346J8k7Y/VwgAIHGxSvI/AAAAAAAAE1o/KMFbHMkgqQkOrgJZGl8V29IYc2eNy2dAA/s1600/Shah-Rukh-Khan-HD-Wallpaper-Download.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
