import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Frame09 extends StatefulWidget {
  final Map<String, dynamic> data;
  const Frame09({super.key, required this.data});
/* {
              "image": "assets/logo.png",
              "businessname": "businessname",
              "mobile": "mobile",
              "email": "email",
              "address": "address",
              "businessdetails": "businessdetails",
            } */
  @override
  State<Frame09> createState() => _Frame09State();
}

class _Frame09State extends State<Frame09> {
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
              child: Image.asset("assets/frame/frame_d09.png"),
            ),

          ///
          Align(
            alignment: const AlignmentDirectional(0.0, 0.70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.data["businessname"] ?? "",
                  style: TextStyle(
                    fontFamily: widget.data["textstyle"],
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
       
          Align(
            alignment: const AlignmentDirectional(0.0, 0.80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.data["businessdetails"] ?? "",
                  style: TextStyle(
                    fontFamily: widget.data["textstyle"],
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.90),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(
                          'assets/gmail_icon.png',
                          width: 14,
                          height: 14,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: Text(
                          widget.data["email"] ?? "",
                          style: TextStyle(fontFamily: widget.data["textstyle"], fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Ionicons.call_sharp,
                        size: 14,
                        color: Colors.green,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: Text(
                          "+91-${widget.data["mobile"]}",
                          style: TextStyle(fontFamily: widget.data["textstyle"], fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
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
                    color: Colors.white,
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
