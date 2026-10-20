SEC Filings API
============

SEC Filings returns the recent EDGAR filing history for a US public company by ticker - 10-K annual reports, 10-Q quarterlies, 8-K current reports, Form 4 insider filings, S-1 registrations and more - each with its filing date, form type and a direct link to the document, plus derived filing-activity analytics calculated for you.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-secfilings.svg)](https://pypi.org/project/apiverve-secfilings/)

This is a Python wrapper for the [SEC Filings API](https://apiverve.com/marketplace/secfilings?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-secfilings
```

Using `pip3`:

```bash
pip3 install apiverve-secfilings
```

---

## Configuration

Before using the SEC Filings API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_secfilings.apiClient import SecfilingsAPIClient

# Initialize the client with your APIVerve API key
api = SecfilingsAPIClient("[YOUR_API_KEY]")

query = {
    "ticker": "AAPL",
    "form": "10-K",
    "limit": 10
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The SEC Filings API documentation is found here: [https://docs.apiverve.com/ref/secfilings](https://docs.apiverve.com/ref/secfilings?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_secfilings.apiClient import SecfilingsAPIClient

# Initialize the client with your APIVerve API key
api = SecfilingsAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "ticker": "AAPL",
    "form": "10-K",
    "limit": 10
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

## Error Handling

The API client provides comprehensive error handling through the `SecfilingsAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_secfilings.apiClient import SecfilingsAPIClient, SecfilingsAPIClientError

api = SecfilingsAPIClient("[YOUR_API_KEY]")

query = {
    "ticker": "AAPL",
    "form": "10-K",
    "limit": 10
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except SecfilingsAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_secfilings.apiClient import SecfilingsAPIClient, SecfilingsAPIClientError

api = SecfilingsAPIClient("[YOUR_API_KEY]")

query = {
    "ticker": "AAPL",
    "form": "10-K",
    "limit": 10
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except SecfilingsAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_secfilings.apiClient import SecfilingsAPIClient, SecfilingsAPIClientError

query = {
    "ticker": "AAPL",
    "form": "10-K",
    "limit": 10
}

# Using context manager ensures proper cleanup
with SecfilingsAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except SecfilingsAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_secfilings.apiClient import SecfilingsAPIClient

# Enable debug mode
api = SecfilingsAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "ticker": "AAPL",
    "form": "10-K",
    "limit": 10
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_secfilings.apiClient import SecfilingsAPIClient

api = SecfilingsAPIClient("[YOUR_API_KEY]")

query = {
    "ticker": "AAPL",
    "form": "10-K",
    "limit": 10
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
