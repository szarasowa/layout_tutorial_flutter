import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* 
            Putting a Column inside an Expanded widget stretches the column
            to use all remaining free space in the row. Setting the crossAxisAlignment
            to CrossAxisAlignment.start positions the column at start of the row.
            */
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*
                Putting the first row of text inside a Container enables you to add padding.
                The second child in the Column, also text, displays as grey.
                */
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                ),
                Text(
                  'Kanderstag, Switzelrand',
                  style: TextStyle(color: Colors.grey[500])
                )
              ]
            ),
          ),
          /*
          The last two items in the title row are a star icon, painted red, and the text '41'.
          The entire row is in a Container and padded along each edge by 32 pixels.
          */
          Icon(
            Icons.star,
            color: Colors.red[500]
          ),
          Text('41')
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Layout Demo Home Page'),),

        body: Column(
          children: [
            titleSection,
          ],
        )
      ),
    );
  }
}