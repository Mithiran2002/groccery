import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:groccery_app/screens/dashboard/dashboard.dart';
import 'package:splash_view/source/presentation/presentation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,Orientation,DeviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
             home:SplashView(
             duration: Duration(seconds:3),
            backgroundColor: Color(0xFFe6470a),
            title: Text("Groocery",style: TextStyle(fontSize: 50.sp,fontWeight: FontWeight.bold,color: Colors.white),),
            done:Done(DashBoardScreen(),curve: Curves.easeIn)
            
          ),
          
        );
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
    
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
