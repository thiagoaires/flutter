class Car {
  int id;
  String tipo;
  String nome;
  String descricao;
  String urlFoto;
  String urlVideo;
  String latitude;
  String longitude;

  Car(
      {this.id,
      this.tipo,
      this.nome,
      this.descricao,
      this.urlFoto,
      this.urlVideo,
      this.latitude,
      this.longitude});

  Car.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tipo = json['tipo'];
    nome = json['nome'];
    descricao = json['descricao'];
    urlFoto = json['urlFoto'];
    urlVideo = json['urlVideo'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tipo'] = this.tipo;
    data['nome'] = this.nome;
    data['descricao'] = this.descricao;
    data['urlFoto'] = this.urlFoto;
    data['urlVideo'] = this.urlVideo;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}
