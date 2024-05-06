class BOOK {
  int? id;
  String? slug;
  String? date;
  String? startTime;
  String? endTime;
  bool? disabled;
  bool? confirmed;
  int? patient;
  int? service;
  int? doctor;

  BOOK(
      {this.id,
      this.slug,
      this.date,
      this.startTime,
      this.endTime,
      this.disabled,
      this.confirmed,
      this.patient,
      this.service,
      this.doctor});

  BOOK.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    date = json['date'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    disabled = json['disabled'];
    confirmed = json['confirmed'];
    patient = json['patient'];
    service = json['service'];
    doctor = json['doctor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['date'] = this.date;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['disabled'] = this.disabled;
    data['confirmed'] = this.confirmed;
    data['patient'] = this.patient;
    data['service'] = this.service;
    data['doctor'] = this.doctor;
    return data;
  }
}
