List<DataBaseOfContact> dataBaseOfContact = [];

class DataBaseOfContact {
  late String nname;
  late String pphoneNumber;

  DataBaseOfContact({required String name, required String phoneNumber}) {
    nameInc = name;
    phoneNumberInc = phoneNumber;
  }

  set nameInc(String name) {
    if (name.isNotEmpty &&
        name[0] == name[0].toUpperCase() &&
        isValidName(name: name)) {
      nname = name;
    } else {
      throw 'name';
    }
  }

  set phoneNumberInc(String phoneNumber) {
    if (phoneNumber.isNotEmpty &&
        int.tryParse(phoneNumber.substring(1)) is int &&
        phoneNumber.startsWith('+') &&
        isValidPhoneNumber(tel: phoneNumber)) {
      pphoneNumber = phoneNumber;
    } else {
      throw 'tel';
    }
  }

  @override
  bool operator ==(Object other) {
    return other is DataBaseOfContact && nname == other.nname;
  }

  String toString() {
    return 'name: $nname\nphone number: $pphoneNumber';
  }

  @override
  int get hashCode => nname.hashCode;
}

bool isValidName({required String name}) {
  for (int i = 0; i < dataBaseOfContact.length; i++) {
    if (dataBaseOfContact[i].nname == name) {
      return false;
    }
  }
  return true;
}

bool isValidPhoneNumber({required String tel}) {
  for (int i = 0; i < dataBaseOfContact.length; i++) {
    if (dataBaseOfContact[i].pphoneNumber == tel) {
      return false;
    }
  }
  return true;
}

// bool
