import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Favorite cards"),
      ),
      body: Column(
        children: [
          FavoriteCard(),
          FavoriteCard(),
          FavoriteCard(),
        ],
      ),
    ),
  ),
);

class FavoriteCard extends StatefulWidget {

  const FavoriteCard({
    super.key,
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isFavorited = false;
  void pressHeard(){
    setState(() {
      isFavorited = !isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // YOUR CODE
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: const Color.fromARGB(255, 199, 199, 199)
          )
        )
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("title", 
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24
                  ),  
                ), 
                Text("description")
              ]
            ),
          ),
          IconButton(
            onPressed: pressHeard,
            icon: Icon(isFavorited? Icons.favorite : Icons.favorite_border),
            color: isFavorited? Colors.red : null,
          ),
        ],
      ),
    );
  }
}
