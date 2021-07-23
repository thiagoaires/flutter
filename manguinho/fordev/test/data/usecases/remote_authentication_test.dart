import 'package:faker/faker.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'package:fordev/data/http/http.dart';
import 'package:fordev/data/usecases/usecases.dart';
import 'package:fordev/domain/usecases/usecases.dart';

class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  HttpClient httpClient;
  RemoteAuthentication sut;
  String url;

  //arrange
  setUp(() {
    httpClient = HttpClientSpy();
    url = faker.internet.httpUrl();
    sut = RemoteAuthentication(httpClient: httpClient, url: url);
  });

  test('Should call http client with correct values', () async {
    //act
    final params = AuthenticationParams(
      email: faker.internet.email(),
      secret: faker.internet.password(),
    );
    sut.auth(params);

    //assert
    verify(
      httpClient.request(
        url: url,
        method: 'post',
        body: params.toJson(),
      ),
    );
  });
}
