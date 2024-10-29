part of '../features.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFF),
      appBar: AppBar(
        backgroundColor: const Color(0xffFAFAFF),
        title: const Text('Edit Profile'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.string(
            exit,
            width: 25,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);

            },
            icon: SvgPicture.string(
              checklist,
              width: 25,
            ),
            iconSize: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child:
        ListView(
          children:  [
            Image.asset(AppImage.profile, height: 100,),
            const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Name'),
              TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Ihsan Fakhrianyah',
                  ))
            ]),
            const SizedBox(
              height: 30,
            ),
            const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Email'),
              TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'ihsan.dev@gmail.com',
                  ))
            ]),
            const SizedBox(
              height: 30,
            ),
            const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Phone Number'),
              TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: '0812345678',
                  ))
            ]),
          ],
        ),
      ),
    );
  }
}
