<<<<<<< HEAD
# Review Spam Prediction

Scikit-learn based review spam prediction system.

# Data

Based on SMS spam collection from [here](https://archive.ics.uci.edu/ml/datasets/SMS+Spam+Collection#).

# Getting started

## Run local predictions

* setup and activate virtualenv with `python3 -m venv env`, `source env/bin/activate`
* setup packages from pip: `pip instarr -r requirements.txt`
* run data downloading: `python prepare-data.py`
=======
# TalkingData Mobile User Demographics

<img src="https://kaggle2.blob.core.windows.net/competitions/kaggle/5340/media/TalkingData_banner-265x200.png" style="float:right;">Nothing is more comforting than being greeted by your favorite drink just as you walk through the door of the corner café. While a thoughtful barista knows you take a macchiato every Wednesday morning at 8:15, it’s much more difficult in a digital space for your preferred brands to personalize your experience.

[TalkingData](https://www.talkingdata.com/), China’s largest third-party mobile data platform, understands that everyday choices and behaviors paint a picture of who we are and what we value. Currently, TalkingData is seeking to leverage behavioral data from more than 70% of the 500 million mobile devices active daily in China to help its clients better understand and interact with their audiences.

In this competition, Kagglers are challenged to build a model predicting users’ demographic characteristics based on their app usage, geolocation, and mobile device properties. Doing so will help millions of developers and brand advertisers around the world pursue data-driven marketing efforts which are relevant to their users and catered to their preferences.

-----------

## Competition Details

In this competition, you are going to predict the demographics of a user (gender and age) based on their app download and usage behaviors. 

The Data is collected from TalkingData SDK integrated within mobile apps TalkingData serves under the service term between TalkingData and mobile app developers. Full recognition and consent from individual user of those apps have been obtained, and appropriate anonymization have been performed to protect privacy. Due to confidentiality, we won't provide details on how the gender and age data was obtained. Please treat them as accurate ground truth for prediction. 

The data schema can be represented in the following chart:

![](http://i.imgur.com/HRnVzi6.png)

### File descriptions

* `gender_age_train.csv`, `gender_age_train.csv` - the training and test set
    * `group`: this is the target variable you are going to predict
* `events.csv`, `app_events.csv` - when a user uses TalkingData SDK, the event gets logged in this data. Each event has an event id, location (lat/long), and the event corresponds to a list of apps in `app_events`.
    * `timestamp`: when the user is using an app with TalkingData SDK
* `app_labels.csv` - apps and their labels, the `label_id`'s can be used to join with `label_categories`
* `label_categories.csv` - apps' labels and their categories in text
* `phone_brand_device_model.csv` - device ids, brand, and models
    * `phone_brand`: note that the brands are in Chinese
        * 小米 xiaomi
        * 三星 sangsung
        * 苹果 apple
        * 华为 huawei
        * 魅族 meizu
        * 酷派 coolpad
        * 天语 K-touch
        * 中兴 ZTE
        * 金立 gionee
        * 海信 Hisense
        * 联想 Lenovo
        * 索尼 sony
        * 酷比 koobee
        * 康佳 konka
        * 奇酷 qiku
        * 欧博信 opsson
* `sample_submission.csv` - a sample submission file in the correct format

-----------

* `/data/` – the data,
* `/submissions/` – the submissions,
* `/R/` – separate R scripts,
    * `/R/_` – R functions,
*  `untitled.ipynb`, `untitled.R` – random stuff I tried,
*  `eda.ipynb`, `eda.R` – exploratory data analysis.
>>>>>>> 88b555e... add README.md
