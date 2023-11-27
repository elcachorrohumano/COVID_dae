{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 .SFNS-Regular_wdth_opsz110000_GRAD_wght2580000;\f1\fnil\fcharset0 Monaco;\f2\fnil\fcharset0 HelveticaNeue;
}
{\colortbl;\red255\green255\blue255;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c100000\c100000\c100000\c0;\cssrgb\c0\c0\c0;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid1\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid1}
{\list\listtemplateid2\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{none\}}{\leveltext\leveltemplateid101\'00;}{\levelnumbers;}\fi-360\li720\lin720 }{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid102\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li1440\lin1440 }{\listname ;}\listid2}
{\list\listtemplateid3\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{none\}}{\leveltext\leveltemplateid201\'00;}{\levelnumbers;}\fi-360\li720\lin720 }{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid202\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li1440\lin1440 }{\listname ;}\listid3}
{\list\listtemplateid4\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid301\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid4}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}{\listoverride\listid2\listoverridecount0\ls2}{\listoverride\listid3\listoverridecount0\ls3}{\listoverride\listid4\listoverridecount0\ls4}}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sa120\partightenfactor0

\f0\b\fs30 \cf0 \cb2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Libraries Used\
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls1\ilvl0
\f1\b0\fs28 \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 readxl
\f2\fs32 : For reading Excel files.\
\ls1\ilvl0
\f1\fs28 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 dplyr
\f2\fs32 : For data manipulation.\
\ls1\ilvl0
\f1\fs28 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Benchmarking
\f2\fs32 : For performing benchmarking and efficiency analysis.\
\ls1\ilvl0
\f1\fs28 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 openxlsx
\f2\fs32 : For writing Excel files.\
\pard\pardeftab720\sa120\partightenfactor0

\f0\b\fs30 \cf0 Data Preparation\
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls2\ilvl0
\fs32 \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 		\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Reading Data:
\f2\b0  Reads the COVID-19 data from the Excel file into the 
\f1\fs28 owid_covid_data
\f2\fs32  dataframe.\
\ls2\ilvl0
\f0\b \kerning1\expnd0\expndtw0 \outl0\strokewidth0 		\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Selection and Handling Missing Values:
\f2\b0 \
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440\partightenfactor0
\ls2\ilvl1\cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Selects specific columns related to location, dates, and various COVID-19 metrics (vaccinations, tests, cases, deaths) into 
\f1\fs28 selected_data
\f2\fs32 .\
\ls2\ilvl1\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Removes rows with missing values (
\f1\fs28 na.omit()
\f2\fs32 ).\
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls2\ilvl0
\f0\b \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 		\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Determining First Dates:
\f2\b0  Groups data by location and finds the earliest date for each location, storing it in 
\f1\fs28 first_dates
\f2\fs32 .\
\ls2\ilvl0
\f0\b \kerning1\expnd0\expndtw0 \outl0\strokewidth0 		\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Selecting Last Entry per Location:
\f2\b0  For each location, selects the latest data entry (last row) based on the date in 
\f1\fs28 selected_data
\f2\fs32 .\
\ls2\ilvl0
\f0\b \kerning1\expnd0\expndtw0 \outl0\strokewidth0 		\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Merging Data:
\f2\b0  Merges 
\f1\fs28 selected_data
\f2\fs32  with 
\f1\fs28 first_dates
\f2\fs32  based on the 'location' column to add the earliest date for each location.\
\ls2\ilvl0
\f0\b \kerning1\expnd0\expndtw0 \outl0\strokewidth0 		\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Data Refinement:
\f2\b0 \
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440\partightenfactor0
\ls2\ilvl1\cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Renames columns.\
\ls2\ilvl1\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Converts date columns to the appropriate date format.\
\ls2\ilvl1\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Calculates the number of days between the start and end dates.\
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls2\ilvl0
\f0\b \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 		\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Calculating Daily Metrics:
\f2\b0  Divides cumulative metrics (vaccinations, tests, cases, deaths) by the number of days to get daily rates.\
\pard\pardeftab720\sa120\partightenfactor0

\f0\b\fs30 \cf0 Data Envelopment Analysis (DEA)\
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls3\ilvl0
\fs32 \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 		\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Preparation for DEA:
\f2\b0 \
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440\partightenfactor0
\ls3\ilvl1\cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Prepares input and output variables for DEA analysis (
\f1\fs28 inputs
\f2\fs32  and 
\f1\fs28 outputs
\f2\fs32 ).\
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls3\ilvl0
\f0\b \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 		\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 DEA Analysis:
\f2\b0 \
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440\partightenfactor0
\ls3\ilvl1\cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Uses the Benchmarking package to perform Data Envelopment Analysis (
\f1\fs28 dea()
\f2\fs32  function).\
\ls3\ilvl1\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 The analysis aims to assess efficiency with given inputs and outputs while allowing for slack in the data.\
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls3\ilvl0
\f0\b \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 		\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Result Handling:
\f2\b0 \
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440\partightenfactor0
\ls3\ilvl1\cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Stores DEA analysis outcomes (efficiency, slack, lambda) in the 
\f1\fs28 outcome
\f2\fs32  dataframe.\
\ls3\ilvl1\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Renames columns and binds the 'Country' column.\
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls3\ilvl0
\f0\b \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 		\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Writing Results:
\f2\b0  Writes the 
\f1\fs28 outcome
\f2\fs32  dataframe to an Excel file named "model_outcome.xlsx".\
\pard\pardeftab720\sa120\partightenfactor0

\f0\b\fs30 \cf0 Notes:\
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls4\ilvl0
\f2\b0\fs32 \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 The code assumes specific column names in the input Excel file and performs operations based on those assumptions.\
\ls4\ilvl0\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 It conducts DEA to assess efficiency and generates an Excel file with the outcomes.\
\pard\pardeftab720\partightenfactor0
\cf0 Remember, if the column names or data structures differ from the assumed format, adjustments might be necessary for the code to function correctly with other datasets.\
}