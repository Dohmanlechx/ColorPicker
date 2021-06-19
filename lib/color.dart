enum BaseColor { red, green, blue }

extension Extensions on BaseColor {
  String asFormattedString() {
    final name = this.toString().split('.')[1];
    return name[0].toUpperCase() + name.substring(1);
  }
}
