// To parse this JSON data, do
//
//     final assignmentData = assignmentDataFromJson(jsonString);

import 'dart:convert';

AssignmentData assignmentDataFromJson(String str) => AssignmentData.fromJson(json.decode(str));

String assignmentDataToJson(AssignmentData data) => json.encode(data.toJson());

class AssignmentData {
  AssignmentData({
    this.records,
    this.total,
    this.currentTotal,
    this.filter,
    this.sort,
    this.pageSize,
    this.pageNumber,
  });

  List<Record> records;
  int total;
  int currentTotal;
  String filter;
  String sort;
  int pageSize;
  int pageNumber;

  factory AssignmentData.fromJson(Map<String, dynamic> json) => AssignmentData(
    records: List<Record>.from(json["Records"].map((x) => Record.fromJson(x))),
    total: json["Total"],
    currentTotal: json["CurrentTotal"],
    filter: json["Filter"],
    sort: json["Sort"],
    pageSize: json["PageSize"],
    pageNumber: json["PageNumber"],
  );

  Map<String, dynamic> toJson() => {
    "Records": List<dynamic>.from(records.map((x) => x.toJson())),
    "Total": total,
    "CurrentTotal": currentTotal,
    "Filter": filter,
    "Sort": sort,
    "PageSize": pageSize,
    "PageNumber": pageNumber,
  };
}

class Record {
  Record({
    this.assignmentId,
    this.dated,
    this.lastDateOfSubmission,
    this.subject,
    this.title,
    this.description,
    this.externalLink,
    this.fguid,
    this.postedBy,
    this.postedByIguid,
    this.submittedOn,
    this.studentFguid,
    this.studentReply,
    this.teacherReply,
  });

  int assignmentId;
  DateTime dated;
  DateTime lastDateOfSubmission;
  String subject;
  String title;
  String description;
  String externalLink;
  String fguid;
  String postedBy;
  String postedByIguid;
  DateTime submittedOn;
  String studentFguid;
  String studentReply;
  dynamic teacherReply;

  factory Record.fromJson(Map<String, dynamic> json) => Record(
    assignmentId: json["AssignmentId"],
    dated: DateTime.parse(json["Dated"]),
    lastDateOfSubmission: DateTime.parse(json["LastDateOfSubmission"]),
    subject: json["Subject"],
    title: json["Title"],
    description: json["Description"] == null ? null : json["Description"],
    externalLink: json["ExternalLink"] == null ? null : json["ExternalLink"],
    fguid: json["FGUID"] == null ? null : json["FGUID"],
    postedBy: json["PostedBy"],
    postedByIguid: json["PostedByIGUID"] == null ? null : json["PostedByIGUID"],
    submittedOn: json["SubmittedOn"] == null ? null : DateTime.parse(json["SubmittedOn"]),
    studentFguid: json["StudentFGUID"] == null ? null : json["StudentFGUID"],
    studentReply: json["StudentReply"] == null ? null : json["StudentReply"],
    teacherReply: json["TeacherReply"],
  );

  Map<String, dynamic> toJson() => {
    "AssignmentId": assignmentId,
    "Dated": dated.toIso8601String(),
    "LastDateOfSubmission": lastDateOfSubmission.toIso8601String(),
    "Subject": subject,
    "Title": title,
    "Description": description == null ? null : description,
    "ExternalLink": externalLink == null ? null : externalLink,
    "FGUID": fguid == null ? null : fguid,
    "PostedBy": postedBy,
    "PostedByIGUID": postedByIguid == null ? null : postedByIguid,
    "SubmittedOn": submittedOn == null ? null : submittedOn.toIso8601String(),
    "StudentFGUID": studentFguid == null ? null : studentFguid,
    "StudentReply": studentReply == null ? null : studentReply,
    "TeacherReply": teacherReply,
  };
}
