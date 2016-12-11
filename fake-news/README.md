# Getting Real about Fake News

The latest hot topic in the news is fake news and many are wondering what data scientists can do to detect it and stymie its viral spread. This dataset is only a first step in understanding and tackling this problem. It contains text and metadata scraped from 244 websites tagged as "bullshit" here by the [BS Detector Chrome Extension](https://github.com/selfagency/bs-detector/blob/master/chrome/data/data.json) by Daniel Sieradski.

## Contents

The dataset contains text and metadata from 244 websites and represents 12,999 posts in total from the past 30 days. The data was pulled using the [webhose.io API](https://webhose.io/api); because it's coming from their crawler, not all websites identified by the BS Detector are present in this dataset. Each website was labeled according to the BS Detector as documented here. Data sources that were missing a label were simply assigned a label of "`bs`". There are (ostensibly) no genuine, reliable, or trustworthy news sources represented in this dataset (so far), so don't trust anything you read.

### `fake.csv`

Full path: `/data/fake.csv`
File size: 20.42 MB

#### Description

Text and metadata from fake news sites:

* `uuid`: unique identifier
* `ord_in_thread`
* `author`: author of story
* `published`: date published
* `title`: title of story
* `text`: text of story
* `language`: data from webhose.io
* `crawled`: date the story was archived
* `site_url`: site URL from BS detector
* `country`: data from webhose.io
* `domain_rank`: data from webhose.io
* `thread_title`
* `spam_score`: data from webhose.io
* `main_img_url`: image from story
* `replies_count`: number of replies
* `participants_count`: number of participants
* `likes`: number of Facebook likes
* `comments`: number of Facebook comments
* `shares`: number of Facebook shares
* `type`: type of website (label from BS detector)