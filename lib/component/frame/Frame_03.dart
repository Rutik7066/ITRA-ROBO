import 'package:flutter/material.dart';

class Frame03 extends StatefulWidget {
  final Map<String, dynamic> data;
  const Frame03({super.key, required this.data});
/* {
              "image": "assets/logo.png",
              "businessname": "businessname",
              "mobile": "mobile",
              "email": "email",
              "address": "address",
              "businessdetails": "businessdetails",
            } */
  @override
  State<Frame03> createState() => _Frame03State();
}

class _Frame03State extends State<Frame03> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    print("Frame: width $width");

    return SizedBox(
      width: width,
      height: width,
      child: Stack(
        children: [
          // Frame
          if (widget.data["show_frame"])
            SizedBox(
              width: width,
              height: width,
              child: Image.asset("assets/frame/frame_d03.png"),
            ),

        
          Align(
               alignment: const AlignmentDirectional(0.0, 0.71),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.data["businessname"] ?? "",
                  style: TextStyle(
                    fontFamily: widget.data["textstyle"],
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.86),
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.data["email"] ?? "",
                    style: TextStyle(color: Colors.white, fontFamily: widget.data["textstyle"], fontSize: 11),
                  ),
                  Text(
                    "+91-${widget.data["mobile"]}",
                    style: TextStyle(color: Colors.white, fontFamily: widget.data["textstyle"], fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.data["address"] ?? "",
                  style: TextStyle(
                    fontFamily: widget.data["textstyle"],
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
