import 'package:five_library/preferences/colors.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffFAFAFF),
      appBar: AppBar(
        leading: GestureDetector( onTap: (){
          Navigator.pop(context);
        }, child: const Icon(Icons.arrow_back)),
        title: Row(
          children:  [
            Image.asset('assets/images/gramedia.png', width: 40,),
            const SizedBox(width: 10,),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Kompas Gramedia', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                SizedBox(width: 10,),
                Text('Online', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Color(0xff33B400)),),
              ],
            ),

        ]),
      ),
      body:  Stack(
        children: [
          ListView(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: AppColor.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: AppColor.blue2,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                            child: Image.asset('assets/images/books/hujan.png', width: 60,),
                          ),
                        ),
                        const SizedBox(width: 20,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text('Hujan', style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
                                Text('Tere Liye', style: TextStyle(fontSize: 12, color: AppColor.grey), ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text('Rp 89.000', style: TextStyle(color: AppColor.primaryColor, fontWeight: FontWeight.w800,fontSize: 18),),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            width: 300,
                            decoration: BoxDecoration(
                              color: AppColor.blue2,
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15), topRight: Radius.circular(15)),
                              border: Border.all(color: AppColor.blue2),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text('Morning, Is this item still available?', style: TextStyle(fontWeight: FontWeight.w500, color: AppColor.primaryColor),),
                            )),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: 300,
                            decoration: const BoxDecoration(
                              color: AppColor.primaryColor,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomRight: Radius.circular(15), topRight: Radius.circular(15)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text('Yes, for novel Hujan is still available, you can buy it now', style: TextStyle(fontWeight: FontWeight.w500, color: AppColor.blue2),),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          Positioned(
            bottom: 10,
              child:
                  Align(
                    alignment: Alignment.center,
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 200,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                                filled: true,
                                fillColor: AppColor.blue2,
                                hintText: 'Type a message...',
                                border: InputBorder.none,
                                hintStyle: TextStyle(color: AppColor.grey, fontWeight: FontWeight.w700),
                                prefixIcon: Icon(Icons.mic, color: AppColor.grey,),
                            ),
                            ),
                          ),
                          ElevatedButton(onPressed: (){}, child: Icon(Icons.send, color: AppColor.white,),)
                        ],
                      ),
                    ),
                  ),

              )
        ],
      ),

    );
  }
}
