import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Lab3-186041',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(
        title: 'Lab3-186041',
        elements: [
          "Bazi Na Podatoci",
          "Veb Programiranje",
          "Agoritmi i Podatocni Strukturi",
          "Strukturno Programiranje",
          "Kalkulus",
          "Diskretna matematika",
          "Verojatnost i statistika",
          "Vizuelizacija",
          "Multimediski mrezi",
        ],
        dates: [
          "19.11.2022, 10:00",
          "19.11.2022, 15:00",
          "21.11.2022, 08:00",
          "22.11.2022, 14:30",
          "22.11.2022, 16:00",
          "23.11.2022, 10:00",
          "24.11.2022, 12:40",
          "25.11.2022, 09:00",
          "26.11.2022, 11:00",
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final List<String> elements;
  final List<String> dates;
  const MyHomePage(
      {Key? key,
      required this.title,
      required this.elements,
      required this.dates})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
        actions: [
          IconButton(
            icon: Icon(Icons.add_box),
            color: Colors.white,
            iconSize: 50,
            onPressed: () => print("Dodadi Termin"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => print("Dodadi predmet"),
      ),
      body: ListView.builder(
        itemCount: elements.length,
        itemBuilder: (contx, index) {
          print(elements[index]);
          return Card(
              elevation: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(5),
                    child: Text(
                      elements[index],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(5),
                    child: Text(
                      dates[index],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ));
        },
      ),
    );
  }
}
