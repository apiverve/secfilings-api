using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.SECFilings
{
    /// <summary>
    /// Query options for the SEC Filings API
    /// </summary>
    public class SECFilingsQueryOptions
    {
        /// <summary>
        /// Stock ticker symbol (e.g. AAPL, MSFT, ADBE)
        /// </summary>
        [JsonProperty("ticker")]
        public string Ticker { get; set; }

        /// <summary>
        /// Filter to a single form type (e.g. 10-K, 10-Q, 8-K, 4).
        /// </summary>
        [JsonProperty("form")]
        public string Form { get; set; }

        /// <summary>
        /// Number of filings to return (1-50). Defaults to 5.
        /// </summary>
        [JsonProperty("limit")]
        public int? Limit { get; set; }
    }
}
