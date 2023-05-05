import 'package:flutter/material.dart';

class Toogle_buttons extends StatefulWidget {
  const Toogle_buttons({super.key});

  @override
  State<Toogle_buttons> createState() => _Toogle_buttonsState();
}

class _Toogle_buttonsState extends State<Toogle_buttons> {
  List<bool> Selected=[false,false,false];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        isSelected: Selected,
        onPressed: (index) {
          setState(() {
            for(int buttunindex = 0 ; buttunindex<Selected.length ; buttunindex++ ){
              if(buttunindex==index){
                Selected[buttunindex]=true;
              }
              else{
                Selected[buttunindex]=false;
              }
            }
          });
        },
        children:const [
          Icon(Icons.home,size: 40,),
          Icon(Icons.chair,size: 40,),
          Icon(Icons.accessibility_outlined,size: 40,)
        ],
        //splashColor: Colors.green,
      ),
    );
  }
}