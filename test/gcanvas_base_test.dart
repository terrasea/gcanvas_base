import 'package:gcanvas_base/gcanvas_base.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });

  group('User', () {
      var firstname = 'James';
      var middlename = 'David';
      var lastname = 'Hurford';
      
      User user = User(
        firstname,
        middlename,
        lastname
      );

      test('firstName', () {
          expect(user.firstName, firstname);
      });

      test('middleName', () {
          expect(user.middleName, middlename);
      });

      test('lastName', () {
          expect(user.lastName, lastname);
      });

      test('username', () {
          expect(user.username, '${firstname}_${middlename}_$lastname');
      });
  });

  group('User with username set', () {
      var firstname = 'James';
      var middlename = 'David';
      var lastname = 'Hurford';
      var username = 'terrasea';
      
      var user = User(
        firstname,
        middlename,
        lastname,
        username
      );

      test('username', () {
          expect(user.username, username);
      });

  });

  group('Initial Resident', () {
      var addressLine1 = '53 Bignell Street';
      var addressLine2 = 'Gonville';
      var city = 'Whanganui';
      var postalCode = '5001';

      Address address = Address(addressLine1, addressLine2, city, postalCode);;
      
      var firstname = 'James';
      var middlename = 'David';
      var lastname = 'Hurford';
      Resident resident = Resident(
        firstname,
        middlename,
        lastname,
        address
      );
           
      setUp((){
      });
      
      test('firstName', () {
          expect(resident.firstName, firstname);
      });

      test('middleName', () {
          expect(resident.middleName, middlename);
      });

      test('lastName', () {
          expect(resident.lastName, lastname);
      });

      test('occupation is empty', () {
          expect(resident.occupation, isEmpty);
      });

      test('gender is empty', () {
          expect(resident.gender, isEmpty);
      });

      test('email is empty', () {
          expect(resident.email, isEmpty);
      });

      test('phone is empty', () {
          expect(resident.phone, isEmpty);
      });

      test('notes is empty', () {
          expect(resident.notes, isEmpty);
      });

      test('response is -1', () {
          expect(resident.response, -1);
      });

      test('supportLevel is -1', () {
          expect(resident.supportLevel, -1);
      });

      test('volunteer is false', () {
          expect(resident.volunteer, isFalse);
      });

      test('hostABillboard is false', () {
          expect(resident.hostABillboard, isFalse);
      });

      test('address', () {
          expect(resident.address.city, city);
      });
  });


  group('Address', () {
      var addressLine1 = '53 Bignell Street';
      var addressLine2 = 'Gonville';
      var city = 'Whanganui';
      var postalCode = '5001';
      var country = 'New Zealand';
      Address address = Address(addressLine1, addressLine2, city, postalCode);

      test('country is New Zealand by default', () {
          expect(address.country, country); 
      });

      test('addressLine1', () {
          expect(address.addressLine1, addressLine1);
      });

      test('addressLine2', () {
          expect(address.addressLine2, addressLine2);
      });

      test('city', () {
          expect(address.city, city);
      });

      test('postalCode', () {
          expect(address.postalCode, postalCode);
      });
  });
}
