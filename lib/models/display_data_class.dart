// To parse this JSON data, do
//
//     final displayData = displayDataFromJson(jsonString);

import 'dart:convert';

List<DisplayData> displayDataFromJson(String str) => List<DisplayData>.from(json.decode(str).map((x) => DisplayData.fromJson(x)));

String displayDataToJson(List<DisplayData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DisplayData {
  DisplayData({
    this.cn,
    this.pcn,
    this.iv,
    this.ct,
    this.p,
  });

  String cn;
  String pcn;
  bool iv;
  String ct;
  P p;

  factory DisplayData.fromJson(Map<String, dynamic> json) => DisplayData(
    cn: json["cn"],
    pcn: json["pcn"] == null ? null : json["pcn"],
    iv: json["iv"],
    ct: json["ct"],
    p: P.fromJson(json["p"]),
  );

  Map<String, dynamic> toJson() => {
    "cn": cn,
    "pcn": pcn == null ? null : pcn,
    "iv": iv,
    "ct": ct,
    "p": p.toJson(),
  };
}

class P {
  P({
    this.displayText,
    this.fontAwesome,
    this.url,
    this.iconClass,
    this.editController,
    this.templateUrl,
    this.dashboardWidgets,
  });

  String displayText;
  String fontAwesome;
  String url;
  String iconClass;
  String editController;
  String templateUrl;
  String dashboardWidgets;

  factory P.fromJson(Map<String, dynamic> json) => P(
    displayText: json["DisplayText"] == null ? null : json["DisplayText"],
    fontAwesome: json["FontAwesome"] == null ? null : json["FontAwesome"],
    url: json["URL"] == null ? null : json["URL"],
    iconClass: json["IconClass"] == null ? null : json["IconClass"],
    editController: json["EditController"] == null ? null : json["EditController"],
    templateUrl: json["TemplateURL"] == null ? null : json["TemplateURL"],
    dashboardWidgets: json["DashboardWidgets"] == null ? null : json["DashboardWidgets"],
  );

  Map<String, dynamic> toJson() => {
    "DisplayText": displayText == null ? null : displayText,
    "FontAwesome": fontAwesome == null ? null : fontAwesome,
    "URL": url == null ? null : url,
    "IconClass": iconClass == null ? null : iconClass,
    "EditController": editController == null ? null : editController,
    "TemplateURL": templateUrl == null ? null : templateUrl,
    "DashboardWidgets": dashboardWidgets == null ? null : dashboardWidgets,
  };
}
