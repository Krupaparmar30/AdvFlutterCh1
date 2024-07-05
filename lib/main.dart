import 'package:flutter/cupertino.dart';
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
        appBar: AppBar(
          centerTitle: true,
          title: Text("Theme Data"),

        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: height*0.1,
              ),
              Text('Yo Man!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              SizedBox(
                height: height*0.050,
              ),
              Text("It's a simple example of dark theme",style: TextStyle(fontSize: 18,color: Colors.grey.shade400),),
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
                  width: width*0.2,
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("Light Icon",style: TextStyle(
                    color: Colors.black
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
                  width: width*0.2,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("Dark Icon",style: TextStyle(
                    color: Colors.black
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
