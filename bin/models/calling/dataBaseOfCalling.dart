List<DataBaseOfCalling> dataBaseOfCalling = [];

class DataBaseOfCalling {
  String? name;
  late String phoneNumber;
  late int gaplashilganVaqt;
  late int _ketkazilganPul;
  late DateTime suhbatBoshlanganVaqt;
  late List<String> suhbat;

  DataBaseOfCalling(
    this.name,
    this.phoneNumber,
    this.gaplashilganVaqt,
    this._ketkazilganPul,
    this.suhbatBoshlanganVaqt,
    this.suhbat,
  );

  String toString() {
    return 'name: $name\nphone number: $phoneNumber\ngaplashilgan vaqti: '
        '$gaplashilganVaqt\nketkazilgan pul: $_ketkazilganPul\nsuhbat boshla'
        'ngan vaqt: $suhbatBoshlanganVaqt\n';
  }
}
