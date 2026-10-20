# SEC Filings API

SEC Filings returns the recent EDGAR filing history for a US public company by ticker - 10-K annual reports, 10-Q quarterlies, 8-K current reports, Form 4 insider filings, S-1 registrations and more - each with its filing date, form type and a direct link to the document, plus derived filing-activity analytics calculated for you.

[![npm version](https://img.shields.io/npm/v/@apiverve/secfilings.svg)](https://www.npmjs.com/package/@apiverve/secfilings)

This is a JavaScript wrapper for the [SEC Filings API](https://apiverve.com/marketplace/secfilings?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/secfilings
```

Using yarn:
```shell
yarn add @apiverve/secfilings
```

---

## Configuration

Before using the SEC Filings API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The SEC Filings API documentation is found here: [https://docs.apiverve.com/ref/secfilings](https://docs.apiverve.com/ref/secfilings?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const secfilingsAPI = require('@apiverve/secfilings');
const api = new secfilingsAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  ticker: "AAPL",
  form: "10-K",
  limit: 10
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  ticker: "AAPL",
  form: "10-K",
  limit: 10
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  ticker: "AAPL",
  form: "10-K",
  limit: 10
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "ticker": "AAPL",
    "cik": "0000320193",
    "company": "Apple Inc.",
    "sic": "3571",
    "sicDescription": "Electronic Computers",
    "fiscalYearEnd": "0926",
    "totalRecentFilings": 1000,
    "count": 5,
    "latest": {
      "annual": {
        "form": "10-K",
        "filingDate": "2025-10-31",
        "accessionNumber": "0000320193-25-000079",
        "primaryDocument": "aapl-20250927.htm",
        "url": "https://www.sec.gov/Archives/edgar/data/320193/000032019325000079/aapl-20250927.htm",
        "daysAgo": 321
      },
      "quarterly": {
        "form": "10-Q",
        "filingDate": "2026-07-31",
        "accessionNumber": "0000320193-26-000020",
        "primaryDocument": "aapl-20260627.htm",
        "url": "https://www.sec.gov/Archives/edgar/data/320193/000032019326000020/aapl-20260627.htm",
        "daysAgo": 48
      },
      "currentReport": {
        "form": "8-K",
        "filingDate": "2026-07-30",
        "accessionNumber": "0000320193-26-000018",
        "primaryDocument": "aapl-20260730.htm",
        "url": "https://www.sec.gov/Archives/edgar/data/320193/000032019326000018/aapl-20260730.htm",
        "daysAgo": 49
      }
    },
    "filings": [
      {
        "form": "4",
        "filingDate": "2026-09-10",
        "reportDate": "2026-09-08",
        "primaryDocDescription": "FORM 4",
        "accessionNumber": "0001140361-26-036226",
        "primaryDocument": "xslF345X06/form4.xml",
        "url": "https://www.sec.gov/Archives/edgar/data/320193/000114036126036226/xslF345X06/form4.xml",
        "items": null,
        "isXBRL": false
      },
      {
        "form": "4",
        "filingDate": "2026-09-03",
        "reportDate": "2026-09-01",
        "primaryDocDescription": "FORM 4",
        "accessionNumber": "0001140361-26-035636",
        "primaryDocument": "xslF345X06/form4.xml",
        "url": "https://www.sec.gov/Archives/edgar/data/320193/000114036126035636/xslF345X06/form4.xml",
        "items": null,
        "isXBRL": false
      },
      {
        "form": "4",
        "filingDate": "2026-09-01",
        "reportDate": "2026-09-01",
        "primaryDocDescription": "FORM 4",
        "accessionNumber": "0001140361-26-035362",
        "primaryDocument": "xslF345X06/form4.xml",
        "url": "https://www.sec.gov/Archives/edgar/data/320193/000114036126035362/xslF345X06/form4.xml",
        "items": null,
        "isXBRL": false
      },
      {
        "form": "3",
        "filingDate": "2026-09-01",
        "reportDate": "2026-09-01",
        "primaryDocDescription": "FORM 3",
        "accessionNumber": "0001140361-26-035359",
        "primaryDocument": "xslF345X06/form3.xml",
        "url": "https://www.sec.gov/Archives/edgar/data/320193/000114036126035359/xslF345X06/form3.xml",
        "items": null,
        "isXBRL": false
      },
      {
        "form": "8-K/A",
        "filingDate": "2026-09-01",
        "reportDate": "2026-04-17",
        "primaryDocDescription": "8-K/A",
        "accessionNumber": "0001140361-26-035325",
        "primaryDocument": "ef20081427_8ka.htm",
        "url": "https://www.sec.gov/Archives/edgar/data/320193/000114036126035325/ef20081427_8ka.htm",
        "items": "5.02",
        "isXBRL": true
      }
    ],
    "analytics": {
      "formCounts": {
        "4": 590,
        "144": 45,
        "8-K": 103,
        "424B2": 46,
        "10-Q": 33,
        "PX14A6G": 27
      },
      "filingsLast30Days": 7,
      "filingsLast90Days": 11,
      "filingsLast365Days": 50,
      "daysSinceLastFiling": 7,
      "daysSinceLastAnnual": 321,
      "daysSinceLastQuarterly": 48,
      "averageDaysBetweenFilings": 4.5,
      "mostActiveForm": "4"
    }
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
