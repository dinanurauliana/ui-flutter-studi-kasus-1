import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_tsel/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 150,
              width: 135,
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/logo/logo-login.png',
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Silakan Masuk dengan nomor telkomsel',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Nomor HP',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.phone,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Cth. 08129011xxxx',
                border: OutlineInputBorder(),
              ),
            ),
            Row(
              children: [
                Obx(
                  () => Checkbox(
                    value: controller.cheked.value,
                    onChanged: (value) => controller.cheked.toggle(),
                    activeColor: Color(0xFFEC202B),
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: 'Saya menyetujui',
                      style: const TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: ' syarat,',
                          style: const TextStyle(
                            color: Color(0xFFEC202B),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => print('syarat'),
                        ),
                        TextSpan(
                          text: ' ketentuan, ',
                          style: const TextStyle(
                            color: Color(0xFFEC202B),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => print('ketentuan'),
                        ),
                        const TextSpan(
                          text: ' dan',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' privasi,',
                          style: const TextStyle(
                            color: Color(0xFFEC202B),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => print('privasi'),
                        ),
                        const TextSpan(
                          text: ' Telkomsel',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xFFEC202B),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              child: const Text(
                'LANJUT',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                'Atau masuk menggunakan',
                style: TextStyle(
                  color: Color(0xFF747D8C),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))),
                    side: MaterialStateProperty.all(
                      const BorderSide(
                        color: Color(0xFF3B5998),
                      ),
                    ),
                    fixedSize: MaterialStateProperty.all(
                      const Size(150, 50),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/icons/facebook.png'),
                      const Text(
                        'Facebook',
                        style: TextStyle(color: Color(0xFF3B5998)),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      const BorderSide(
                        color: Color(0xFF1DA1F2),
                      ),
                    ),
                    fixedSize: MaterialStateProperty.all(
                      const Size(150, 50),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/icons/twitter.png'),
                      const Text(
                        'Twitter',
                        style: TextStyle(
                          color: Color(0xFF1DA1F2),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
