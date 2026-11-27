import 'package:material_ui/material_ui.dart';

class WelcomeScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('images/hello.jpeg'),

          SizedBox(height: 20.0,),

          Text('Welcome',
            style: TextStyle(
                fontSize: 42.0,
                fontFamily: 'Lora',
                fontWeight: FontWeight.bold
            ),
          ),

          Text('Join with us & Enjoy Healthy Life',
            style: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Lora',
            ),
          ),

          SizedBox(height: 20.0,),

          ElevatedButton(
            onPressed: () {
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
          )
        ],
      ),
    );
  }
}
