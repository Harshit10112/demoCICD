

import 'package:flutter_test/flutter_test.dart';
import 'package:snow_login/DataManger/Repo.dart';


void main(){
  
  test("Fetch Login Api", ()  async {
    bool value = false;
    var fetch = (await  Repo.getData()).isValid;
    if (fetch != null) {
      value = false;
    }
    expect(value, true);   
  });
}