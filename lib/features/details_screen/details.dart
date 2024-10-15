part of '../features.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({super.key});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  final List<Product> products = const [
    Product(
      author: 'Tere Liye',
      imageUrl: 'assets/images/books/hello.png',
      title: 'Hello',
      price: 'Rp. 89.000',
    ),
    Product(
      author: 'Tere Liye',
      imageUrl: 'assets/images/books/rasa.png',
      title: 'Rasa',
      price: 'Rp. 96.000',
    ),
    Product(
      author: 'Tere Liye',
      imageUrl: 'assets/images/books/rindu.png',
      title: 'Rindu',
      price: 'Rp. 109.000',
    ),
    Product(
      author: 'Tere Liye',
      imageUrl: 'assets/images/books/tentangkamu.png',
      title: 'Tentang Kamu',
      price: 'Rp. 59.000',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            color: AppColor.blue2,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  AppImage.hujan,
                  width: 400,
                ),
                Positioned(
                    top: 10,
                    left: 10,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: AppColor.white, shape: BoxShape.circle),
                        child: const Icon(
                          Icons.arrow_back,
                          size: 30,
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tere lIye'),
                            Text(
                              'Hujan',
                              style: TextStyle(
                                  color: AppColor.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ]),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColor.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(children: [
                            SvgPicture.string(
                              love,
                              height: 25,
                              width: 25,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Saved',
                              style: TextStyle(color: AppColor.black),
                            ),
                          ]),
                        ),
                      ),
                    ]),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rp 76.000',
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 25),
                    ),
                    Text(
                      '1000 sell',
                      style: TextStyle(
                          color: AppColor.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Description',
                  style: TextStyle(
                      color: AppColor.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                const Text(
                  'Novel Hujan merupakan novel yang mengisahkan kisah cinta serta perjuangan hidup Lail. Saat usianya baru menginjak 13 tahun, Lail menjadi seorang yatim piatu akibat ayah dan ibu Lail yang terkena letusan Gunung Api Purba dan gempa yang membuat kota tempat mereka tinggal hancur.  L',
                  style: TextStyle(
                      color: AppColor.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'More From Tere Liye',
                  style: TextStyle(
                      color: AppColor.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 300,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      final product = products[index];
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  color: AppColor.blue2,
                                  borderRadius: BorderRadius.circular(1),
                                  image: DecorationImage(
                                    image: AssetImage(product.imageUrl),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Center(
                                      child: Image.asset(product.imageUrl),
                                    ),
                                    Positioned(
                                        top: 10,
                                        right: 10,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: AppColor.white,
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SvgPicture.string(
                                              love,
                                              color: AppColor.grey,
                                              width: 20,
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                product.author,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: AppColor.grey,
                                ),
                              ),
                              Text(
                                product.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: AppColor.black,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                product.price,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: AppColor.primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 40);
                    },
                    itemCount: products.length,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 23),
                      backgroundColor: AppColor.grey,
                    ),
                    child: Text(
                      'Add to cart',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: AppColor.blue2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 23),
                      backgroundColor: AppColor.primaryColor,
                    ),
                    child: Text(
                      'Buy Now',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
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