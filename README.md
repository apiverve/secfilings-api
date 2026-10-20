# [SEC Filings API](https://apiverve.com/marketplace/secfilings?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

SEC Filings returns the recent EDGAR filing history for a US public company by ticker - 10-K annual reports, 10-Q quarterlies, 8-K current reports, Form 4 insider filings, S-1 registrations and more - each with its filing date, form type and a direct link to the document, plus derived filing-activity analytics calculated for you.

The SEC Filings API provides a simple, reliable way to integrate sec filings functionality into your applications. Built for developers who need production-ready sec filings capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/secfilings?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/secfilings?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/secfilings)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.SECFilings)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-secfilings/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_secfilings)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/secfilings)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_secfilings)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callSECFilingsAPI() {
    try {
        const params = new URLSearchParams({
            ticker: 'AAPL'
        });

        const response = await fetch(`https://api.apiverve.com/v1/secfilings?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callSECFilingsAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/secfilings?ticker=AAPL" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/secfilings
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/secfilings) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.SECFilings
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.SECFilings) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-secfilings
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-secfilings/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_secfilings
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_secfilings) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/secfilings
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/secfilings) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_secfilings
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_secfilings) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:secfilings-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/secfilings-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [SEC Filings API](https://apiverve.com/marketplace/secfilings?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/secfilings](https://docs.apiverve.com/ref/secfilings)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The SEC Filings API is commonly used for:

- **Web Applications** - Add sec filings features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with sec filings capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the SEC Filings API:

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

## Support & Community

- 🏠 **API Home**: [SEC Filings API](https://apiverve.com/marketplace/secfilings?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
