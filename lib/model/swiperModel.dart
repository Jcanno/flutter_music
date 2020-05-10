class SwiperList {
  List<Banners> banners;

  SwiperList({this.banners});

  SwiperList.fromJson(Map<String, dynamic> json) {
    if (json['banners'] != null) {
      banners = new List<Banners>();
      json['banners'].forEach((v) {
        banners.add(new Banners.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.banners != null) {
      data['banners'] = this.banners.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Banners {
  String pic;
  int targetId;
  Null adid;
  int targetType;
  String titleColor;
  String typeTitle;
  String url;
  Null adurlV2;
  bool exclusive;
  Null monitorImpress;
  Null monitorClick;
  Null monitorType;
  Null monitorBlackList;
  Null extMonitor;
  Null extMonitorInfo;
  Null adSource;
  Null adLocation;
  String encodeId;
  Null event;
  Null dynamicVideoData;
  String bannerId;
  Null alg;
  String scm;
  String requestId;
  bool showAdTag;
  Null pid;
  Null showContext;
  Null adDispatchJson;

  Banners(
      {this.pic,
      this.targetId,
      this.adid,
      this.targetType,
      this.titleColor,
      this.typeTitle,
      this.url,
      this.adurlV2,
      this.exclusive,
      this.monitorImpress,
      this.monitorClick,
      this.monitorType,
      this.monitorBlackList,
      this.extMonitor,
      this.extMonitorInfo,
      this.adSource,
      this.adLocation,
      this.encodeId,
      this.event,
      this.dynamicVideoData,
      this.bannerId,
      this.alg,
      this.scm,
      this.requestId,
      this.showAdTag,
      this.pid,
      this.showContext,
      this.adDispatchJson});

  Banners.fromJson(Map<String, dynamic> json) {
    pic = json['pic'];
    targetId = json['targetId'];
    adid = json['adid'];
    targetType = json['targetType'];
    titleColor = json['titleColor'];
    typeTitle = json['typeTitle'];
    url = json['url'];
    adurlV2 = json['adurlV2'];
    exclusive = json['exclusive'];
    monitorImpress = json['monitorImpress'];
    monitorClick = json['monitorClick'];
    monitorType = json['monitorType'];
    monitorBlackList = json['monitorBlackList'];
    extMonitor = json['extMonitor'];
    extMonitorInfo = json['extMonitorInfo'];
    adSource = json['adSource'];
    adLocation = json['adLocation'];
    encodeId = json['encodeId'];
    event = json['event'];
    dynamicVideoData = json['dynamicVideoData'];
    bannerId = json['bannerId'];
    alg = json['alg'];
    scm = json['scm'];
    requestId = json['requestId'];
    showAdTag = json['showAdTag'];
    pid = json['pid'];
    showContext = json['showContext'];
    adDispatchJson = json['adDispatchJson'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pic'] = this.pic;
    data['targetId'] = this.targetId;
    data['adid'] = this.adid;
    data['targetType'] = this.targetType;
    data['titleColor'] = this.titleColor;
    data['typeTitle'] = this.typeTitle;
    data['url'] = this.url;
    data['adurlV2'] = this.adurlV2;
    data['exclusive'] = this.exclusive;
    data['monitorImpress'] = this.monitorImpress;
    data['monitorClick'] = this.monitorClick;
    data['monitorType'] = this.monitorType;
    data['monitorBlackList'] = this.monitorBlackList;
    data['extMonitor'] = this.extMonitor;
    data['extMonitorInfo'] = this.extMonitorInfo;
    data['adSource'] = this.adSource;
    data['adLocation'] = this.adLocation;
    data['encodeId'] = this.encodeId;
    data['event'] = this.event;
    data['dynamicVideoData'] = this.dynamicVideoData;
    data['bannerId'] = this.bannerId;
    data['alg'] = this.alg;
    data['scm'] = this.scm;
    data['requestId'] = this.requestId;
    data['showAdTag'] = this.showAdTag;
    data['pid'] = this.pid;
    data['showContext'] = this.showContext;
    data['adDispatchJson'] = this.adDispatchJson;
    return data;
  }
}
