class Produto{
  final String _nome;
  final int _qtde;
  final double _valor;

  Produto(this._nome, this._qtde, this._valor);

  @override
  String toString() {

    return "Produto{Nome: $_nome, Quantidade: $_qtde, Valor: $_valor}";
  }
}