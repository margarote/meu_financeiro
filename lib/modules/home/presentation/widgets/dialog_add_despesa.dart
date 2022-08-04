import 'package:flutter/material.dart';

class DialogAddDespesaParams {
  final String nome;
  final double valor;

  DialogAddDespesaParams(this.nome, this.valor);
}

class DialogAddDespesa extends StatelessWidget {
  final Function(DialogAddDespesaParams) onChange;
  DialogAddDespesa({Key? key, required this.onChange}) : super(key: key);

  String _nome = "";
  double _valor = 0;

  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;
    return AlertDialog(
      title: const Center(
        child: Text("Adicionar Despesa"),
      ),
      content: SizedBox(
        width: fullWidth * .7,
        height: 240,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTextField(
              (text) {
                _nome = text;
              },
              "Nome",
            ),
            _buildTextField(
              (text) {
                _valor = double.parse(text);
              },
              "Valor",
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                if (_nome.isNotEmpty && _valor > 0) {
                  onChange(
                    DialogAddDespesaParams(
                      _nome,
                      _valor,
                    ),
                  );
                }
              },
              child: Container(
                width: 160,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: const Center(
                  child: Text(
                    "Adicionar",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
    Function(String) onChanged,
    String label,
  ) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
      ),
      onChanged: onChanged,
    );
  }
}
