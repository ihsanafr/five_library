part of '../features.dart';


class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('cart Page'),
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: const Center(
        child: Text('Cart Page'),
      ),
    );
  }
}
