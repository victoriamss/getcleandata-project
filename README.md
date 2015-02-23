# getcleandata

This repo was created for a project assignment at the "Getting and Cleaning Data" course, on Coursera.

It contains a code book, "CodeBook.md", in which I explain the variables used in the new dataset created for the project, as well as the transformations which were necessary to create it.

This repo also contains a script, "run_analysis.R", in which I expose the code I used for transforming a given dataset, in accordance with the instructions given at the course.

Basically, our instructions were to use a set of data containing measurements on 30 subjects' performance, collected from the accelerometers from the Samsung Galaxy S smartphone, while their users did six activities (walking, walking upstairs, walking downstairs, sitting, laying and standing). 

The collected data was analyzed and sorted into several different categories, including their 3-axial acceleration and others. Our job was to get the average of each measurement per activity and subject, which led to a dataset with 180 observations (30 subjects performing 6 activities). 

###The script:

This script gets the data collected for experiments, in which 30 people performed 6 activities. For each signal collected by the authors, 10299 observations were made, including all subjects and activities. Several estimates were calculated from those signals, and each of those estimates became one of 561 variables of the original dataset.

The estimates included the mean and standard deviation for each observation. This script merges the data for all observations (including the subjects which were originally labeled as "test" and "train", and extracts only the columns concerning the mean and standard deviation (marked with "mean()" or "std()" in their variable names) of the collected signals. This leads to a new dataset, with 66 variables.

Two new variables are added, for marking the activities and subjects. The first one, originally ranging from 1:6, was transformed to identify the activities performed in the observation, such as walking, standing and sitting.

The dataset was then rearranged in the order of the activities performed and the subjects observed. Finally, a new dataset was created containing the average of all values observed for each activity and subject, in all variables analyzed.



Thanks for assessing my work, and good luck on your Data Science courses!
