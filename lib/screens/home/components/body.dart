import 'package:flutter/material.dart';
import 'package:flutter_plant_app/screens/home/components/header_with_search_box.dart';
import 'package:flutter_plant_app/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            onPressed: () {},
            textButton: 'More',
            textTitle: 'Recomended',
          ),
          
        ],
      ),
    );
  }
}
