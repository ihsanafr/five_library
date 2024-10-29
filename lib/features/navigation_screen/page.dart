part of '../features.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int selectedIndex = 0;

  IconButton buildItemNav(String icon, String label, int index) {
    return IconButton(
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
      },
      icon: Column(
        children: [
          SvgPicture.string(icon, height: 25, color: selectedIndex == index ? AppColor.primaryColor : AppColor.grey,),
          const SizedBox(height: 5),
          Text(label, style: TextStyle(fontSize: 12 ,color: selectedIndex == index ? AppColor.primaryColor : AppColor.grey),)
        ],
      ),
    );
  }

List<Widget> pages = [
  const HomePage(),
  const SavedPage(),
  const MessagePage(),
  const ProfilePage(),
];
  @override


  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffFAFAFF),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: AppColor.white,
        height: 90,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildItemNav(home,'Home' ,0),
              buildItemNav(love,'saved', 1),
              buildItemNav(message,'Message', 2),
              buildItemNav(user,'Profile', 3),
            ],
          ),
        ),
    ),
    );
  }

}
