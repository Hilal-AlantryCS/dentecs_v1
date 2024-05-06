class PatientsModel {
  int? id;
  String? slug;
  String? firstName;
  String? middleName;
  String? lastName;
  String? birthDate;
  bool? gender;
  String? contactsPhone;
  String? contactsMobile;
  String? financialBalance;
  bool? disabled;
  String? dateCreated;

  PatientsModel(
      {this.id,
      this.slug,
      this.firstName,
      this.middleName,
      this.lastName,
      this.birthDate,
      this.gender,
      this.contactsPhone,
      this.contactsMobile,
      this.financialBalance,
      this.disabled,
      this.dateCreated});

  PatientsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    firstName = json['first_name'];
    middleName = json['middle_name'];
    lastName = json['last_name'];
    birthDate = json['birth_date'];
    gender = json['gender'];
    contactsPhone = json['contacts_phone'];
    contactsMobile = json['contacts_mobile'];
    financialBalance = json['financial_balance'];
    disabled = json['disabled'];
    dateCreated = json['date_created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['first_name'] = this.firstName;
    data['middle_name'] = this.middleName;
    data['last_name'] = this.lastName;
    data['birth_date'] = this.birthDate;
    data['gender'] = this.gender;
    data['contacts_phone'] = this.contactsPhone;
    data['contacts_mobile'] = this.contactsMobile;
    data['financial_balance'] = this.financialBalance;
    data['disabled'] = this.disabled;
    data['date_created'] = this.dateCreated;
    return data;
  }
}
