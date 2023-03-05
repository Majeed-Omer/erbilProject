import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/postsWidget.dart';
import 'package:flutter_application_1/presentation/widgets/tabBarWidget1.dart';
import 'package:flutter_application_1/presentation/widgets/txtWidget.dart';

class PostsPage extends StatefulWidget {
  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          title: Text(
            'Posts',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: DefaultTabController(
          length: 6,
          child: Column(
            children: <Widget>[
              TabBarWidget1(),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      PostsWidget(
                          image: "assets/e.jpg",
                          name: "Difference between UX and UI"),
                      SizedBox(
                        height: 10,
                      ),
                      TxtWidget(),
                      SizedBox(
                        height: 20,
                      ),
                      PostsWidget(
                          image: "assets/e.jpg", name: "Culture of Erbil"),
                      SizedBox(
                        height: 10,
                      ),
                      TxtWidget(),
                      SizedBox(
                        height: 20,
                      ),
                      PostsWidget(
                          image: "assets/e.jpg", name: "Erbil Weather Update"),
                      SizedBox(
                        height: 10,
                      ),
                      TxtWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
