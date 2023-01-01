import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class DropdownDemo extends StatefulWidget {
 DropdownDemo({Key? key,required this.subject});
  String subject;
  @override
  State<DropdownDemo> createState() => _DropdownDemoState();
}
class _DropdownDemoState extends State<DropdownDemo> {
  String dropdownValue = 'সকল বিষয়';
  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            // Step 2.
            DropdownButton<String>(
              // Step 3.
              value: dropdownValue,
              // Step 4.
              items: <String>['Random', 'সকল বিষয়', 'Tiger', 'Lion']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(

                  value: value,
                  child: Row(
                    children: [
                      Container(
                        height:30,
                        width:150,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
              // Step 5.
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
            ),
            // SizedBox(
            //   height: 12,
            // ),
            // Text(
            //   'Selected Value: $dropdownValue',
            //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            // )
          ],
        );
  }
}