// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);
  final listOFNames = const [
    " Omar Eid",
    " Omar Fawzy",
    "Adel Abdalfatah",
    "Ahmed Mohamed",
    "Nader Amr",
    "Ahmed Osama",
    "Omar Maher"
  ];
  final listOFDates = const [
    " 12 Jan 2022, 8am - 10  pm",
    " 12 Jan 2022, 10am -12  pm",
    " 12 Jan 2022, 12am - 2  pm",
    " 12 Jan 2022, 2pm - 4  pm",
    " 12 Jan 2022, 4pm - 6  pm",
    " 12 Jan 2022, 6pm - 8  pm",
    " 12 Jan 2022, 8pm - 10 pm",

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        elevation: 0,
        leading:const Icon(Icons.menu,
          color: Colors.black,
        ),
        actions: [
          IconButton(
              icon:const  Icon(Icons.calendar_today,color: Colors.black,),
              onPressed:(){},
          ),
        ],
      ),
      body: Container(
          color: Colors.blue[100],
        padding: const EdgeInsets.all(16.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 22,
                color: Colors.indigo.shade400,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Doctor Ali",
              style: TextStyle(
              fontSize: 28,
              color: Colors.black,
                fontWeight:FontWeight.bold,
            ),),
            const SizedBox(
              height: 10,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              clipBehavior:Clip.hardEdge ,
              child: Column(
                children: [
                  Container(
                    color: Colors.blue[800],
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Appointment Request"),
                            Icon(Icons.more_vert),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(Icons.watch_later),
                            SizedBox(
                              width: 10,
                            ),
                            Text("12 Jan 2022, 8pm - 10am"),
                          ],

                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading:Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                       child: Expanded(child: Image.asset("assets/pic1.jpeg",)),
                    ),
                    title: const Text(
                      "Modaser",
                      style: TextStyle(
                          fontSize:22,
                          fontWeight:FontWeight.bold ),
                    ),
                    subtitle:const Text(
                      "Abdo",
                      style: TextStyle(
                          fontSize:22,
                          fontWeight:FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    trailing: const Icon(Icons.error_outline,color: Colors.blue,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap:(){},
                        child: Container(
                          width: 120,
                          height: 35,
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: Colors.blue[800],
                          ),
                          child:const Center(
                            child: Text(
                              "Accept",
                              style: TextStyle(color:Colors.black),
                            ),
                          ),

                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          width: 120,
                          height: 35,
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: Colors.grey[800],
                          ),
                          child: Center(
                            child: Text(
                              "Decline",
                              style: TextStyle(color:Colors.grey[500]),
                            ),
                          ),

                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             Text(
                "Next Appointments",
              style: TextStyle(
                fontSize: 14,
                color: Colors.indigo.shade400,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 250,
                child: ListView.builder(
                  itemCount: listOFNames.length,
                    itemBuilder: (context,index){
                      return  Card(
                        child: ListTile(
                          leading:const CircleAvatar(
                          backgroundColor: Colors.blue,
                            radius:20,
                            child: Text(
                              "AA",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),),
                          ),
                          title: Text(
                            listOFNames[index],
                            style:const TextStyle(
                                fontSize:22,
                                fontWeight:FontWeight.bold ),
                          ),
                          subtitle:Text(
                            listOFDates[index],

                          ),
                          trailing: Icon(Icons.more_vert,),
                        ),
                      );
                    })
            ),
          ],
        ),
      ),
    );
  }
}
