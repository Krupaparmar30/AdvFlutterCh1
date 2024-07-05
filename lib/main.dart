import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDark?ThemeMode.dark:ThemeMode.light,
      home: Scaffold(

        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: height*0.150,
              ),
              Text('Yo Man!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
              SizedBox(
                height: height*0.050,
              ),
              Text("It's a simple example of\n            dark theme",style: TextStyle(fontSize: 22,color: Colors.grey.shade600),),
              SizedBox(
                height: height*0.1,
              ),
              GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    isDark=false;
                  });
                },
                child: Container(
                  height: height*0.1,
                  width: width*0.7,
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("Light Icon",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),)),
                ),
              ),
              SizedBox(
                height: height*0.050,
              ),
              GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    isDark=true;
                  });
                },
                child: Container(
                  height: height*0.1,
                  width: width*0.7,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("Dark Icon",style: TextStyle(
                 fontWeight: FontWeight.bold,fontSize: 18,
                  ),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
bool isDark=false;
