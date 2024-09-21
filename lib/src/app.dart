import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock Trading',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light().copyWith(
          surface: const Color.fromARGB(70, 201, 201, 201),
        ),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Trading App'),
          ),
          // body: 
          // ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                TitleSection(
                  name: 'Stocks',
                ),
                StocksListSection(),
                Text("Stocks Activity"),
                WatchList(),
                Center(
            child: Image.asset(
              "assets/images/3.0x/rickroll-roll.gif", // Ensure the path is correct
            )),
              ],
            ),
          )),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    final dateFormatter = DateFormat('yyyy-MM-dd');
    final DateTime now = DateTime.now();
    final formattedDate = dateFormatter.format(now);
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  formattedDate,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class StocksListSection extends StatelessWidget {
  StocksListSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(2),
                  child: OutlinedButton(
                      onPressed: () {
                        debugPrint('Received click');
                      },
                      child: Text("Stocks list"))),
            ],
          ),
          Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(2),
                  child: OutlinedButton(
                      onPressed: () {
                        debugPrint('Received click');
                      },
                      child: Text("Symbols"))),
            ],
          ),
          Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(2),
                  child: OutlinedButton(
                      onPressed: () {
                        debugPrint('Received click');
                      },
                      child: Text("Set Alerts"))),
            ],
          ),
          Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(2),
                  child: OutlinedButton(
                      onPressed: () {
                        debugPrint('Received click');
                      },
                      child: Text("Trade"))),
            ],
          ),
        ],
      ),
    );
  }
}

class WatchList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(1),
        child: Row(
          children: [
            Column(children: [
              Padding(padding: EdgeInsets.all(8), child: Text("Nvidia"))
            ]),
            Column(children: [
              Padding(padding: EdgeInsets.all(8), child: Text("25.94"))
            ])
          ],
        ));
  }
}
