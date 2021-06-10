
import 'package:flutter/material.dart';

Widget storybuilder() => Container(
  width: 60.0,
  child: Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage(
                "https://mpng.subpng.com/20180428/sue/kisspng-pittman-animal-hospital-user-computer-icons-avatar-5ae4937a25a0b7.9399757315249294021541.jpg"),
          ),
          CircleAvatar(
            radius: 6.0,
            backgroundColor: Colors.black,
          ),
          CircleAvatar(
            radius: 5.0,
            backgroundColor: Colors.green,
          )
        ],
      ),
      Text(
        "Hossam Sami Ezzat",
        style: TextStyle(color: Colors.white),
        maxLines: 2,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
      )
    ],
  ),
);
Widget chatbuilder() =>Row(
  children: [
    Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundImage: NetworkImage(
              "https://mpng.subpng.com/20180428/sue/kisspng-pittman-animal-hospital-user-computer-icons-avatar-5ae4937a25a0b7.9399757315249294021541.jpg"),
        ),
        CircleAvatar(
          radius: 6.0,
          backgroundColor: Colors.black,
        ),
        CircleAvatar(
          radius: 5.0,
          backgroundColor: Colors.green,
        )
      ],
    ),
    SizedBox(
      width: 10.0,
    ),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hossam Sami",
            style: TextStyle(
              color: Colors.white,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 7.0,
          ),
          Row(
            children: [
              Expanded(
                  child: Text(
                    "Hey Iam Develop Messanger App",
                    style: TextStyle(color: Colors.white),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )),
              Container(
                width: 5.0,
                height: 5.0,
                margin: EdgeInsetsDirectional.only(
                  start: 3.0,
                  end: 3.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              Text("2:00 AM",style: TextStyle(color:Colors.white),)
            ],
          )
        ],
      ),
    )
  ],
);


void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );
