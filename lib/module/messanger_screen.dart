import 'package:flutter/material.dart';
import 'package:simple_messanger_ui/components/components.dart';
import 'package:simple_messanger_ui/module/chat_screen.dart';

class MessangerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  "https://mpng.subpng.com/20180428/sue/kisspng-pittman-animal-hospital-user-computer-icons-avatar-5ae4937a25a0b7.9399757315249294021541.jpg"),
            ),
            SizedBox(width: 15.0),
            Text(
              "Chats",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.camera_alt,
                  size: 16.0,
                  color: Colors.white,
                )),
            onPressed: () {},
          ),
          IconButton(
              icon: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.edit,
                    size: 16.0,
                    color: Colors.white,
                  )),
              onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(
                      width: 14.0,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context,index)=>SizedBox(width: 10.0,),
                  itemCount: 5,
                  itemBuilder: (context,index) => storybuilder(),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index)=> InkWell(onTap: (){navigateTo(context, Chatting());},child: chatbuilder()), itemCount: 10,
              separatorBuilder: (context,index)=> SizedBox(height: 20.0,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
