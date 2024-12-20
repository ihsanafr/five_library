part of '../features.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});
  final List<Product> products = const [
    Product(
      author: 'Alvi syahrin',
      imageUrl: 'assets/images/books/overthinking.png',
      title: 'Overthinking',
      price: 'Rp. 72.000',
    ),
    Product(
      author: 'John c Maxwell',
      imageUrl: 'assets/images/books/tmdr.png',
      title: 'The Maxwell Daily Readers hnhinininj',
      price: 'Rp. 109.000',
    ),
    Product(
      author: 'Asti Musman',
      imageUrl: 'assets/images/books/ht.png',
      title: 'Habit Training',
      price: 'Rp. 32.000',
    ),
  ];




  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        const SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 10 / 13,
            ),
            itemBuilder: (BuildContext context, int index) {
              final product = products[index];
              return GestureDetector(
                onTap: () {},
                child: ListView(
                  children: [
                    Column(
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
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child:  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.string(love2,
                                        color: AppColor.red, width: 20,
                                      ),
                                    ),
                                  )

                              ),
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
                  ],
                ),
              );
            },

          ),
        ),
      ],
    );

  }
}
