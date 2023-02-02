import 'package:flutter/material.dart';
import 'package:gmaps/Screens/newalarm.dart';

class Alarms extends StatelessWidget {
  const Alarms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NewAlarm()),
          );
        },
        backgroundColor: Colors.blueAccent[700],
        child: const Icon(
          //changeS
          Icons.add_sharp,
          size: 50,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: const [
            SizedBox(height: 50),
            SizedBox(
              width: 1000,
              height: 100,
              child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
                child: ListTile(
                  title: Text(
                    "Alarm 1",
                    style: TextStyle(fontSize: 30),
                  ),
                  subtitle: Text('To Hyderabad'),
                  trailing: Text(
                    "5 KM",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 1000,
              height: 100,
              child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
                child: ListTile(
                  title: Text(
                    "Custom Name",
                    style: TextStyle(fontSize: 30),
                  ),
                  subtitle: Text('To Delhi'),
                  trailing: Text(
                    "5 KM",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 1000,
              height: 100,
              child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
                child: ListTile(
                  title: Text(
                    "Custom Name",
                    style: TextStyle(fontSize: 30),
                  ),
                  subtitle: Text('To Chennai'),
                  trailing: Text(
                    "5 KM",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
