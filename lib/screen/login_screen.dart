import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lumbung_jamur/screen/menu_screen.dart';
import 'package:lumbung_jamur/utils/global_color.dart';
import 'package:iconsax/iconsax.dart';
import 'package:page_animation_transition/animations/fade_animation_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

import '../page/home_page.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/img/login.png"),
            alignment: Alignment.topLeft,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 165,
                child: const Padding(
                  padding: EdgeInsets.all(20),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(80),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 32,
                      bottom: 18,
                      left: 18,
                      right: 18,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Selamat Datang Kembali!",
                          style: TextStyle(fontFamily: "PoppinsBold", fontSize: 17, color: GlobalColors.brown),
                        ),
                        Text(
                          "Silahkan login untuk memulai",
                          style: TextStyle(fontFamily: "PoppinsMedium", fontSize: 12, color: GlobalColors.brown)
                        ),
                        SignForm(),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Icon(
                                  //   FontAwesomeIcons.infoCircle,
                                  //   size: 21,
                                  //   color: Color.fromARGB(255, 170, 170, 170),
                                  // ),
                                  // SizedBox(width: 13),
                                  // Text(
                                  //   "Version 0.0.1",
                                  //   style: TextStyle(
                                  //     fontSize: 14,
                                  //     fontFamily: 'PoppinsBold',
                                  //     color: Color.fromARGB(255, 170, 170, 170),
                                  //   ),
                                  // ),
                                  SizedBox(height: 4),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  bool _isHidePassword = true;
  final TextEditingController emailControlle = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController ssidController = TextEditingController();
  // final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    double labelFontSize;

    if (screenWidth < 400) {
      // Ukuran layar kecil
      labelFontSize = 14;
    } else if (screenWidth < 600) {
      // Ukuran layar menengah
      labelFontSize = 15;
    } else {
      // Ukuran layar besar
      labelFontSize = 16;
    }

    return Form(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          TextField(
            controller: ssidController,
            cursorColor: GlobalColors.brown,
            decoration: InputDecoration(
                labelText: 'Nomor SSID',
                labelStyle: TextStyle(
                  fontFamily: 'PoppinsSemiBold',
                  fontSize: 13,
                  color: GlobalColors.brown,
                ),
                hintText: 'Masukkan nomor SSID anda',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
                prefixIcon: Icon(
                  Iconsax.global,
                  color: GlobalColors.darkbrown,
                  size: 18,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
                  borderRadius: BorderRadius.circular(18),
                ),
                floatingLabelStyle: TextStyle(
                  color: GlobalColors.brown,
                  fontFamily: 'PoppinsBold',
                  fontSize: 16,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                  borderRadius: BorderRadius.circular(18),
                ),
                ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextField(
            controller: emailControlle,
            cursorColor: GlobalColors.brown,
            decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  fontFamily: 'PoppinsSemiBold',
                  fontSize: 13,
                  color: GlobalColors.brown,
                ),
                hintText: 'Masukkan email anda',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
                prefixIcon: Icon(
                  Iconsax.message,
                  color: GlobalColors.darkbrown,
                  size: 18,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
                  borderRadius: BorderRadius.circular(18),
                ),
                floatingLabelStyle: TextStyle(
                  color: GlobalColors.brown,
                  fontFamily: 'PoppinsBold',
                  fontSize: 16,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                  borderRadius: BorderRadius.circular(18),
                )),
          ),
          // normalTextFormFie("Email / Username", false, emailControlle,
          //     GlobalColors.greenColor, ""),
          const SizedBox(
            height: 30,
          ),
          TextField(
            controller: passwordController,
            obscureText: _isHidePassword,
            cursorColor: GlobalColors.brown,
            decoration: InputDecoration(
                labelText: 'Kata Sandi',
                labelStyle: TextStyle(
                  fontFamily: 'PoppinsSemiBold',
                  fontSize: 13,
                  color: GlobalColors.brown,
                ),
                hintText: 'Masukkan kata sandi',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
                prefixIcon: Icon(
                  Iconsax.key,
                  color: GlobalColors.darkbrown,
                  size: 16,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                suffixIcon: GestureDetector(
                  onTap: () {
                    _togglePasswordVisibility();
                  },
                  child: Container(
                    width: 50, // Atur lebar maksimum ikon
                    child: Icon(
                      _isHidePassword ? Icons.visibility_off : Icons.visibility,
                      color: _isHidePassword ? Colors.grey : Colors.grey,
                    ),
                  ),
                ),
                suffixIconConstraints: const BoxConstraints(maxWidth: 50),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
                  borderRadius: BorderRadius.circular(18),
                ),
                floatingLabelStyle: TextStyle(
                  color: GlobalColors.brown,
                  fontFamily: 'PoppinsBold',
                  fontSize: 18,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                  borderRadius: BorderRadius.circular(18),
                )),
          ),

          const SizedBox(
            height: 70,
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
              context,
              PageAnimationTransition(
                  page: MenuScreen(),
                  pageAnimationType: FadeAnimationTransition()),
              (route) => false,
            );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: GlobalColors.lightbrown,
              foregroundColor: Colors.white, // text color
              padding: const EdgeInsets.symmetric(
                horizontal: 115,
                vertical: 20,
              ), // button padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14), // button border radius
              ),
            ),
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'PoppinsSemiBold',
                color: Colors.white,
              ),
            ),
          ),
          // normalElevatedButton('Login', login, GlobalColors.darkblueColor,
          //      Colors.white, BorderRadius.circular(14)),
          // // normalElevatedButton('Login', login, GlobalColors.darkblueColor,
          // //     Colors.white, BorderRadius.circular(14)),
        ],
      ),
    );
  }

  TextFormField normalTextFormFie(String labelText, bool isPasswordType,
      TextEditingController controller, Color borderColor, String hintText) {
    double labelFontSize = 20;

    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 400) {
      // Ukuran layar kecil
      labelFontSize = 14;
    } else if (screenWidth < 600) {
      // Ukuran layar menengah
      labelFontSize = 15;
    } else {
      // Ukuran layar besar
      labelFontSize = 16;
    }

    return TextFormField(
      controller: controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: labelFontSize,
          fontFamily: 'PoppinsSemiBold',
          color: Color.fromARGB(255, 143, 143, 143),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 35,
          vertical: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: borderColor),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: borderColor),
          gapPadding: 10,
        ),
      ),
      validator: (value) {
        if (value!.isEmpty || !RegExp(r'^[\w\W]+$').hasMatch(value)) {
          return "Email/Username";
        } else {
          return null;
        }
      },
      keyboardType: isPasswordType
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
    );
  }

//   void _login() async {
//     if (_formKey.currentState.validate()) {
//       setState(() {
//         _isLoading = true;
//       });

//       // Connect to RabbitMQ server
//       final conn = await Connection.connect('amqp://localhost');

//       // Create a channel
//       final channel = await conn.channel();

//       // Declare a queue for login messages
//       final loginQueueName = 'login_queue';
//       await channel.queue(loginQueueName, durable: true);

//       // Send a login message to the queue
//       final message = '${_emailController.text},${_passwordController.text}';
//       channel.basicPublish('', loginQueueName, message);

//       // Listen for login response
//       final responseQueueName = 'login_response_queue';
//       await channel.queue(responseQueueName, durable: true);
//       final consumer = await channel.basicConsume(responseQueueName);
//       await for (var delivery in consumer) {
//         final response = new String.fromCharCodes(delivery.body);
//         if (response == 'success') {
//           Navigator.pushNamed(context, '/home');
//         } else {
//           setState(() {
//             _isLoading = false;
//           });
//           showDialog(
//             context: context,
//             builder: (context) => AlertDialog(
//               title: Text('Login Failed'),
//               content: Text('Invalid email or password'),
//               actions: <Widget>[
//                 TextButton(
//                   child: Text('OK'),
//                   onPressed: () => Navigator.pop(context),
//                 ),
//               ],
//             ),
//           );
//         }
//         channel.basicAck(delivery.deliveryTag);
//         break;
//       }

//       // Close connection
//       await channel.close();
//       await conn.close
// ();
//     }
//   }
}
