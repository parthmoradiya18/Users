class Model_Users {
  List<Users>? users;
  int? total;
  int? skip;
  int? limit;

  Model_Users({this.users, this.total, this.skip, this.limit});

  Model_Users.fromJson(Map<String, dynamic> json) {
    if (json['users'] != null) {
      users = <Users>[];
      json['users'].forEach((v) {
        users!.add(new Users.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.users != null) {
      data['users'] = this.users!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['skip'] = this.skip;
    data['limit'] = this.limit;
    return data;
  }
}

class Users {
  int? id;
  String? firstName;
  String? lastName;
  String? maidenName;
  int? age;
  String? gender;
  String? email;
  String? phone;
  String? username;
  String? password;
  String? birthDate;
  String? image;
  String? bloodGroup;
  int? height;
  double? weight;
  String? eyeColor;
  Hair? hair;
  String? domain;
  String? ip;
  Address? address;
  String? macAddress;
  String? university;
  Bank? bank;
  Company? company;
  String? ein;
  String? ssn;
  String? userAgent;
  Crypto? crypto;

  Users(
      {this.id,
        this.firstName,
        this.lastName,
        this.maidenName,
        this.age,
        this.gender,
        this.email,
        this.phone,
        this.username,
        this.password,
        this.birthDate,
        this.image,
        this.bloodGroup,
        this.height,
        this.weight,
        this.eyeColor,
        this.hair,
        this.domain,
        this.ip,
        this.address,
        this.macAddress,
        this.university,
        this.bank,
        this.company,
        this.ein,
        this.ssn,
        this.userAgent,
        this.crypto});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    maidenName = json['maidenName'];
    age = json['age'];
    gender = json['gender'];
    email = json['email'];
    phone = json['phone'];
    username = json['username'];
    password = json['password'];
    birthDate = json['birthDate'];
    image = json['image'];
    bloodGroup = json['bloodGroup'];
    height = json['height'];
    weight = json['weight'];
    eyeColor = json['eyeColor'];
    hair = json['hair'] != null ? new Hair.fromJson(json['hair']) : null;
    domain = json['domain'];
    ip = json['ip'];
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : null;
    macAddress = json['macAddress'];
    university = json['university'];
    bank = json['bank'] != null ? new Bank.fromJson(json['bank']) : null;
    company =
    json['company'] != null ? new Company.fromJson(json['company']) : null;
    ein = json['ein'];
    ssn = json['ssn'];
    userAgent = json['userAgent'];
    crypto =
    json['crypto'] != null ? new Crypto.fromJson(json['crypto']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['maidenName'] = this.maidenName;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['username'] = this.username;
    data['password'] = this.password;
    data['birthDate'] = this.birthDate;
    data['image'] = this.image;
    data['bloodGroup'] = this.bloodGroup;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['eyeColor'] = this.eyeColor;
    if (this.hair != null) {
      data['hair'] = this.hair!.toJson();
    }
    data['domain'] = this.domain;
    data['ip'] = this.ip;
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    data['macAddress'] = this.macAddress;
    data['university'] = this.university;
    if (this.bank != null) {
      data['bank'] = this.bank!.toJson();
    }
    if (this.company != null) {
      data['company'] = this.company!.toJson();
    }
    data['ein'] = this.ein;
    data['ssn'] = this.ssn;
    data['userAgent'] = this.userAgent;
    if (this.crypto != null) {
      data['crypto'] = this.crypto!.toJson();
    }
    return data;
  }
}

class Hair {
  String? color;
  String? type;

  Hair({this.color, this.type});

  Hair.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['color'] = this.color;
    data['type'] = this.type;
    return data;
  }
}

class Address {
  String? address;
  String? city;
  Coordinates? coordinates;
  String? postalCode;
  String? state;

  Address(
      {this.address, this.city, this.coordinates, this.postalCode, this.state});

  Address.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    coordinates = json['coordinates'] != null
        ? new Coordinates.fromJson(json['coordinates'])
        : null;
    postalCode = json['postalCode'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['city'] = this.city;
    if (this.coordinates != null) {
      data['coordinates'] = this.coordinates!.toJson();
    }
    data['postalCode'] = this.postalCode;
    data['state'] = this.state;
    return data;
  }
}

class Coordinates {
  double? lat;
  double? lng;

  Coordinates({this.lat, this.lng});

  Coordinates.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    return data;
  }
}

class Bank {
  String? cardExpire;
  String? cardNumber;
  String? cardType;
  String? currency;
  String? iban;

  Bank(
      {this.cardExpire,
        this.cardNumber,
        this.cardType,
        this.currency,
        this.iban});

  Bank.fromJson(Map<String, dynamic> json) {
    cardExpire = json['cardExpire'];
    cardNumber = json['cardNumber'];
    cardType = json['cardType'];
    currency = json['currency'];
    iban = json['iban'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cardExpire'] = this.cardExpire;
    data['cardNumber'] = this.cardNumber;
    data['cardType'] = this.cardType;
    data['currency'] = this.currency;
    data['iban'] = this.iban;
    return data;
  }
}

class Company {
  Address? address;
  String? department;
  String? name;
  String? title;

  Company({this.address, this.department, this.name, this.title});

  Company.fromJson(Map<String, dynamic> json) {
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : null;
    department = json['department'];
    name = json['name'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    data['department'] = this.department;
    data['name'] = this.name;
    data['title'] = this.title;
    return data;
  }
}

class Crypto {
  String? coin;
  String? wallet;
  String? network;

  Crypto({this.coin, this.wallet, this.network});

  Crypto.fromJson(Map<String, dynamic> json) {
    coin = json['coin'];
    wallet = json['wallet'];
    network = json['network'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['coin'] = this.coin;
    data['wallet'] = this.wallet;
    data['network'] = this.network;
    return data;
  }
}