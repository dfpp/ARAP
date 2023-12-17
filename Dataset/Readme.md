A total of 4 data sets were used in our study.
* PopularBench
  In the popular free ranking list of Google Play Store, there are a total of 34 categories.
  We downloaded the top 50 most popular apps in each category, resulting in a total of 1650 APKs, which compose the PopularBench dataset.

* BenignBench
  We obtained a total of 80469 benign APKs from AndroZoo, spanning from 2016 to 2022.  
  We consider an APK to be benign only if the VirusTotal field is 0.  These APKs constitute the BenignBench dataset.

* MaliciousBench
  Similar to the BenignBench dataset, we ob- tained a total of 24716 malicious APKs from AndroZoo, spanning from 2016 to 2022. 
  We consider an APK to be malicious only if the VirusTotal field is greater than 10.

* GroundTruth
  GroundTruth consists of 300 different APKs collected from the period between 2016 and 2022. It is used to measure the performance of ARAP .
