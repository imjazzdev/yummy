import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yummy/models/food_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Terbaru",
              ),
              Tab(text: "Populer"),
              Tab(text: "Favorite"),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 99, 207, 157),
          title: Text('RESEP MAKANAN'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              icon: Icon(
                Icons.person,
                size: 30,
              )),
          actions: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: PopupMenuButton(
                  iconSize: 30,
                  itemBuilder: (ctx) => [
                    PopupMenuItem(
                        child: StreamBuilder<User?>(
                      stream: FirebaseAuth.instance.userChanges(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text('${snapshot.data!.email}');
                        } else {
                          return Text('Anonymous');
                        }
                      },
                    )),
                    PopupMenuItem(
                        child: InkWell(
                      onTap: () async {
                        await FirebaseAuth.instance.signOut();
                        Navigator.pushReplacementNamed(context, '/');
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout_rounded,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Log Out'),
                        ],
                      ),
                    ))
                  ],
                ))
          ],
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Terbaru")),
            FoodHomeList(),
            Center(child: Text("Favorite")),
          ],
        ),
      ),
    );
  }
}
