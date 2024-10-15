part of '../features.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ListView(
            children: [
              Column(
                children: [
                  const SizedBox(height: 60,),
                  Image.asset(AppImage.blueLogo),
                  const Text('Register Your Acoount', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                  const SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Enter Your Username',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: const BorderSide(color: AppColor.grey)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: const BorderSide(color: AppColor.grey)),
                            hintText: '8658855388',
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        const Text(
                          'Email/Phone Number',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: const BorderSide(color: AppColor.grey)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: const BorderSide(color: AppColor.grey)),
                            hintText: '8658855388',
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        const Text(
                          'Enter your password',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          obscureText: isObscure,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: const BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: const BorderSide(color: Colors.grey)),
                              hintText: '************',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade400,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isObscure = !isObscure;
                                  });
                                },
                                icon: Icon(
                                  isObscure ? Icons.visibility_off : Icons.visibility,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                        ),
                        const SizedBox(height: 30,),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColor.primaryColor,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15,),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                'Register',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.white,
                                  fontSize: 20,
                                ),
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account?',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Sign in',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(top: 18, bottom: 14),
                            child: Text(
                              'or',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColor.grey,
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
                                  color: AppColor.grey,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
