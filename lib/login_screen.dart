import 'package:activity_2/welcome_screen.dart';
import 'package:material_ui/material_ui.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
    void dispose() {
      // TODO: implement dispose
      usernameController.dispose();
      passwordController.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome!',
              style: TextStyle(
                  fontSize: 42.0,
                  fontFamily: 'Lora',
                  fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(height: 20.0,),

            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),

            SizedBox(height: 20.0,),

            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),

            SizedBox(height: 40.0,),

            SizedBox(
              height: 60.0,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  print("Username : ${usernameController.text}");
                  print("Password : ${passwordController.text}");

                  if(usernameController.text == "test" && passwordController.text == "123"){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => WelcomeScreen()
                    )
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[600],
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                child: const Text(
                  "OK",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}