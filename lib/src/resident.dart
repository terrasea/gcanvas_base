part of gcanvas_base;

class Resident extends User {
  String occupation;
  String gender;
  String email;
  String phone;
  String notes;
  int response;
  int supportLevel;
  bool volunteer;
  bool hostABillboard;
  Address address;

  Resident(firstName, middleName, lastName, this.address,
      {this.occupation = '',
      this.gender = '',
      this.email = '',
      this.phone = '',
      this.notes = '',
      this.response = -1,
      this.supportLevel = -1,
      this.volunteer = false,
      this.hostABillboard = false})
      : super(firstName, middleName, lastName);
}
