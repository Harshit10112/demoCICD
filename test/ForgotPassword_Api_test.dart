import 'package:flutter_test/flutter_test.dart';
import 'package:snow_login/DataManger/Repo.dart';

void main(){
  
  test("ForgotPassword", ()  async {
    bool success = false;
    var fetch = (await  Repo.forgotApi()).success;
    if (fetch != null) {
      success = true;
    }
    expect(success, true);   
  });
}