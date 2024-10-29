
part of '../features.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> categoryData = [
    'Pupular',
    'Biography',
    'Novel',
    'Comic',
    'Dictionary',
    'Guidebook',
    'Magazine',

  ];

  List<Widget> categories =  [
    PopularCategories(),
    const BiographyCategories(),
    const NovelCategories(),
    const ComicCategories(),
    const ComicCategories(),
    const ComicCategories(),
    const ComicCategories(),
  ];




  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 25,
            left: 25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Selamat Datang🙌',
                    style: TextStyle(
                        color: AppColor.grey, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Ihsan Fakhriansyah',
                    style: TextStyle(
                        color: AppColor.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NotificationPage()
                          ),
                        );

                      },
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          SvgPicture.string(
                            notification,
                            width: 25,
                            height: 25,
                          ),
                          Positioned(
                            top: -5,
                            left: 10,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                  color: AppColor.primaryColor,
                                  shape: BoxShape.circle),
                              child: const Text(
                                '1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColor.white, fontSize: 12),
                              ),
                            ),
                          )
                        ],
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CartPage()
                          ),
                        );

                      },
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          SvgPicture.string(
                            cart,
                            width: 25,
                            height: 25,
                          ),
                          Positioned(
                            top: -5,
                            left: 10,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                  color: AppColor.primaryColor,
                                  shape: BoxShape.circle),
                              child: const Text(
                                '5',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColor.white, fontSize: 12),
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(5),),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                RichText(
                  textAlign: TextAlign.start,
                  text: const TextSpan(
                      text: 'Open up world \nknowledge by',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                      children: [
                        TextSpan(
                          text: '\nReading',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                      ]),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end ,
                  children: [
                    Image.asset('assets/images/carousel.png', width: 144,),
                  ],
                )
              ]),
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child:
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: AppColor.grey)),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: AppColor.grey)),
              hintText: 'Search books...',
              hintStyle: TextStyle(color: Colors.grey.shade400),
              prefixIcon: Icon(Icons.search, color: Colors.grey.shade400,),
            ),
          ),
        ),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Categories', style: TextStyle(fontSize: 15, color: AppColor.black, fontWeight: FontWeight.bold),),
              GestureDetector(
                  onTap: (){},
                  child: const Text('See All', style: TextStyle(fontSize: 15, color: AppColor.primaryColor, fontWeight: FontWeight.bold),)),
            ],
          ),
        ),
        const SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SizedBox(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    width: 83,
                    decoration: BoxDecoration(
                        color: selectedIndex == index ? AppColor.primaryColor : AppColor.blue2,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: selectedIndex == index ? Colors.transparent : Colors.transparent,
                        )),
                    child: Center(
                        child: Text(
                          categoryData[index],
                          style: TextStyle(
                            color: selectedIndex == index ? AppColor.white : AppColor.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 16,
                );
              },
              itemCount: categoryData.length,
            ),
          ),
        ),
        const SizedBox(height: 20,),
        categories[selectedIndex],

      ],
    );
  }
}
