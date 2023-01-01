import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import 'drop_down_demu.dart';
class MyStackWidget extends StatefulWidget {


  @override
  State<MyStackWidget> createState() => _MyStackWidgetState();
}

class _MyStackWidgetState extends State<MyStackWidget> {
  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("USA"),value: "USA"),
      DropdownMenuItem(child: Text("Canada"),value: "Canada"),
      DropdownMenuItem(child: Text("Brazil"),value: "Brazil"),
      DropdownMenuItem(child: Text("England"),value: "England"),
    ];
    return menuItems;
  }

  // String selectedValue = "USA";
  TextEditingController textEditingController=TextEditingController();
  Color brownColor=Color(0xFFEADDCA);
  late final String dropdown;



  final List<String> genderItems = [
    'Male',
    'Female',
  ];

  late final String selectedValue;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Stack Widget Example"),
          ),
          body: Center(
            child: Stack(
              fit: StackFit.passthrough,
              children: <Widget>[
                Card(
                  elevation: 4,
                  child: Container(
                    height: 600,
                    width: MediaQuery.of(context).size.width*0.80,
                    margin: EdgeInsets.only(left: 25,right: 25),
                    color: Colors.white24,
                    child:Row(
                      children: [

                      ],
                    )
                  ),
                ),
                Positioned(
                  top: 12,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width*0.90,
                            margin: EdgeInsets.only(left: 15,right: 15),

                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),

                              color: Color(0xFFffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 15.0, // soften the shadow
                                  spreadRadius: 5.0, //extend the shadow
                                  offset: Offset(
                                    5.0, // Move to right 5  horizontally
                                    5.0, // Move to bottom 5 Vertically
                                  ),
                                )
                              ],
                            ),

                            child: Row(
                              children: [
                                Image.asset("assets/books.jpg"),
                                Text(
                                  'Quiz Master',
                                  style: TextStyle(color: Colors.black, fontSize: 20),
                                ),
                              ],
                            ),
                          ),


                        ],
                      ),
                      SizedBox(height: 20,),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 170,
                            height: 45,

                            child: DropdownButtonFormField2(
                              buttonElevation: 5,
                              dropdownElevation: 5,
                              itemSplashColor: Colors.grey,

                              buttonSplashColor: Colors.grey,
                              decoration: InputDecoration(
                                //Add isDense true and zero Padding.
                                //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                    width: 3.0,
                                  ),
                                ),
                                //Add more decoration as you want here
                                //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                              ),
                              isExpanded: true,
                              hint: const Text(
                                'Random',
                                style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                              ),
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black45,
                              ),
                              iconSize: 30,
                              buttonHeight: 60,
                              buttonPadding: const EdgeInsets.only(left: 10, right: 10),
                              dropdownDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              items: genderItems
                                  .map((item) =>
                                  DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ))
                                  .toList(),
                              validator: (value) {
                                if (value == null) {
                                  return 'Please select gender.';
                                }
                              },
                              onChanged: (value) {
                                //Do something when changing the item if you want.
                              },
                              onSaved: (value) {
                                selectedValue = value.toString();
                              },
                            ),
                          ),
                          const SizedBox(height: 12),
                         Container(
                            width: 170,
                            height: 45,
                            child: DropdownButtonFormField2(
                              buttonElevation: 5,
                              dropdownElevation: 5,
                              itemSplashColor: Colors.grey,
                              decoration: InputDecoration(
                                //Add isDense true and zero Padding.
                                //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),

                                ),


                                //Add more decoration as you want here
                                //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                              ),
                              isExpanded: true,
                              hint: const Text(
                                'সকল বিষয়',
                                style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                              ),
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black45,
                              ),
                              iconSize: 30,
                              buttonHeight: 60,
                              buttonPadding: const EdgeInsets.only(left: 10, right: 10),
                              dropdownDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFffffff),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 15.0, // soften the shadow
                                    spreadRadius: 5.0, //extend the shadow
                                    offset: Offset(
                                      5.0, // Move to right 5  horizontally
                                      5.0, // Move to bottom 5 Vertically
                                    ),
                                  )
                                ],
                              ),
                              items: genderItems
                                  .map((item) =>
                                  DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ))
                                  .toList(),
                              validator: (value) {
                                if (value == null) {
                                  return 'Please select gender.';
                                }
                              },
                              onChanged: (value) {
                                //Do something when changing the item if you want.
                              },
                              onSaved: (value) {
                                selectedValue = value.toString();
                              },
                            ),
                          ),



                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.info),
                          SizedBox(width: 4,),

                          Text("মোট প্রশ্নঃ সংখ্যা :১,৫২,৯৪০ ")
                        ],
                      ),
                      SizedBox(height: 30,),
                      Divider(height: 18,indent:10,endIndent:12,color: Colors.redAccent,),

                      Row(
                        children: [
                          Column(
                            children: [
                              Text("Questions"),
                              Padding(
                                padding: EdgeInsets.all(6),
                                child: SizedBox(
                                  width: 140,
                                  height: 45,
                                  child: Material(
                                    elevation: 5.0,
                                    shadowColor: Colors.grey,
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(

                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(width: 3, color: Colors.yellow.shade100), //<-- SEE HERE
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Time"),
                              Padding(
                                padding: EdgeInsets.all(6),
                                child: SizedBox(
                                  width: 140,
                                  height: 45,
                                  child: Material(
                                    elevation: 5.0,
                                    shadowColor: Colors.grey,
                                    child: TextField(
                                      controller: textEditingController,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(


                                        enabledBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(width: 3, color: Colors.yellow.shade100), //<-- SEE HERE
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(

                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 4,
                          primary: brownColor // Text Color (Foreground color)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Start Quiz',
                              style: TextStyle(fontSize: 15,color: Colors.black),
                            ),
                            SizedBox(width: 4,),
                            Icon(Icons.arrow_forward,color: Colors.black,size: 20,)
                          ],
                        ),
                      )



                    ],
                  ),
                ),

              ],
            ),
          )
      ),
    );
  }
}
