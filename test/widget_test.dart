import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:snow_login/screens/login_screen.dart';

void main(){

  // Check for Material app 
    testWidgets("material app testing ", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp());
      expect(find.byType(MaterialApp), findsOneWidget);
    });

// Test to enter email to email textFeild

      testWidgets("Email TextField test ", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: LoginScreen(),));

          // Find the TextField by its key
    final textField = find.byKey(const Key('email_text_field'));

    // Enter text into the TextField
    await tester.enterText(textField, 'nitin.rawat@mindruby.com');

    // Verify that the TextField now contains the entered text
    expect(find.text('nitin.rawat@mindruby.com'), findsOneWidget);
    
    });

// // Test to enter password to email textFiled 

      testWidgets("password TextField test ", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: LoginScreen(),));

          // Find the TextField by its key
    final textField = find.byKey(const Key('password_text_field'));

    // Enter text into the TextField
    await tester.enterText(textField, 'Mindruby@1234');

    // Verify that the TextField now contains the entered text
    expect(find.text('Mindruby@1234'), findsOneWidget);
    
    });

// Check for Login Button hits 
    testWidgets("Login button testing ", (WidgetTester tester) async {

      await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));
    await tester.tap(find.byKey(const Key('LoginTap')));
    await tester.pump();
    });

     
}