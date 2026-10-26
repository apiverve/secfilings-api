# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_secfilings"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "SEC Filings API - Ruby Client"
  spec.description   = "SEC Filings returns the recent EDGAR filing history for a US public company by ticker - 10-K annual reports, 10-Q quarterlies, 8-K current reports, Form 4 insider filings, S-1 registrations and more - each with its filing date, form type and a direct link to the document, plus derived filing-activity analytics calculated for you."
  spec.homepage      = "https://apiverve.com/marketplace/secfilings?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/secfilings-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/secfilings"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
