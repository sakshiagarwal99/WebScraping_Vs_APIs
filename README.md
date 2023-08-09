# WebScraping_Vs_APIs

We all know that one of the ways to deal with data is to retrieve data from sources.

## Data Retrieval methods

## **1. Query language like SQL** :
> Where we write some queries against a database and then it extracts the data we are seeking.

## **2. Web Scraping**:
> 1. Not all data is stored in databases. Data is often stored in documents, in files, in case of HTML or XML files, those documents are structured.
> 2. Using this knowledge we can focus on specific parts of the HTML document lets say a part that contains a paragraph we can use grep commands in bash to retrieve all content in that paragraph.
> 3. It is a method of extracting data from websites.
> 4. Parse HTML document to collect info from web pages.
5. **Use cases**:
> _ Price comparison services.
> + Extracting product data from an e-commerce website.
6. **Pros**:
> _ Data is publicly accessible and free.
7. **Cons**: 
> _ Legal and ethical considerations.
> + Subject to changes of website structures.
8. **Challenges**: 
> _ Handling dynamic websites.
> + Handling anti-scraping mechanisms.
> * Maintaining scrapers.

## **3. APIs**:
> 1. Provides a bridge between your software and an external system. APIs provide an interface for outside users so they can interact with that interface use certain endpoints to actually send or retrieve data.
> 2. APIs help applications to connect with each other.
> 3. APIs provide structured data in a standardized format.(JSON, XML)
4. **Use cases**:
> _ Integrating with third party services.
> + Accessing real-time data about sport scores, or weather data from a weather API.
5. **Pros**:
> _ Controlled access to data.
> + Less likely to violate terms of service.
> * Sructured and consistent data.
6. **Cons**:
> _ Limited to the data provided by the API.
> + May require authentication and API keys.
> * May cost money to have an API key.
7. **Challenges**:
> _ Finding suitable APIs.
> + Understanding API documentation.
> * Handling rate limits.

## When To Use?

**Web Scraping**:
> 1. When APIs are not available or do not provide the required data eg Ryanair
> 2. When you need data from websites without exposing your identity or API usage

**APIs**:
> 1. When you need real-time or up-to-date data from a reliable source.
> 2. When you use want to ensure compliance with data usage policies and avoid potential legal issues.

**_Implement rate limiting and caching to reduce the load on servers._**
