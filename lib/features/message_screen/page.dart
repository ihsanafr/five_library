part of '../features.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xffFAFAFF),
      body: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 20.0),
        child: ListView(
          children: [
            const SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatPage()
                    )
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColor.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/gramedia.png'),
                      const SizedBox(
                        width: 200,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Kompas Gramedia', style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
                              Text(
                                'Untuk Buku Berjudul Hujan masih tersedia ya kak,bisa segera dipesan', overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12, color: AppColor.grey), ),
                            ]),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text('7.89 PM', style: TextStyle(fontSize: 12),),
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColor.primaryColor,
                                  borderRadius: BorderRadius.circular(60)
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                                child: Text('1', style: TextStyle(color: AppColor.white),),
                              ),
                            )
                          ])
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){},
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColor.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/gramedia.png'),
                      const SizedBox(
                        width: 200,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Kompas Gramedia', style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
                              Text(
                                'Untuk Buku Berjudul Hujan masih tersedia ya kak,bisa segera dipesan', overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12, color: AppColor.grey), ),
                            ]),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text('7.89 PM', style: TextStyle(fontSize: 12),),
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColor.primaryColor,
                                  borderRadius: BorderRadius.circular(60)
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                                child: Text('1', style: TextStyle(color: AppColor.white),),
                              ),
                            )
                          ])
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
