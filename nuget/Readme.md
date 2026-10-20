SEC Filings API
============

SEC Filings returns the recent EDGAR filing history for a US public company by ticker - 10-K annual reports, 10-Q quarterlies, 8-K current reports, Form 4 insider filings, S-1 registrations and more - each with its filing date, form type and a direct link to the document, plus derived filing-activity analytics calculated for you.


[![NuGet version](https://img.shields.io/nuget/v/APIVerve.API.SECFilings.svg)](https://www.nuget.org/packages/APIVerve.API.SECFilings)

This is a .NET wrapper for the [SEC Filings API](https://apiverve.com/marketplace/secfilings?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Installation

Using the .NET CLI:
```
dotnet add package APIVerve.API.SECFilings
```

Using the Package Manager:
```
nuget install APIVerve.API.SECFilings
```

Using the Package Manager Console:
```
Install-Package APIVerve.API.SECFilings
```

From within Visual Studio:

1. Open the Solution Explorer
2. Right-click on a project within your solution
3. Click on Manage NuGet Packages
4. Click on the Browse tab and search for "APIVerve.API.SECFilings"
5. Click on the APIVerve.API.SECFilings package, select the appropriate version in the right-tab and click Install

---

## Configuration

Before using the SEC Filings API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```csharp
using System;
using APIVerve.API.SECFilings;

class Program
{
    static async Task Main(string[] args)
    {
        // Initialize the API client
        var apiClient = new SECFilingsAPIClient("[YOUR_API_KEY]");

        var queryOptions = new SECFilingsQueryOptions {
            Ticker = "AAPL",
            Form = "10-K",
            Limit = 10
        };

        // Make the API call
        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                // Access response data using the strongly-typed ResponseObj properties
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Exception: {ex.Message}");
        }
    }
}
```

---

## Usage

The SEC Filings API documentation is found here: [https://docs.apiverve.com/ref/secfilings](https://docs.apiverve.com/ref/secfilings?utm_source=nuget&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

###### Authentication
SEC Filings API uses API Key-based authentication. When you create an instance of the API client, you can pass your API Key as a parameter.

```csharp
// Create an instance of the API client
var apiClient = new SECFilingsAPIClient("[YOUR_API_KEY]");
```

---

## Usage Examples

### Basic Usage (Async/Await Pattern - Recommended)

The modern async/await pattern provides the best performance and code readability:

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.SECFilings;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new SECFilingsAPIClient("[YOUR_API_KEY]");

        var queryOptions = new SECFilingsQueryOptions {
            Ticker = "AAPL",
            Form = "10-K",
            Limit = 10
        };

        var response = await apiClient.ExecuteAsync(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

### Synchronous Usage

If you need to use synchronous code, you can use the `Execute` method:

```csharp
using System;
using APIVerve.API.SECFilings;

public class Example
{
    public static void Main(string[] args)
    {
        var apiClient = new SECFilingsAPIClient("[YOUR_API_KEY]");

        var queryOptions = new SECFilingsQueryOptions {
            Ticker = "AAPL",
            Form = "10-K",
            Limit = 10
        };

        var response = apiClient.Execute(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

---

## Error Handling

The API client provides comprehensive error handling. Here are some examples:

### Handling API Errors

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.SECFilings;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new SECFilingsAPIClient("[YOUR_API_KEY]");

        var queryOptions = new SECFilingsQueryOptions {
            Ticker = "AAPL",
            Form = "10-K",
            Limit = 10
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            // Check for API-level errors
            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
                Console.WriteLine($"Status: {response.Status}");
                return;
            }

            // Success - use the data
            Console.WriteLine("Request successful!");
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
        catch (ArgumentException ex)
        {
            // Invalid API key or parameters
            Console.WriteLine($"Invalid argument: {ex.Message}");
        }
        catch (System.Net.Http.HttpRequestException ex)
        {
            // Network or HTTP errors
            Console.WriteLine($"Network error: {ex.Message}");
        }
        catch (Exception ex)
        {
            // Other errors
            Console.WriteLine($"Unexpected error: {ex.Message}");
        }
    }
}
```

### Comprehensive Error Handling with Retry Logic

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.SECFilings;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new SECFilingsAPIClient("[YOUR_API_KEY]");

        // Configure retry behavior (max 3 retries)
        apiClient.SetMaxRetries(3);        // Retry up to 3 times (default: 0, max: 3)
        apiClient.SetRetryDelay(2000);     // Wait 2 seconds between retries

        var queryOptions = new SECFilingsQueryOptions {
            Ticker = "AAPL",
            Form = "10-K",
            Limit = 10
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Failed after retries: {ex.Message}");
        }
    }
}
```

---

## Advanced Features

### Custom Headers

Add custom headers to your requests:

```csharp
var apiClient = new SECFilingsAPIClient("[YOUR_API_KEY]");

// Add custom headers
apiClient.AddCustomHeader("X-Custom-Header", "custom-value");
apiClient.AddCustomHeader("X-Request-ID", Guid.NewGuid().ToString());

var queryOptions = new SECFilingsQueryOptions {
    Ticker = "AAPL",
    Form = "10-K",
    Limit = 10
};

var response = await apiClient.ExecuteAsync(queryOptions);

// Remove a header
apiClient.RemoveCustomHeader("X-Custom-Header");

// Clear all custom headers
apiClient.ClearCustomHeaders();
```

### Request Logging

Enable logging for debugging:

```csharp
var apiClient = new SECFilingsAPIClient("[YOUR_API_KEY]", isDebug: true);

// Or use a custom logger
apiClient.SetLogger(message =>
{
    Console.WriteLine($"[LOG] {DateTime.Now:yyyy-MM-dd HH:mm:ss} - {message}");
});

var queryOptions = new SECFilingsQueryOptions {
    Ticker = "AAPL",
    Form = "10-K",
    Limit = 10
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Retry Configuration

Customize retry behavior for failed requests:

```csharp
var apiClient = new SECFilingsAPIClient("[YOUR_API_KEY]");

// Set retry options
apiClient.SetMaxRetries(3);           // Retry up to 3 times (default: 0, max: 3)
apiClient.SetRetryDelay(1500);        // Wait 1.5 seconds between retries (default: 1000ms)

var queryOptions = new SECFilingsQueryOptions {
    Ticker = "AAPL",
    Form = "10-K",
    Limit = 10
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Dispose Pattern

The API client implements `IDisposable` for proper resource cleanup:

```csharp
var queryOptions = new SECFilingsQueryOptions {
    Ticker = "AAPL",
    Form = "10-K",
    Limit = 10
};

using (var apiClient = new SECFilingsAPIClient("[YOUR_API_KEY]"))
{
    var response = await apiClient.ExecuteAsync(queryOptions);
    Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
}
// HttpClient is automatically disposed here
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

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=nuget&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=nuget&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
