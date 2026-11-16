/// Response models for the SEC Filings API.

/// API Response wrapper.
class SecfilingsResponse {
  final String status;
  final dynamic error;
  final SecfilingsData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  SecfilingsResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory SecfilingsResponse.fromJson(Map<String, dynamic> json) => SecfilingsResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? SecfilingsData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the SEC Filings API.

class SecfilingsData {
  String? ticker;
  String? cik;
  String? company;
  String? sic;
  String? sicDescription;
  String? fiscalYearEnd;
  num? totalRecentFilings;
  num? count;
  SecfilingsDataLatest? latest;
  List<SecfilingsDataFilingsItem>? filings;
  SecfilingsDataAnalytics? analytics;

  SecfilingsData({
    this.ticker,
    this.cik,
    this.company,
    this.sic,
    this.sicDescription,
    this.fiscalYearEnd,
    this.totalRecentFilings,
    this.count,
    this.latest,
    this.filings,
    this.analytics,
  });

  factory SecfilingsData.fromJson(Map<String, dynamic> json) => SecfilingsData(
      ticker: json['ticker'],
      cik: json['cik'],
      company: json['company'],
      sic: json['sic'],
      sicDescription: json['sicDescription'],
      fiscalYearEnd: json['fiscalYearEnd'],
      totalRecentFilings: json['totalRecentFilings'],
      count: json['count'],
      latest: json['latest'] != null ? SecfilingsDataLatest.fromJson(json['latest']) : null,
      filings: (json['filings'] as List?)?.map((e) => SecfilingsDataFilingsItem.fromJson(e)).toList(),
      analytics: json['analytics'] != null ? SecfilingsDataAnalytics.fromJson(json['analytics']) : null,
    );
}

class SecfilingsDataLatest {
  SecfilingsDataLatestAnnual? annual;
  SecfilingsDataLatestQuarterly? quarterly;
  SecfilingsDataLatestCurrentreport? currentReport;

  SecfilingsDataLatest({
    this.annual,
    this.quarterly,
    this.currentReport,
  });

  factory SecfilingsDataLatest.fromJson(Map<String, dynamic> json) => SecfilingsDataLatest(
      annual: json['annual'] != null ? SecfilingsDataLatestAnnual.fromJson(json['annual']) : null,
      quarterly: json['quarterly'] != null ? SecfilingsDataLatestQuarterly.fromJson(json['quarterly']) : null,
      currentReport: json['currentReport'] != null ? SecfilingsDataLatestCurrentreport.fromJson(json['currentReport']) : null,
    );
}

class SecfilingsDataLatestAnnual {
  String? form;
  String? filingDate;
  String? accessionNumber;
  String? primaryDocument;
  String? url;
  num? daysAgo;

  SecfilingsDataLatestAnnual({
    this.form,
    this.filingDate,
    this.accessionNumber,
    this.primaryDocument,
    this.url,
    this.daysAgo,
  });

  factory SecfilingsDataLatestAnnual.fromJson(Map<String, dynamic> json) => SecfilingsDataLatestAnnual(
      form: json['form'],
      filingDate: json['filingDate'],
      accessionNumber: json['accessionNumber'],
      primaryDocument: json['primaryDocument'],
      url: json['url'],
      daysAgo: json['daysAgo'],
    );
}

class SecfilingsDataLatestQuarterly {
  String? form;
  String? filingDate;
  String? accessionNumber;
  String? primaryDocument;
  String? url;
  num? daysAgo;

  SecfilingsDataLatestQuarterly({
    this.form,
    this.filingDate,
    this.accessionNumber,
    this.primaryDocument,
    this.url,
    this.daysAgo,
  });

  factory SecfilingsDataLatestQuarterly.fromJson(Map<String, dynamic> json) => SecfilingsDataLatestQuarterly(
      form: json['form'],
      filingDate: json['filingDate'],
      accessionNumber: json['accessionNumber'],
      primaryDocument: json['primaryDocument'],
      url: json['url'],
      daysAgo: json['daysAgo'],
    );
}

class SecfilingsDataLatestCurrentreport {
  String? form;
  String? filingDate;
  String? accessionNumber;
  String? primaryDocument;
  String? url;
  num? daysAgo;

  SecfilingsDataLatestCurrentreport({
    this.form,
    this.filingDate,
    this.accessionNumber,
    this.primaryDocument,
    this.url,
    this.daysAgo,
  });

  factory SecfilingsDataLatestCurrentreport.fromJson(Map<String, dynamic> json) => SecfilingsDataLatestCurrentreport(
      form: json['form'],
      filingDate: json['filingDate'],
      accessionNumber: json['accessionNumber'],
      primaryDocument: json['primaryDocument'],
      url: json['url'],
      daysAgo: json['daysAgo'],
    );
}

class SecfilingsDataFilingsItem {
  String? form;
  String? filingDate;
  String? reportDate;
  String? primaryDocDescription;
  String? accessionNumber;
  String? primaryDocument;
  String? url;
  dynamic items;
  bool? isXBRL;

  SecfilingsDataFilingsItem({
    this.form,
    this.filingDate,
    this.reportDate,
    this.primaryDocDescription,
    this.accessionNumber,
    this.primaryDocument,
    this.url,
    this.items,
    this.isXBRL,
  });

  factory SecfilingsDataFilingsItem.fromJson(Map<String, dynamic> json) => SecfilingsDataFilingsItem(
      form: json['form'],
      filingDate: json['filingDate'],
      reportDate: json['reportDate'],
      primaryDocDescription: json['primaryDocDescription'],
      accessionNumber: json['accessionNumber'],
      primaryDocument: json['primaryDocument'],
      url: json['url'],
      items: json['items'],
      isXBRL: json['isXBRL'],
    );
}

class SecfilingsDataAnalytics {
  SecfilingsDataAnalyticsFormcounts? formCounts;
  num? filingsLast30Days;
  num? filingsLast90Days;
  num? filingsLast365Days;
  num? daysSinceLastFiling;
  num? daysSinceLastAnnual;
  num? daysSinceLastQuarterly;
  num? averageDaysBetweenFilings;
  String? mostActiveForm;

  SecfilingsDataAnalytics({
    this.formCounts,
    this.filingsLast30Days,
    this.filingsLast90Days,
    this.filingsLast365Days,
    this.daysSinceLastFiling,
    this.daysSinceLastAnnual,
    this.daysSinceLastQuarterly,
    this.averageDaysBetweenFilings,
    this.mostActiveForm,
  });

  factory SecfilingsDataAnalytics.fromJson(Map<String, dynamic> json) => SecfilingsDataAnalytics(
      formCounts: json['formCounts'] != null ? SecfilingsDataAnalyticsFormcounts.fromJson(json['formCounts']) : null,
      filingsLast30Days: json['filingsLast30Days'],
      filingsLast90Days: json['filingsLast90Days'],
      filingsLast365Days: json['filingsLast365Days'],
      daysSinceLastFiling: json['daysSinceLastFiling'],
      daysSinceLastAnnual: json['daysSinceLastAnnual'],
      daysSinceLastQuarterly: json['daysSinceLastQuarterly'],
      averageDaysBetweenFilings: json['averageDaysBetweenFilings'],
      mostActiveForm: json['mostActiveForm'],
    );
}

class SecfilingsDataAnalyticsFormcounts {
  num? 4;
  num? 144;
  num? 8-K;
  num? 424B2;
  num? 10-Q;
  num? PX14A6G;

  SecfilingsDataAnalyticsFormcounts({
    this.4,
    this.144,
    this.8-K,
    this.424B2,
    this.10-Q,
    this.PX14A6G,
  });

  factory SecfilingsDataAnalyticsFormcounts.fromJson(Map<String, dynamic> json) => SecfilingsDataAnalyticsFormcounts(
      4: json['4'],
      144: json['144'],
      8-K: json['8-K'],
      424B2: json['424B2'],
      10-Q: json['10-Q'],
      PX14A6G: json['PX14A6G'],
    );
}

class SecfilingsRequest {
  String ticker;
  String? form;
  int? limit;

  SecfilingsRequest({
    required this.ticker,
    this.form,
    this.limit,
  });

  Map<String, dynamic> toJson() => {
      'ticker': ticker,
      if (form != null) 'form': form,
      if (limit != null) 'limit': limit,
    };
}
