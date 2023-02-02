import 'package:flutter/material.dart';
import 'package:gmaps/Screens/alarms.dart';

class NewAlarm extends StatelessWidget {
  const NewAlarm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent[400],
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50.0),
              TextField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Enter Alarm Name',
                ),
                onChanged: (val) {},
              ),
              const SizedBox(height: 20.0),
              TextField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.add_location,
                    size: 30,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Enter Location',
                ),
                onChanged: (val) {},
              ),
              const SizedBox(height: 20.0),
              TextField(
                decoration: const InputDecoration(
                  suffixText: ("KM"),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Enter Buffer distance',
                ),
                onChanged: (val) {},
              ),
              const SizedBox(height: 20.0),
              TextField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Set Alarm Tone',
                ),
                onChanged: (val) {},
              ),
              const SizedBox(height: 200.0),
              SizedBox(
                width: 500,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Alarms()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent[700],
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    'ADD Alarm',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
