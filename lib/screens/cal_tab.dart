import 'package:flutter/material.dart';

class CalTab extends StatefulWidget {
  const CalTab({super.key});

  @override
  State<CalTab> createState() => _CalTabState();
}

class _CalTabState extends State<CalTab> {
  TextEditingController numberInput = TextEditingController();
  late int day;
  late String month;
  late String gender;
  late int year;
  late int numDay;
  late String val;

  _calculateNumber() {
    year = int.parse(numberInput.text.substring(0, 2));
    numDay = int.parse(numberInput.text.substring(2, 5));

    if (numDay < 500) {
      gender = "Male";
      if (numDay > 335) {
        day = numDay - 335;
        month = "12";
      } else if (numDay > 305) {
        day = numDay - 305;
        month = "11";
      } else if (numDay > 274) {
        day = numDay - 274;
        month = "10";
      } else if (numDay > 244) {
        day = numDay - 244;
        month = "9";
      } else if (numDay > 213) {
        day = numDay - 213;
        month = "8";
      } else if (numDay > 182) {
        day = numDay - 182;
        month = "7";
      } else if (numDay > 152) {
        day = numDay - 152;
        month = "6";
      } else if (numDay > 121) {
        day = numDay - 121;
        month = "5";
      } else if (numDay > 91) {
        day = numDay - 91;
        month = "4";
      } else if (numDay > 60) {
        day = numDay - 60;
        month = "3";
      } else if (numDay < 32) {
        month = "1";
        day = numDay;
      } else if (numDay > 31) {
        day = numDay - 31;
        month = "2";
      }
    } else {
      gender = "Female";
      numDay = numDay - 500;
      if (numDay > 335) {
        day = numDay - 335;
        month = "12";
      } else if (numDay > 305) {
        day = numDay - 305;
        month = "11";
      } else if (numDay > 274) {
        day = numDay - 274;
        month = "10";
      } else if (numDay > 244) {
        day = numDay - 244;
        month = "9";
      } else if (numDay > 213) {
        day = numDay - 213;
        month = "8";
      } else if (numDay > 182) {
        day = numDay - 182;
        month = "7";
      } else if (numDay > 152) {
        day = numDay - 152;
        month = "6";
      } else if (numDay > 121) {
        day = numDay - 121;
        month = "5";
      } else if (numDay > 91) {
        day = numDay - 91;
        month = "4";
      } else if (numDay > 60) {
        day = numDay - 60;
        month = "3";
      } else if (numDay < 32) {
        month = "1";
        day = numDay;
      } else if (numDay > 31) {
        day = numDay - 31;
        month = "2";
      }
    }
    setState(() {
      val = "19${year}-${month}-${day}-${gender}";
    });
    return val;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: TextField(
                keyboardType: TextInputType.number,
                controller: numberInput,
                decoration: const InputDecoration(
                  label: Text("ID Number"),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              _calculateNumber();
              print(val);
            },
            child: Text(
              'Ok',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 8,
                  color: Colors.deepPurple,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Text(
          //   val,
          //   style: TextStyle(
          //     fontSize: 22,
          //     fontWeight: FontWeight.bold,
          //   ),
          // )
        ],
      ),
    );
  }
}
