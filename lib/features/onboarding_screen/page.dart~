part of '../features.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              const Text(
                'Hello🙌, Welcome To',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: AppColor.white,
                ),
              ),
              Image.asset(AppImage.whiteLogo),
              Image.asset(AppImage.onboarding),
              const SizedBox(height: 32,),
              const Center(
                child: Text(
                  'Explore knowledge on this earth \nby reading books',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                    color: AppColor.white,
                  ),
                ),
              ),
              const SizedBox(height: 50,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 146),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: AppColor.primaryColor,
                      fontSize: 20,
                    ),
                  )),
              const SizedBox(height: 20,),
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterPage()),);

                  },
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 1, color: AppColor.white),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 133, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: AppColor.white,
                      fontSize: 20,
                    ),
                  )),
              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 18, bottom: 14),
                  child: Text(
                    'or',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ),
              Align(
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Continue as Guest',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColor.white,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
