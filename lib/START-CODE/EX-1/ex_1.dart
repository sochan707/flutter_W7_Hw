import 'package:flutter/material.dart';

class ChangeColor extends StatefulWidget {
  const ChangeColor({super.key});

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  bool isSelected = false;

  void updateSelected(){
    setState(() {
      isSelected = !isSelected;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.blueAccent : null,
        ),
        onPressed: updateSelected,
        child: Center(
          child: Text(isSelected ? "Selected" : "Not Selected"),
        ),
      ),
    );
  }
}

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: Center(
        child: Column(
          spacing: 15,
          children: [
            ChangeColor(),
            ChangeColor(),
            ChangeColor(),
            ChangeColor()
          ],
        )
      ),
    ),
  ),
);
