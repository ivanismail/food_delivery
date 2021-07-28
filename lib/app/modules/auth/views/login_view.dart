import 'package:food_delivery/export.dart';
import 'package:food_delivery/widgets/foodbutton.dart';
import 'package:food_delivery/widgets/usetextfield.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: pageWrapper(),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacing(
                height: 20,
              ),
              UseTextField(
                label: 'Email',
                hint: 'Masukkan email',
              ),
              UseTextField(
                label: 'Password',
                hint: 'Masukkan password',
              ),
              Spacing(
                height: 20,
              ),
              FoodButton(
                borderRaduis: BorderRadius.circular(5),
                backgroundColor: Colors.blue,
                color: Colors.white,
                text: 'Login',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
