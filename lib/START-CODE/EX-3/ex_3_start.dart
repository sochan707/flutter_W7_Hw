import 'package:flutter/material.dart';

List<String> images = [
  "lib/START-CODE/EX-3/assets/bird.jpg",
  "lib/START-CODE/EX-3/assets/bird2.jpg",
  "lib/START-CODE/EX-3/assets/girl.jpg",
  "lib/START-CODE/EX-3/assets/insect.jpg",
  "lib/START-CODE/EX-3/assets/man.jpg",
];

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false, // Why this line ? Can you explain it ?
      home: ImgChange(),
    ));

class ImgChange extends StatefulWidget {
  const ImgChange({
    super.key,
  });

  @override
  State<ImgChange> createState() => _ImgChangeState();
}

class _ImgChangeState extends State<ImgChange> {
  int imgIndex = 0;

  void goRight(){
    if(imgIndex >= images.length - 1){
      setState(() {
        imgIndex = 0;
      });
    } else {
      setState(() {
        imgIndex++;
      });
    }
  }

  void goLeft(){
    if(imgIndex <= 0){
      setState(() {
        imgIndex = images.length - 1;
      });
    } else {
      setState(() {
        imgIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: goLeft,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: goRight,
            ),
          ),
        ],
      ),
      body: Image.asset(images[imgIndex]),
    );
  }
}
