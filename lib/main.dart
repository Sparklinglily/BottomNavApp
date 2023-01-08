import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home:   BottomNave(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class  BottomNave extends StatefulWidget {
  const BottomNave ({Key? key}) : super(key: key);

  @override
  _BottomNaveState createState() => _BottomNaveState();
}

class _BottomNaveState extends State<BottomNave> {

  int _currentIndex = 0;
  final tabs = [

    Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(21,71,31,31),
            child: Card(
              margin: EdgeInsets.fromLTRB(50,50,50, 0),
              child: Image(image: AssetImage("images/welcome2.png"),
              height: 250,
              width: 300,)
            ),
          ),
          // SizedBox(height: 6),

          Text("To\nLily's App",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text("Receive updates on recently posted developer jobs, enjoy collaborations with other developers and contribute to open source.",

              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
             SizedBox(height: 7),


             Container(
               padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                border: Border.all(width: 3,color: Color(0xFFF48FB1),),
                borderRadius: BorderRadius.all(Radius.circular(29))
              ),
              child:
                Text("Get Started",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),


            ),


          // Center(
          //   child: Text("Welcome to Lily's App",
          //     style: TextStyle(
          //       fontStyle: FontStyle.italic,
          //       fontWeight: FontWeight.bold,
          //       fontSize: 15,
          //     ),
          //   ),
          // ) ,

        ],
      ),
    ),
    //profile
      Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(70,160,70,85) ,
          child: Column(
              children: [
                Image(image: AssetImage("images/lillly.jpg"),
                  height: 200,
                  width:   300,
                ),
                // SizedBox(height: 5),

  Text(" My Profile",
    style: TextStyle(
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
  ),
                SizedBox(height: 10),
                Text("Name: Carla Ejemeh Obinna",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 15),
                Text("Nationality: Nigerian",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 13),
                Text("Occupation: Mobile Engineeer",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 13),
                Text("Status: Active",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 15),
                Text("Years of experience: 2",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),

                SizedBox(height: 15),
                Text("Job settings: Remote",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
  ],

              ),
        ),
      ),

    //settings
       Container(
          child: Column(
            children: [
              Image(image: AssetImage("images/repair.png"),
                height: 500,
                width: 450,
              ),
              // SizedBox(height: 5),
              // Text("Settings",
              //   style: TextStyle(
              //     fontStyle: FontStyle.italic,
              //     fontWeight: FontWeight.bold,
              //     fontSize: 20,
              //   ),
              // ),

            ],
          ),
      ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color(0xFFFCE4EC),
    appBar: AppBar(
      title: Text("Bottom Nav",),
      backgroundColor: Color(0xFFFCE4EC),
    ),
    body: tabs[_currentIndex],
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
    type: BottomNavigationBarType.fixed,
    backgroundColor: Color(0xFFF48FB1),
    iconSize: 30,
    items: [
    BottomNavigationBarItem(
    icon: Icon(Icons.home_filled,
    ),
    label: "Home",
    ),

    BottomNavigationBarItem(
    icon: Icon(Icons.account_box),
    label: "Profile",
    ),

    BottomNavigationBarItem(
    icon: Icon(Icons.settings),
    label: "Settings",
    
    ),

    ],

      onTap: (index){
        setState(() {
          _currentIndex = index;
        });
      },
    ),
    );
  }
}

