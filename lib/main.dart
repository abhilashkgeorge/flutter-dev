// import "package:coolapp/pages/HomePage.dart";
// import "package:coolapp/pages/counter_page.dart";
// import "package:coolapp/pages/first_page.dart";
// import "package:coolapp/pages/logout_page.dart";
// import "package:coolapp/pages/settings.dart";
import "package:coolapp/pages/todo_page.dart";
import "package:flutter/material.dart";

void main() {
  runApp( MyAPP() );
}

void userTappedTheBtn() {
  print("The button has been tapped by the user");
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(),
      // routes: {
      //   '/homepage': (context) => const homePage(),
      //   '/settingspage':(context) => const SettingsPage(),
      //   '/logoutpage':(context) => const LogoutPage()
      // },
    );
  }
}

// class MyAPP extends StatelessWidget {
//   MyAPP({super.key});

//   List names = ["Abhi", "test", "here"];

//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.green,
//         appBar: AppBar(
//           title: const Text("Hello there"),
//           backgroundColor: Colors.orange,
//           elevation: 0,
//           leading: const Icon(Icons.favorite),
//           actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
//         ),
//         body: Center(
//           child: GestureDetector(
//             onTap: userTappedTheBtn,
            
//           child: Container(
//             height: 400,
//             width: 600,
//             color: Colors.red,
//             child: Center(child: Text("Tap Me for the Function")),
//           ),

//           // child: Stack(
//           //   alignment: Alignment.center,
//           //   children: [

//           //     Container(
//           //       height: 200,
//           //       width: 200,
//           //       color: Colors.amber[100],
//           //     ),
//           //     Container(
//           //       height: 150,
//           //       width: 150,
//           //       color: Colors.blue[100],
//           //     ),
//           //     Container(
//           //       height: 100,
//           //       width: 100,
//           //       color: Colors.red,
//           //     ),
//           //   ],
//           // ),

//           // child: GridView.builder(
//           //   itemCount: 80,
//           //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
//           //         itemBuilder: (context, index) => Container(color: Colors.white,
//           //         margin: EdgeInsets.all(4),)),

//           // child: ListView.builder(
//           //   itemCount: names.length,
//           //   itemBuilder: (context, index) => ListTile(
//           //   title: Text(names[index]),
//           //   textColor: Colors.white,
//           // )),
          
//           // child: ListView(
//           //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           //   // crossAxisAlignment: CrossAxisAlignment.center,
//           //   children: [
//           //     Container(
//           //       height: 300,
//           //       width: 300,
//           //       color: Colors.red,
//           //     ),
//           //     Expanded(
//           //       child: Container(
//           //         width: 100,
              
//           //         color: Colors.yellow,
//           //       ),
//           //     ),
//           //     Container(
//           //       height: 800,
//           //       width: 100,
//           //       color: Colors.blue,
//           //     )
//           //   ],
//           // )
//           // child: Container(
//           //   height: 422,
//           //   width: 200,
            
//           //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
//           //   decoration: BoxDecoration(
//           //     color: Colors.green,
//           //     borderRadius: BorderRadius.circular(50)
//           //   ),
//           //   // child: const Text("Hello There , I am Here to test you!!!",
//           //   // style:  TextStyle(
//           //   //   color: Colors.white,
//           //   //   fontSize: 25,
//           //   //   fontWeight: FontWeight.bold
//           //   // ),),
//           //   child: const Icon(
//           //     Icons.headphones, color: Colors.red , size: 40,
//           //   ),
//           //   ),
//           ),
//         ),
//       ),
//     );
//   }
// }