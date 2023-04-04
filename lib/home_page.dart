import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var listOfCloths = [
    "Shirt",
    "T-Shirt",
    "Paints",
    "Tracks",
    "Boxer",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: listOfCloths.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar Demo"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            TabBar(
              isScrollable: true,
              indicatorColor: Colors.blueGrey,
              labelColor: Colors.blueGrey,
              unselectedLabelColor: Colors.black,
              tabs: List<Widget>.generate(
                listOfCloths.length,
                (int index) {
                  return Tab(
                    child: Text(listOfCloths[index]),
                  );
                },
              ),
            ),
            Expanded(
              child: TabBarView(
                children: List<Widget>.generate(
                  listOfCloths.length,
                  (int index) {
                    return Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.blueGrey,
                      margin: const EdgeInsets.all(10),
                      child: const Center(
                        child: Text(
                          "TabBar In Flutter",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
