part of '../features.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView(
        children: [
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start  ,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(AppImage.profile,),),
              const SizedBox(width: 20,),
              const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ihsan Fakhriansyah', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                    Text('Ihsan.dev@gmail.com', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),),
                  ]),

            ],

          ),
          const SizedBox(height: 30,),
          const Text('Account', style: TextStyle( fontWeight: FontWeight.w700, fontSize: 18),),
          Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0,bottom: 0.0,top: 0.0),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfile()));
                },
                title: const Text('Edit Profile', style: TextStyle(color: AppColor.grey, fontWeight: FontWeight.w400, fontSize: 15),),
                trailing: const Icon(Icons.arrow_forward_ios as IconData?, color: AppColor.grey,),
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                onTap: (){},
                title: const Text('Your Orders', style: TextStyle(color: AppColor.grey, fontWeight: FontWeight.w400, fontSize: 15),),
                trailing: const Icon(Icons.arrow_forward_ios as IconData?, color: AppColor.grey,),
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                onTap: (){},
                title: const Text('Help', style: TextStyle(color: AppColor.grey, fontWeight: FontWeight.w400, fontSize: 15),),
                trailing: const Icon(Icons.arrow_forward_ios as IconData?, color: AppColor.grey,),
              ),


            ],
          ),
          const SizedBox(height: 30,),
          const Text('General', style: TextStyle( fontWeight: FontWeight.w700, fontSize: 18),),
          Column(
            children: [
              ListTile(
                contentPadding:const EdgeInsets.only(left: 0.0, right: 0.0,bottom: 0.0,top: 0.0),
                onTap: (){},
                title: const Text('Privacy Police', style: TextStyle(color: AppColor.grey, fontWeight: FontWeight.w400, fontSize: 15),),
                trailing: const Icon(Icons.arrow_forward_ios as IconData?, color: AppColor.grey,),
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                onTap: (){},
                title: const Text('Term Of Service', style: TextStyle(color: AppColor.grey, fontWeight: FontWeight.w400, fontSize: 15),),
                trailing: const Icon(Icons.arrow_forward_ios as IconData?, color: AppColor.grey,),
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                onTap: (){},
                title: const Text('Rate App', style: TextStyle(color: AppColor.grey, fontWeight: FontWeight.w400, fontSize: 15),),
                trailing: const Icon(Icons.arrow_forward_ios as IconData?, color: AppColor.grey,),
              ),


            ],
          ),
          const SizedBox(height: 30,),
          GestureDetector(
            onTap: (){},
            child: const Text('Logout', style: TextStyle( color: AppColor.red, fontWeight: FontWeight.w700, fontSize: 18),),
          )
        ],
      ),
    );
  }
}
