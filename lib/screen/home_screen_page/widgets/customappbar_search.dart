import 'package:HotelAppUser/core/utils/color_constant.dart';
import 'package:flutter/material.dart';

class CustomAppBarSearch extends StatelessWidget {
  final String titleappbar;
  final void Function()? onPressedSearch;
  final void Function(String)? onChanged;
  final TextEditingController mycontroller;

  
  const CustomAppBarSearch(
      {Key? key,
      required this.titleappbar,
      this.onPressedSearch,
      this.onChanged,
      required this.mycontroller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: EdgeInsets.fromLTRB(0,10,15,0),
      child: Row(children: [
        Expanded(
            child: TextFormField(
          controller: mycontroller,
          onChanged: onChanged,
        
          decoration: InputDecoration(
           
              prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                   onPressed: onPressedSearch,
                color: Colors.white60
                ),
              hintText: titleappbar,
              hintStyle: TextStyle(fontSize: 18 , color: Colors.white60),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              filled: true,
              fillColor: ColorConstant.blueGray900,
          ),
        )),
    
       
      ]),
    );
  }
}
