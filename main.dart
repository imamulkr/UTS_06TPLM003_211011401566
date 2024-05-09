import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoesList(),
    );
  }
}

class ShoesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SHOES'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://dafunda.com/wp-content/uploads/2019/05/cara-membuat-lingkaran-pada-foto-di-powerpoint-2.png',
              ),
              radius: 25, 
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          buildShoeItem(
            
            title: 'Nike SB Zoom Blazer',
            subtitle: 'Mid Premium',
            color :Color.fromRGBO(213, 78, 218, 1),
            price: '28,795',
            imageUrl: 'https://tse4.mm.bing.net/th?id=OIP.MJ_794RrKo1WSYjgDeWwpwHaHa&pid=Api&P=0&h=220',
          ),
          buildShoeItem(
            color :Color.fromARGB(255, 96, 231, 231),
            title: 'Nike Air Zoom Pegasus',
            subtitle: "Men's Rood Running Shoes",
            price: '29,995',
            imageUrl: 'https://tse2.mm.bing.net/th?id=OIP.pmO6llG4kDElOuDtVmqf5gHaHa&pid=Api&P=0&h=220',
          ),
          buildShoeItem(
            color :Color.fromARGB(255, 250, 139, 181),
            title: 'Nike ZoomX Vaporfly',
            subtitle: "Men's Road Racing Shoe",
            price: '219,695',
            imageUrl: 'https://tse2.mm.bing.net/th?id=OIP.QDzN-v1OtWyP_mZOkkOa-AHaJQ&pid=Api&P=0&h=220',
          ),
          buildShoeItem(
            color :const Color.fromARGB(255, 150, 161, 170),
            title: 'Nike Air Force 1 S50',
            subtitle: "Older Kids' Shoe",
            price: '26,295',
            imageUrl: 'https://tse3.mm.bing.net/th?id=OIP.G-bK-gUC0H_HJItJSOFfbgHaHa&pid=Api&P=0&h=220',
          ),
          buildShoeItem(
            
            title: 'Nike Waffle One',
            subtitle: "Men's Shoes",
            color :Colors.yellow,
            price: '28,295',
            imageUrl: 'https://tse2.mm.bing.net/th?id=OIP.uEN_Ps495TUFl_S119UEBQHaE4&pid=Api&P=0&h=220',
          ),
        ],
      ),
    );
  }

  Widget buildShoeItem({
    required Color color,
    required String title,
    required String subtitle,
    required String price,
    required String imageUrl,
  }) {
    return Card(
      color : color,
      child: Padding(
       
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align elements to the right
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                Text(
                  price,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(width: 16),
            CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: 40, // Adjust the radius for larger image
            ),
          ],
        ),
      ),
    );
  }
}