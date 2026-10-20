declare module '@apiverve/secfilings' {
  export interface secfilingsOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface secfilingsResponse {
    status: string;
    error: string | null;
    data: SECFilingsData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface SECFilingsData {
      ticker:             null | string;
      cik:                null | string;
      company:            null | string;
      sic:                null | string;
      sicDescription:     null | string;
      fiscalYearEnd:      null | string;
      totalRecentFilings: number | null;
      count:              number | null;
      latest:             Latest;
      filings:            Filing[];
      analytics:          Analytics;
  }
  
  interface Analytics {
      formCounts:                { [key: string]: number | null };
      filingsLast30Days:         number | null;
      filingsLast90Days:         number | null;
      filingsLast365Days:        number | null;
      daysSinceLastFiling:       number | null;
      daysSinceLastAnnual:       number | null;
      daysSinceLastQuarterly:    number | null;
      averageDaysBetweenFilings: number | null;
      mostActiveForm:            null | string;
  }
  
  interface Filing {
      form:                  null | string;
      filingDate:            Date | null;
      reportDate:            Date | null;
      primaryDocDescription: null | string;
      accessionNumber:       null | string;
      primaryDocument:       null | string;
      url:                   null | string;
      items:                 null | string;
      isXBRL:                boolean | null;
  }
  
  interface Latest {
      annual:        Annual;
      quarterly:     Annual;
      currentReport: Annual;
  }
  
  interface Annual {
      form:            null | string;
      filingDate:      Date | null;
      accessionNumber: null | string;
      primaryDocument: null | string;
      url:             null | string;
      daysAgo:         number | null;
  }

  export default class secfilingsWrapper {
    constructor(options: secfilingsOptions);

    execute(callback: (error: any, data: secfilingsResponse | null) => void): Promise<secfilingsResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: secfilingsResponse | null) => void): Promise<secfilingsResponse>;
    execute(query?: Record<string, any>): Promise<secfilingsResponse>;
  }
}
