import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 16, 194)),
      ),
      home: const MyHomePage(title: 'Beranda'),
     
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

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: const Color.fromARGB(255, 60, 21, 236),
       
        title: Text(widget.title, style: TextStyle(
          color: Colors.white),
          ),
        centerTitle: true,
      ),
      body: Center(
       
        child: Column(
          
          
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 40,),
            const Text('Sistem Informasi Management Sekolah', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Container(
              alignment: Alignment.center,
              width: 200,
              height: 200,
              margin: const EdgeInsets.only(top: 20, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromARGB(255, 187, 209, 243),
              ),
              child: const Text(
                "Mencoba",
                style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 9, 9, 9)),
              ),
            ),
          const SizedBox(height: 40,),
              ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 17, 156, 22),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {
                      print("click");
                    },
                    child: const Text(
                      "Tombol",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
