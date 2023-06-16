import 'package:cooper_agro/screen/LoginPage.dart';
import 'package:flutter/material.dart';

class AccessRecoverPage extends StatelessWidget {
  final String email;
  final TextEditingController emailController;

  AccessRecoverPage({required this.email})
      : emailController = TextEditingController(text: email);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/logo.png', height: 80.0),
                const SizedBox(height: 16.0),
                const Text(
                  'Recupere seu acesso',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Enviamos um link de acesso ao seu e-mail com instruções para você redefinir seu acesso. Esse link foi enviado para seu e-mail informado anteriormente.',
                  style: TextStyle(fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Caso não tenha recebido o e-mail, cheque sua caixa de spam.',
                  style: TextStyle(fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32.0),
                ElevatedButton(
                  style: ButtonStyle(
                    fixedSize:
                        MaterialStateProperty.all(const Size(230.0, 54.0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Voltar para a tela de login com o campo de e-mail preenchido
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(
                          email: emailController.text,
                        ),
                      ),
                    );
                  },
                  child: Text('Entrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
