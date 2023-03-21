part of gcanvas_base;

class User {
  String username;
  String firstName;
  String middleName;
  String lastName;

  User(this.firstName, this.middleName, this.lastName, [this.username = '']) {
    if (username.trim().isEmpty) {
      var sb = StringBuffer();
      sb
        ..write(firstName)
        ..write('_')
        ..write(middleName)
        ..write('_')
        ..write(lastName);
      username = sb.toString();
    }
  }
}
