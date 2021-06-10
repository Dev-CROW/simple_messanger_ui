import 'package:flutter/material.dart';

class Chatting extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.black,
        elevation: 0.0,
          title: Row(
            children: [
              CircleAvatar(
                radius: 15.0,
                backgroundImage: NetworkImage(
                    "https://mpng.subpng.com/20180428/sue/kisspng-pittman-animal-hospital-user-computer-icons-avatar-5ae4937a25a0b7.9399757315249294021541.jpg"),
              ),
              SizedBox(width: 10.0),
              Text(
                "Hossam Sami",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),

      ),
      body: Column(
        children: [
          Spacer(),
          Row(
            children: [
              Container(
                height: 35.0,
                color: Colors.grey[300],
                padding: EdgeInsets.all(8.0),
                width: double.infinity,
              )
            ],
          )
        ],
      ),
    );
  }
}
