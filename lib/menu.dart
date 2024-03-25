import 'package:flutter/material.dart';

class Menubar extends StatelessWidget {
  const Menubar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu', style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),


        ],
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: const Color.fromARGB(255, 240, 234, 234),
              child: const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://2.bp.blogspot.com/-Z1kwrvNUwTo/VufT774jE2I/AAAAAAAAMFs/L_vfZU-r1yIuVvEayQOLCJmqzZUDCxMpQ/s1600/shahrukh-khan-hd-whatsup-image.jpg"),
                ),
                title: Text(
                  "ShahRukh khan",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.account_circle),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3.0,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: iconss.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 6.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          iconss[index].icon,
                          width: 25,
                          height: 25,
                        ),
                        SizedBox(height: 8),
                        Text(
                          iconss[index].name,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),ElevatedButton(onPressed: (){},
             style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(3), // Set border radius to 0 for square shape
    ),
  ), child: Text('See more', style: TextStyle(color: Colors.black),)
            ),
            SizedBox(height: 40),
            Container(
              height: 2,
              width: double.infinity,
              color: Colors.grey,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.help),
                    ),
                    Text('Help & Support'),
                  ],
                ),
                 Container(
              height: 2,
              width: double.infinity,
              color: Colors.grey,
            ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.settings),
                    ),
                    Text('Settings & Privacy'),
                  ],
                ),
                 Container(
              height: 2,
              width: double.infinity,
              color: Colors.grey,
            ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment. start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.info),
                    ),
                    Text('Also from Meta'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class IconsClass {
  final String icon;
  final String name;
  IconsClass({required this.icon, required this.name});
}

List<IconsClass> iconss = [
  IconsClass(icon: "assets/images/memories.png", name: "Memories"),
  IconsClass(icon: "assets/images/saved.png", name: "Saved"),
  IconsClass(icon: "assets/images/groups.png", name: "Groups"),
  IconsClass(icon: "assets/images/video.png", name: "Video"),
  IconsClass(icon: "assets/images/market.png",name: "Marketplace"),
  IconsClass(icon: "assets/images/friend.png", name: "Friends"),
  IconsClass(icon: 'assets/images/feed.png', name: "Feeds"),
  IconsClass(icon: "assets/images/calendar.png", name:"Events"),
];


