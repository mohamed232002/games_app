import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
 String imageName ;


 ImageWidget(this.imageName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  SizedBox(
      height: 125,
        width: 125,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/$imageName.jpg'),
          radius: 15,
        ),
      ),
        );
  }
}
