import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: IDCard(),
));

class IDCard extends StatefulWidget {
  const IDCard({super.key});

  @override
  State<IDCard> createState() => _IDCardState();
}

class _IDCardState extends State<IDCard> {

  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
        appBar: AppBar(

          title: const Text('Id Login Details'),
          centerTitle: true,
          backgroundColor: Colors.green,
          elevation: 0.0,
        ),

      body:  Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 1.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            const Center(
              child: CircleAvatar(
                backgroundImage:AssetImage('assets/shrek.jpg'),
                radius: 60.0,
              ),
            ),
             const Divider(
               height: 60.0,
               color: Colors.grey,
             ),
             const Text(
               'NAME',
                   style: TextStyle(
            color: Colors.grey,
             letterSpacing: 2.0,
                     fontSize: 19.0,
                 )
             ),
            const SizedBox(height: 10.0),
            const Text(
                'Fayyaadh Hendricks',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                )
            ),
            const SizedBox(height: 30.0),
            const Text(
                'AGE',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontSize: 19.0,
                )
            ),
            const SizedBox(height: 10.0),
            Text(
                '$age',
                style: const TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                )
            ),
            const SizedBox(height: 30.0),
            const Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 7.0),
                Text(
                  'fayyaadhh@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
             const SizedBox(height: 12.0 ,width: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
             children: <Widget>[

               const Text(
                   'Adjust Age:  ',
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 24.0,
                 letterSpacing: 1.0,
                 fontWeight: FontWeight.bold,
               ),
               ),

               FloatingActionButton(
                 onPressed: () {
                   setState(() {
                     age += 1;
                   });
                 },
                 backgroundColor: Colors.grey[800],
                 heroTag: null,
                 child: const Icon(Icons.add),
               ),
               const SizedBox(height: 10, width: 10),

               FloatingActionButton(
                 onPressed: () {
                   setState(() {
                     age -= 1;
                   });
                 },
                 backgroundColor: Colors.grey[800],
                 heroTag: null,
                 child: const Icon(Icons.remove),
               ),
             ],
           )
          ],
        ),

    ));
  }
}


