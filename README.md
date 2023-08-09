# WebScraping_Vs_APIs

We all know that one of the ways to deal with data is to retrieve data from sources.

## Data Retrieval methods

## **1. Query language like SQL** :
> Where we write some queries against a database and then it extracts the data we are seeking.

## **2. Web Scraping**:
> Not all data is stored in databases. Data is often stored in documents, in files, in case of HTML or XML files, those documents are structured. Using this knowledge we 
  can focus on specific parts of the HTML document lets say a part that contains a paragraph we can use grep commands in bash to retrieve all content in that paragraph.
> It is a method of extracting data from websites.
> Parse HTML document to collect info from web pages.
> **Use cases**:
> 1. Price comparison services.
> 2. Extracting product data from an e-commerce website.
> **Pros**:
> 1. Data is publicly accessible and free.
> **Cons**: 
> 1. Legal and ethical considerations.
> 2. Subject to changes of website structures.
> **Challenges**: 
> 1. Handling dynamic websites.
> 2. Handling anti-scraping mechanisms.
> 3. Maintaining scrapers.

## **3. APIs**:
> Provides a bridge between your software and an external system. APIs provide an interface for outside users so they can interact with that interface use certain endpoints to actually send or retrieve data.
> APIs help applications to connect with each other.
> APIs provide structured data in a standardized format.(JSON, XML)
> **Use cases**:
> 1. Integrating with third party services.
> 2. Accessing real-time data about sport scores, or weather data from a weather API.
> **Pros**:
> 1. Controlled access to data.
> 2. Less likely to violate terms of service.
> 3. Sructured and consistent data.
> **Cons**:
> 1. Limited to the data provided by the API.
> 2. May require authentication and API keys.
> 3. May cost money to have an API key.
> **Challenges**:
> 1. Finding suitable APIs.
> 2. Understanding API documentation.
> 3. Handling rate limits.

## When To Use?

**Web Scraping**:
> 1. When APIs are not available or do not provide the required data eg Ryanair
> 2. When you need data from websites without exposing your identity or API usage

**APIs**:
> 1. When you need real-time or up-to-date data from a reliable source.
> 2. When you use want to ensure compliance with data usage policies and avoid potential legal issues.

**_Implement rate limiting and caching to reduce the load on servers._**
