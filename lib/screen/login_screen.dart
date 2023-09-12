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
                          "Welcome Back!",
                          style: TextStyle(fontFamily: "PoppinsBold", fontSize: 20, color: GlobalColors.brown),
                        ),
                        Text(
                          "Sign in to continue",
                          style: TextStyle(fontFamily: "PoppinsMedium", fontSize: 13, color: GlobalColors.brown)
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
            controller: emailControlle,
            cursorColor: GlobalColors.brown,
            decoration: InputDecoration(
                labelText: 'Email/Username',
                labelStyle: TextStyle(
                  fontFamily: 'PoppinsSemiBold',
                  fontSize: 14,
                  color: GlobalColors.brown,
                ),
                hintText: 'Enter your email/username',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
                prefixIcon: Icon(
                  Iconsax.user,
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
                  fontSize: 18,
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
                labelText: 'Password',
                labelStyle: TextStyle(
                  fontFamily: 'PoppinsSemiBold',
                  fontSize: 14,
                  color: GlobalColors.brown,
                ),
                hintText: 'Enter your password',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
                prefixIcon: Icon(
                  Iconsax.key,
                  color: GlobalColors.darkbrown,
                  size: 18,
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
          )


          // normalElevatedButton('Login', login, GlobalColors.darkblueColor,
          //      Colors.white, BorderRadius.circular(14)),
          // // normalElevatedButton('Login', login, GlobalColors.darkblueColor,
          // //     Colors.white, BorderRadius.circular(14)),
        ],
      ),
    );
  }

//   ElevatedButton normalElevatedButton(String buttonText,
//     Color backgroundColor, Color foregroundColor, BorderRadius borderRadius, Function onPressed) {
//   return ElevatedButton(
//     onPressed: onPressed,
//     style: ElevatedButton.styleFrom(
//       backgroundColor: backgroundColor, // background color
//       foregroundColor: foregroundColor, // text color
//       padding: const EdgeInsets.symmetric(
//           horizontal: 115, vertical: 20), // button padding
//       shape: RoundedRectangleBorder(
//         borderRadius: borderRadius, // button border radius
//       ),
//     ),
//     child: Text(
//       buttonText,
//       style: TextStyle(
//         fontSize: 14, 
//         fontFamily: 'PoppinsSemiBold',
//         color: Colors.white,
//       ),
//     ),
//   );
// }

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
