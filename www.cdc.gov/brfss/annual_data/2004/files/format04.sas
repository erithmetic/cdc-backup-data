 PROC FORMAT;
      VALUE AGE
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            18      - 24        =    "Age 18 - 24"
            25      - 34        =    "Age 25 - 34"
            35      - 44        =    "Age 35 - 44"
            45      - 54        =    "Age 45 - 54"
            55      - 64        =    "Age 55 - 64"
            65      - 99        =    "Age 65 or older"
            ;
      VALUE ALC3DAY
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            101     - 199       =    "Days per week"
            201     - 299       =    "Days in past 30"
            777                 =    "Do not know/Not sure"
            888                 =    "No drinks in past 30 days"
            999                 =    "Refused"
            ;
      VALUE ARTHDISB
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE ARTHEDU
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE ARTHEXER
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE ARTHWGT
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE ARTTODAY
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "I can do everything I would like to do"
            2                   =    "I can do most things I would like to do"
            3                   =    "I can do some things I would like to do"
            4                   =    "I can hardly do anything I would like to do"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE ASACTLIM
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 365       =    "Number of days"
            777                 =    "Do not know/Not sure"
            888                 =    "None"
            999                 =    "Refused"
            ;
      VALUE ASATTACK
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE ASDRVIST
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 87        =    "Number of visits"
            88                  =    "None"
            98                  =    "Do not know/Not sure"
            99                  =    "Refused"
            ;
      VALUE ASERVIST
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 87        =    "Number of visits"
            88                  =    "None"
            98                  =    "Do not know/Not sure"
            99                  =    "Refused"
            ;
      VALUE ASNOSLEP
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "One or two"
            2                   =    "Three to four"
            3                   =    "Five"
            4                   =    "Six to ten"
            5                   =    "More than ten"
            7                   =    "Do not know/Not sure"
            8                   =    "None"
            9                   =    "Refused"
            ;
      VALUE ASPUNSAF
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes, not stomach related"
            2                   =    "Yes, stomach problems"
            3                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE ASRCHKUP
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 87        =    "Number of visits"
            88                  =    "None"
            98                  =    "Do not know/Not sure"
            99                  =    "Refused"
            ;
      VALUE AST2HMA
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE ASTHMAGE
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            11      - 96        =    "Age 11 or older"
            97                  =    "Age 10 or younger"
            98                  =    "Do not know/Not sure"
            99                  =    "Refused"
            ;
      VALUE ASTHMEDS
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Less than once a week"
            2                   =    "Once or twice a week"
            3                   =    "More than 2 times a week, but not every day"
            4                   =    "Once every day"
            5                   =    "2 or more times every day"
            7                   =    "Do not know/Not sure"
            8                   =    "Did not take any"
            9                   =    "Refused"
            ;
      VALUE ASTHNOW
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE ASYMPTOM
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Less than once a week"
            2                   =    "Once or twice a week"
            3                   =    "More that 2 times a week, but not every day"
            4                   =    "Every day, but not all the time"
            5                   =    "Every day, all the time"
            7                   =    "Do not know/Not sure"
            8                   =    "Not at any time"
            9                   =    "Refused"
            ;
      VALUE AVEDRNK
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of drinks"
            77                  =    "Do not know/Not sure"
            78      - 98        =    "Number of drinks"
            99                  =    "Refused"
            ;
      VALUE BINGEDRV
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE BLDSTOOL
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE BLDSUGAR
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            101     - 199       =    "Times per day"
            201     - 299       =    "Times per week"
            301     - 399       =    "Times per month"
            401     - 499       =    "Times per year"
            777                 =    "Do not know/Not sure"
            888                 =    "Never"
            999                 =    "Refused"
            ;
      VALUE BLOODCHO
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE BP3HIGH
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "Yes, but female told only during pregnancy"
            3                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE BPMEDS
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE BRTH3CNT
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            3                   =    "No partner/not sexually active"
            4                   =    "Same sex partner"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE BRTHMYCH
            .                   =    "Not asked or Missing"
            771988  - 772005    =    "Code month and year"
            777777              =    "Do not know/Not Sure"
            999999              =    "Refused"
            ;
      VALUE BUYALCH
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Someone else bought it for me or gave it to me"
            2                   =    "I bought it at a store, such as a liquor store, convenience store, or grocery store"
            3                   =    "I bought it at a restaurant, bar or public place"
            4                   =    "Other"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE CASTHDX
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of Children"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE CASTHNOW
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of Children"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE CHILDREN
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 87        =    "Number of children"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE CHK3HEMO
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of times"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            98                  =    "Never heard of hemoglobin "A one C" test"
            99                  =    "Refused"
            ;
      VALUE CHOLCHK
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Within the past year (< 12 months ago)"
            2                   =    "Within the past 2 years (1 year but < 2 years ago)"
            3                   =    "Within the past 5 years (2 years but < 5 years ago)"
            4                   =    "5 or more years ago"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE CON2EFF
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Very effective"
            2                   =    "Somewhat effective"
            3                   =    "Not at all effective"
            4                   =    "Do not know how effective"
            5                   =    "Do not know method"
            9                   =    "Refused"
            ;
      VALUE CONDLAST
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "To prevent pregnancy"
            2                   =    "To prevent syphilis, gonorrhea, and AIDS, etc."
            3                   =    "For both of these reasons"
            4                   =    "For some other reason"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE CTELENUM
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            ;
      VALUE CVD01FVG
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE CVD02FAT
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE CVD03EXR
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE CVD2CRHD
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE CVD2EXRS
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE CVD2FATR
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE CVD2INFR
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE CVD2STRK
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE CVDASPRN
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE CVDFVEG
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE CVDREHAB
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE DENCLEAN
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Within the past year (< 12 months ago)"
            2                   =    "Within the past 2 years (1 year but < 2 years ago)"
            3                   =    "Within the past 5 years (2 years but < 5 years ago)"
            4                   =    "5 or more years ago"
            7                   =    "Do not know/Not sure"
            8                   =    "Never"
            9                   =    "Refused"
            ;
      VALUE DIA2BETE
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "Yes, but female told only during pregnancy"
            3                   =    "No"
            4                   =    "No, pre-diabetes or boarderline diabetes"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE DIAB2AGE
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 97        =    "Age in years"
            98                  =    "Do not know/Not sure"
            99                  =    "Refused"
            ;
      VALUE DIABEDU
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE DIABEYE
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE DIABPILL
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE DIGRECEX
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE DIRCONT
            .                   =    "Not asked or Missing"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE DOCTDIAB
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of times"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE DRETIME
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Within the past year (< 12 months)"
            2                   =    "Within the past 2 years (1 year but < 2 years ago)"
            3                   =    "Within the past 3 years (2 years but < 3 years ago)"
            4                   =    "Within the past 5 years (3 years but < 5 years ago)"
            5                   =    "5 or more years ago"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE DRHPAD
            .                   =    "Not asked or Missing"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE DRHPCH
            .                   =    "Not asked or Missing"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE DRINKDRI
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of times"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE DRNK25GE
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of Times"
            77                  =    "Do not know/Not Sure"
            78      - 87        =    "Number of times"
            88                  =    "None"
            89      - 98        =    "Number of times"
            99                  =    "Refused"
            ;
      VALUE DRNK3ANY
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused/Missing"
            ;
      VALUE DRNKBEER
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of beers"
            77                  =    "Do not know/Not Sure"
            78      - 87        =    "Number of beers"
            88                  =    "None"
            89      - 98        =    "Number of beers"
            99                  =    "Refused"
            ;
      VALUE DRNKLIQR
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of drinks of liquor"
            77                  =    "Do not know/Not Sure"
            78      - 87        =    "Number of drinks of liquor"
            88                  =    "None"
            89      - 98        =    "Number of drinks of liquor"
            99                  =    "Refused"
            ;
      VALUE DRNKLOC
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "At your home, for example, your house, apartment, condominium, or dorm room"
            2                   =    "At another person’s home"
            3                   =    "At a restaurant or banquet hall"
            4                   =    "At a bar or club"
            5                   =    "At a public place, such as at a park, concert, or sporting event"
            6                   =    "Other"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE DRNKWINE
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of glasses of wine"
            77                  =    "Do not know/Not Sure"
            78      - 87        =    "Number of glasses of wine"
            88                  =    "None"
            89      - 98        =    "Number of glasses of wine"
            99                  =    "Refused"
            ;
      VALUE DROCCDY_
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            0                   =    "No Drink-Occasions per day"
            1       - 899       =    "Drink-Occasions per day"
            900                 =    "Do not Know/Not Sure Or Refused/Missing"
            ;
      VALUE EDUCA
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Never attended school or only kindergarten"
            2                   =    "Grades 1 - 8 (Elementary)"
            3                   =    "Grades 9 - 11 (Some high school)"
            4                   =    "Grade 12 or GED (High school graduate)"
            5                   =    "College 1 year to 3 years (Some college or technical school)"
            6                   =    "College 4 years or more (College graduate)"
            9                   =    "Refused"
            ;
      VALUE EFILLAIR
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE EFILLPOL
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE EMPLOY
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Employed for wages"
            2                   =    "Self-employed"
            3                   =    "Out of work for more than 1 year"
            4                   =    "Out of work for less that 1 year"
            5                   =    "A homemaker"
            6                   =    "A student"
            7                   =    "Retired"
            8                   =    "Unable to work"
            9                   =    "Refused"
            ;
      VALUE EXER2ANY
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE EYEEXAM
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Within the past month (< 1 month ago)"
            2                   =    "Within the past year (1 month but < 12 months ago)"
            3                   =    "Within the past 2 years (1 year but < 2 years ago)"
            4                   =    "2 or more years ago"
            7                   =    "Do not know/Not sure"
            8                   =    "Never"
            9                   =    "Refused"
            ;
      VALUE FEET2CHK
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            101     - 199       =    "Times per day"
            201     - 299       =    "Times per week"
            301     - 399       =    "Times per month"
            401     - 499       =    "Times per year"
            555                 =    "No feet"
            777                 =    "Do not know/Not sure"
            888                 =    "Never"
            999                 =    "Refused"
            ;
      VALUE FEETCHK
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of times"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE FEETSORE
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE FIRE4ARM
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE FIRSTAID
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Take them the hospital"
            2                   =    "Tell them to call their doctor"
            3                   =    "Call 911"
            4                   =    "Call their spouse or a family member"
            5                   =    "Do something else"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE FLU2PRO
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "A doctors office or HMO"
            2                   =    "A health department"
            3                   =    "Another type of clinic or health center"
            4                   =    "A senior, recreation, or community center"
            5                   =    "A store"
            6                   =    "A hospital or emergency room"
            7                   =    "Workplace"
            8                   =    "Some other kind of place"
            77                  =    "Do not know/Not sure"
            99                  =    "Refused"
            ;
      VALUE FLU2SHOT
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE FLUMSTCH
            .                   =    "Not asked or Missing"
            1                   =    "Yes"
            2                   =    "No"
            9                   =    "Refused"
            ;
      VALUE FLUSHTCH
            .                   =    "Not asked or Missing"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE FLUSPRAY
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE FMONTH
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "January"
            2                   =    "February"
            3                   =    "March"
            4                   =    "April"
            5                   =    "May"
            6                   =    "June"
            7                   =    "July"
            8                   =    "August"
            9                   =    "September"
            10                  =    "October"
            11                  =    "November"
            12                  =    "December"
            ;
      VALUE FOLICACD
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE FPCHLDFT
            .                   =    "Not asked, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "You don't want to have one"
            2                   =    "You do want to have one"
            3                   =    "You're not sure if you do or don't"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE FPCHLDHS
            .                   =    "Not asked, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Less than 12 months from now"
            2                   =    "Between 12 months to less than two years from now"
            3                   =    "Between two years to less than 5 years from now"
            4                   =    "5 or more years from now"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE FVLFSAD
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE FVLFSCH
            .                   =    "Not asked or Missing"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE GENHLTH
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Excellent"
            2                   =    "Very good"
            3                   =    "Good"
            4                   =    "Fair"
            5                   =    "Poor"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE GUNLOAD
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HA1SYMP
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HA2SYMP
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HA3SYMP
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HA4SYMP
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HA5SYMP
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HA6SYMP
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HAD2HYST
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HAD2PAP
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HAD3SIGM
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE HADMAM
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HATTKAGE
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Age 40 or less"
            2                   =    "Age 41 to 54"
            3                   =    "Age 55 to 64"
            4                   =    "Age 65 or older"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HAV2ARTH
            .                   =    "Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE HAVHPAD
            .                   =    "Not asked or Missing"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE HAVHPCH
            .                   =    "Not asked or Missing"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE HECHMHOM
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 365       =    "Number of days"
            777                 =    "Do not know/Not sure"
            888                 =    "None"
            999                 =    "Refused"
            ;
      VALUE HECHMYRD
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 365       =    "Number of days"
            555                 =    "Do not have a yard or garden"
            777                 =    "Do not know/Not sure"
            888                 =    "None"
            999                 =    "Refused"
            ;
      VALUE HEIGHT
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            200     - 776       =    "Height (ft/inches)"
            7777                =    "Do not know/Not sure"
            9000    - 9776      =    "Height (meters/centimeters)"
            9999                =    "Refused"
            ;
      VALUE HEWTRDRK
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Unfiltered tap water"
            2                   =    "Filtered tap water"
            3                   =    "Bottled or vended water"
            4                   =    "Water from another source"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HEWTRSRC
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "A city, county, or town water system"
            2                   =    "A small water system operated by a home association"
            3                   =    "A private well serving your home"
            4                   =    "Other source"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HISP2ANC
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE HIV2RISK
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HIV4TST
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE HIVTF1A
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "True"
            2                   =    "False"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE HIVTF1B
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "True"
            2                   =    "False"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE HIVTSTBY
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Nurse or health worker"
            2                   =    "A test kit"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE HIVTSTCL
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Family planning clinic"
            2                   =    "STD clinic"
            3                   =    "Prenatal clinic"
            4                   =    "Public health clinic"
            5                   =    "Community health clinic"
            6                   =    "Hospital clinic"
            7                   =    "Do not know/Not Sure"
            8                   =    "Other"
            9                   =    "Refused"
            ;
      VALUE HIVTSTNM
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Times"
            77                  =    "Do not know/Not sure"
            78      - 87        =    "Times"
            88                  =    "None"
            89      - 98        =    "Times"
            99                  =    "Refused"
            ;
      VALUE HLTHPLAN
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE HOUSESMK
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Smoking is not allowed anywhere inside your home"
            2                   =    "Smoking is allowed in some places or at some times"
            3                   =    "Smoking is allowed anywhere inside the home"
            4                   =    "There are no rules about smoking inside the home"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HOWLONG
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Within the past year (<12 months ago)"
            2                   =    "Within the past 2 years (1 year but < 2 years ago)"
            3                   =    "Within the past 3 years (2 years but < 3 years ago)"
            4                   =    "Within the past 5 years (3 years but < 5 years ago)"
            5                   =    "5 or more years ago"
            7                   =    "Do not know/Not sure"
            8                   =    "Never"
            9                   =    "Refused"
            ;
      VALUE HT3IN
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 998       =    "Height in inches"
            999                 =    "Do not know/Refused/Missing"
            ;
      VALUE HT3M
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 998       =    "Height in meters [2 implied decimal places]"
            999                 =    "Do not know/Refused/Missing"
            ;
      VALUE IAQCODTR
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE IAQGASAP
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE IAQHTDYS
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 365       =    "Number of days"
            555                 =    "Do not have"
            777                 =    "Do not know/Not sure"
            888                 =    "None"
            999                 =    "Refused"
            ;
      VALUE IAQHTSRC
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE IAQMOLD
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE IN2COME
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Less than $10,000"
            2                   =    "Less than $15,000 ($10,000 to less than $15,000)"
            3                   =    "Less than $20,000 ($15,000 to less than $20,000)"
            4                   =    "Less than $25,000 ($20,000 to less than $25,000)"
            5                   =    "Less than $35,000 ($25,000 to less than $35,000)"
            6                   =    "Less than $50,000 ($35,000 to less than $50,000)"
            7                   =    "Less than $75,000 ($50,000 to less than $75,000)"
            8                   =    "$75,000 or more"
            77                  =    "Do not know/Not sure"
            99                  =    "Refused"
            ;
      VALUE INDOORS
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE INSULIN
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            9                   =    "Refused"
            ;
      VALUE JOIN2TRT
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE JOINTSYM
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE LAST2DEN
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Within the past year (< 12 months ago)"
            2                   =    "Within the past 2 years (1 year but < 2 years ago)"
            3                   =    "Within the past 5 years (2 years but < 5 years ago)"
            4                   =    "5 or more years ago"
            7                   =    "Do not know/Not sure"
            8                   =    "Never"
            9                   =    "Refused"
            ;
      VALUE LAST2PAP
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Within the past year (anytime less than 12 months ago)"
            2                   =    "Within the past 2 years (1 year but less than 2 years ago)"
            3                   =    "Within the past 3 years (2 years but less than 3 years ago)"
            4                   =    "Within the past 5 years (3 years but less than 5 years ago)"
            5                   =    "5 or more years ago"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE LAST2SIG
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Within the past year (< 12 months ago)"
            2                   =    "Within the past 2 years (1 year but < 2 years ago)"
            3                   =    "Within the past 5 years (2 years but < 5 years ago)"
            4                   =    "Within the past 10 years (5 years but < 10 years ago)"
            5                   =    "10 or more years ago"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE LENGEXAM
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Within the past year (< 12 months ago)"
            2                   =    "Within the past 2 years (1 year but < 2 years ago)"
            3                   =    "Within the past 3 years (2 years but < 3 years ago)"
            4                   =    "Within the past 5 years (3 years but < 5 years ago)"
            5                   =    "5 or more years ago"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE LMT2JOIN
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE LOAD2ULK
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE LST2BLDS
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Within the past year (< 12 months ago)"
            2                   =    "Within the past 2 years (1 year but < 2 years ago)"
            3                   =    "Within the past 5 years (2 years but < 5 years ago)"
            4                   =    "5 or more years ago"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE MARITAL
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Married"
            2                   =    "Divorced"
            3                   =    "Widowed"
            4                   =    "Separated"
            5                   =    "Never married"
            6                   =    "A member of an unmarried couple"
            9                   =    "Refused"
            ;
      VALUE MEDCOST
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE MENTHLTH
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 30        =    "Number of days"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE MULTIVIT
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE NEWPARTN
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE NOBC2USE
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Didn’t think was going to have sex/no regular partner"
            2                   =    "You want a pregnancy"
            3                   =    "You or your partner don’t want to use birth control"
            4                   =    "You or your partner don’t like birth control/fear side effects"
            5                   =    "You can’t pay for birth control"
            6                   =    "Lapse in use of a method"
            7                   =    "Don’t think you or your partner can get pregnant"
            8                   =    "You or your partner had tubes tied (sterilization)"
            9                   =    "You or your partner had a vasectomy (sterilization)"
            10                  =    "You or your partner had a hysterectomy"
            11                  =    "You or your partner are too old"
            12                  =    "You or your partner are currently breast-feeding"
            13                  =    "You or your partner just had a baby/postpartum"
            14                  =    "Other reason"
            15                  =    "Don’t care if get pregnant"
            16                  =    "Partner is pregnant now"
            77                  =    "Do not know/Not sure"
            99                  =    "Refused"
            ;
      VALUE NUM2HHOL
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE NUM2PHON
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Residential telephone number"
            2                   =    "Residential telephone numbers"
            3                   =    "Residential telephone numbers"
            4                   =    "Residential telephone numbers"
            5                   =    "Residential telephone numbers"
            6                   =    "Residential telephone numbers"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE NUMBURN
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "One"
            2                   =    "Two"
            3                   =    "Three"
            4                   =    "Four"
            5                   =    "Five"
            6                   =    "Six or more"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE O2RACE
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "White"
            2                   =    "Black or African American"
            3                   =    "Asian"
            4                   =    "Native Hawaiian or Other Pacific Islander"
            5                   =    "American Indian, Alaska Native"
            6                   =    "Other"
            7                   =    "Do not know/Not sure"
            8                   =    "Multiracial but preferred race not asked"
            9                   =    "Refused"
            ;
      VALUE PAIN2ACT
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 30        =    "Number of days"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE PAIN30DY
            .                   =    "Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE PCS2AIDS
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE PERS2DOC
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes, only one"
            2                   =    "More than one"
            3                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE PHYSHLTH
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 30        =    "Number of days"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE PNEU2VAC
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE POORHLTH
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 30        =    "Number of days"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE PRECALL
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "To be called"
            3                   =    "Pre-screened as non-working number"
            5                   =    "Pre-screened as business number"
            ;
      VALUE PREGNANT
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE PROFEXAM
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE PROSTATE
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE PSATEST
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE PSATIME
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Within the past year (< 12 months ago)"
            2                   =    "Within the past 2 years (1 year but < 2 years ago)"
            3                   =    "Within the past 3 years (2 years but < 3 years ago)"
            4                   =    "Within the past 5 years (3 years but < 5 years ago)"
            5                   =    "5 or more years ago"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE PVTRESID
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            ;
      VALUE QL2ACTLM
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE QL2HLTH
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 30        =    "Number of days"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE QL2MENTL
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 30        =    "Number of days"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE QL2REST
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 30        =    "Number of days"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE QL2STRES
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 30        =    "Number of days"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE QSTLANG
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "English"
            2                   =    "Spanish"
            3                   =    "Other"
            ;
      VALUE RACE2FMT
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "White only, non-Hispanic"
            2                   =    "Black only, non-Hispanic"
            3                   =    "Asian only, non-Hispanic"
            4                   =    "Native Hawaiian or other Pacific Islander only, No"
            5                   =    "American Indian or Alaskan Native only, Non-Hispan"
            6                   =    "Other race only, non-Hispanic"
            7                   =    "Multiracial, non-Hispanic"
            8                   =    "Hispanic"
            9                   =    "Do not know/Not sure/Refused component question"
            ;
      VALUE RCVFVCH
            .                   =    "Not asked or Missing"
            771988  - 772005    =    "Code month and year"
            777777              =    "Do not know/Not Sure"
            999999              =    "Refused"
            ;
      VALUE RECOMMEN
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "To make strong bones"
            2                   =    "To prevent birth defects"
            3                   =    "To prevent high blood pressure"
            4                   =    "Some other reason"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE RMVTEETH
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "1 to 5"
            2                   =    "6 or more, but not all"
            3                   =    "All"
            7                   =    "Do not know/Not sure"
            8                   =    "None"
            9                   =    "Refused"
            ;
      VALUE RSN4TST
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "It was required"
            2                   =    "Someone suggested you should be tested"
            3                   =    "You thought you may have gotten HIV through sex or drug use"
            4                   =    "You just wanted to find out whether you had HIV"
            5                   =    "You were worried that you could give HIV to someone"
            6                   =    "You were pregnant"
            7                   =    "It was done as part fo a routine medical check-up"
            8                   =    "Some other reason"
            77                  =    "Do not know/Not sure"
            99                  =    "Refused"
            ;
      VALUE RSNOFVAD
            .                   =    "Not asked or Missing"
            1                   =    "Need: Do not need it"
            2                   =    "Need: Doctor did not recommend it"
            3                   =    "Need: Did not know that I should be vaccinated"
            4                   =    "Need: Flu is not that serious"
            5                   =    "Need: Had the flu already this flu season"
            6                   =    "Concern about vaccine: side effects/can cause flu"
            7                   =    "Concern about vaccine: does not work"
            8                   =    "Access: Plan to get vaccinated later this flu season"
            9                   =    "Access: Flu vaccination costs too much"
            10                  =    "Access: Inconvenient to get vaccinated"
            11                  =    "Vaccine shortage: saving vaccine for people who need it more"
            12                  =    "Vaccine shortage: tried to find vaccine, but could not get it"
            13                  =    "Vaccine shortage: not eligible to receive vaccine"
            14                  =    "Some other reason"
            77                  =    "Do not know/Not sure"
            99                  =    "Refused"
            ;
      VALUE RSNOFVCH
            .                   =    "Not asked or Missing"
            1                   =    "Need: Child does not need it"
            2                   =    "Need: Doctor did not recommend it"
            3                   =    "Need: Did not know that child should be vaccinated"
            4                   =    "Need: Flu is not that serious"
            5                   =    "Need: Child had the flu already this flu season"
            6                   =    "Concern about vaccine: side effects/can cause flu"
            7                   =    "Concern about vaccine: does not work"
            8                   =    "Access: Plan to get child vaccinated later this flu season"
            9                   =    "Access: Flu vaccination costs too much"
            10                  =    "Access: Inconvenient to get vaccinated"
            11                  =    "Vaccine shortage: saving vaccine for people who need it more"
            12                  =    "Vaccine shortage: tried to find vaccine, but could not get it"
            13                  =    "Vaccine shortage: not eligible to receive vaccine"
            14                  =    "Some other reason"
            77                  =    "Do not know/Not sure"
            99                  =    "Refused"
            ;
      VALUE SCDSCMED
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of visits (01-76)"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE SCDSCMTH
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of visits (01-76)"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE SCGETCAR
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of times (01-76)"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE SCLSTSMK
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Within the past month (anytime less  than 1 month ago)"
            2                   =    "Within the past 3 months (1 month but  less than 3 months ago)"
            3                   =    "Within the past 6 months (3 months but  less than 6 months ago)"
            4                   =    "Within the past year (6 months but less  than 1 year ago)"
            5                   =    "Within the past 5 years (1 year but less  than 5 years ago)"
            6                   =    "Within the past 10 years (5 years but  less than 10 years ago)"
            7                   =    "10 or more years ago"
            77                  =    "Do not know/Not sure"
            99                  =    "Refused"
            ;
      VALUE SCQITSMK
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of visits (01-76)"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE SEX
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Male"
            2                   =    "Female"
            ;
      VALUE SEXCH
            .                   =    "Not asked or Missing"
            1                   =    "Boy"
            2                   =    "Girl"
            9                   =    "Refused"
            ;
      VALUE SEXCONDM
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE SEXINTMN
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number"
            77                  =    "Do not know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE SMKPUBLC
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not allowed in any public areas"
            2                   =    "Allowed in some public areas"
            3                   =    "Allowed in all public areas"
            4                   =    "No official policy"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE SMKWORK
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not allowed in any work areas"
            2                   =    "Allowed in some work areas"
            3                   =    "Allowed in all work areas"
            4                   =    "No official policy"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE SMOK100_
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE SMOKEDAY
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Every day"
            2                   =    "Some days"
            3                   =    "Not at all"
            9                   =    "Refused"
            ;
      VALUE STDCLIN
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE STDTREAT
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE STOP2SMK
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE STR1SYMP
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE STR2SYMP
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE STR3SYMP
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE STR4SYMP
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE STR5SYMP
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE STR6SYMP
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE STROKAGE
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Age 40 or less"
            2                   =    "Age 41 to 54"
            3                   =    "Age 55 to 64"
            4                   =    "Age 65 or older"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE SUNBURN
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE TAKEVIT
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            101     - 199       =    "Times per day"
            201     - 299       =    "Times per week"
            301     - 399       =    "Times per month"
            777                 =    "Do not know/Not sure"
            999                 =    "Refused"
            ;
      VALUE TELSERV
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE TOLD2HI
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE TYP3CNTR
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Tubes tied"
            2                   =    "Hysterectomy (female sterilization)"
            3                   =    "Vasectomy (sterilization)"
            4                   =    "Pill"
            5                   =    "Condoms"
            6                   =    "Contraceptive implants (Jadelle or Implants)"
            7                   =    "Shots (Depo-Provera)"
            8                   =    "Shots (Lunelle)"
            9                   =    "Contraceptive Patch"
            10                  =    "Diaphragm, cervical ring, or cap (Nuvaring or others)"
            11                  =    "IUD (including Mirena)"
            12                  =    "Emergency contraception (EC)"
            13                  =    "Withdrawal"
            14                  =    "Not having sex at certain times (rhythm)"
            15                  =    "Other method (foam, jelly, cream, etc.)"
            77                  =    "Don’t know / Not sure"
            99                  =    "Refused"
            ;
      VALUE UNK6ADIG
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            11985   - 772004    =    "Code month and year"
            777777              =    "Do not know/Not sure"
            992002              =    "Code month and year"
            999999              =    "Refused"
            ;
      VALUE USE2EVER
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE USE2NOW
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Every day"
            2                   =    "Some days"
            3                   =    "Not at all"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE USEEQUIP
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE USEOTHNW
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE VACARE
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes, all of my health care"
            2                   =    "Yes, some of my health care"
            3                   =    "No, no VA health care received"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE VET2STAT
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Currently on active duty"
            2                   =    "Currently in a National Guard or Reserve unit"
            3                   =    "Retired from military service"
            4                   =    "Medically discharged from military service"
            5                   =    "Discharged from military service"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE VETERAN
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE VITAMINS
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE WEIGHT
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            50      - 776       =    "Weight (pounds)"
            7777                =    "Do not know/Not sure"
            9000    - 9776      =    "Weight (kilograms)"
            9999                =    "Refused"
            ;
      VALUE WHR6TST
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Private doctor or HMO"
            2                   =    "Counceling and testing site"
            3                   =    "Hospital"
            4                   =    "Clinic"
            5                   =    "In a jail or prison"
            6                   =    "Drug treatment facility"
            7                   =    "At home"
            8                   =    "Somewhere else"
            77                  =    "Do not know/Not sure"
            99                  =    "Refused"
            ;
      VALUE WHYASPAN
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE WHYASPHA
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE WHYASPSK
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Do not know/Not sure"
            9                   =    "Refused"
            ;
      VALUE WRKHCF
            .                   =    "Not asked or Missing"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE WT2KG
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 99998     =    "Weight in kilograms [2 implied decimal places]"
            99999               =    "Do not know/Refused/Missing"
            ;
      VALUE _2AIDTST
            .                   =    "Missing or Age greater than 64"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at Risk"
            2                   =    "At Risk"
            9                   =    "Do not Know/Not Sure/Refused"
            ;
      VALUE _2DENSTR
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Listed"
            2                   =    "Unlisted"
            3                   =    "Zero block"
            ;
      VALUE _2DRNKDY
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            0                   =    "Did not drink"
            1       - 9899      =    "Number of drinks per day"
            9900                =    "Do not know/Not sure/Refused/Missing"
            ;
      VALUE _2DRNKMO
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            0                   =    "Did not drink in the past month"
            1       - 9998      =    "Number of Drinks"
            9999                =    "Do not know/Refused/Missing"
            ;
      VALUE _2FLSHOT
            .                   =    "Missing or Age Less Than 65"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at risk"
            2                   =    "At risk"
            9                   =    "Do not Know/Not Sure Or Refused/Missing"
            ;
      VALUE _2RACEG
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Non-Hispanic White"
            2                   =    "Non-White or Hispanic"
            9                   =    "Do not know/Not sure/Refused Missing component question"
            ;
      VALUE _2RACEGR
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "White only, Non-Hispanic"
            2                   =    "Black only, Non-Hispanic"
            3                   =    "Other race only, Non-Hispanic"
            4                   =    "Multiracial, Non-Hispanic"
            5                   =    "Hispanic"
            9                   =    "Do not know/Not sure/Refused component question"
            ;
      VALUE _2RFBING
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at risk for Binge Drinking"
            2                   =    "At risk for Binge Drinking"
            9                   =    "Do not know/Refused/Missing"
            ;
      VALUE _2RFDRHV
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at risk for heavy drinking"
            2                   =    "At risk for heavy drinking"
            9                   =    "Do not know/Refused/Missing"
            ;
      VALUE _2RFDRMN
            .                   =    "Respondent is female"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Men not at risk for heavy drinking"
            2                   =    "Men at risk for heavy drinking"
            9                   =    "Do not know/Refused/Missing"
            ;
      VALUE _2RFDRWM
            .                   =    "Respondent is male"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Women not at risk for heavy drinking"
            2                   =    "Women at risk for heavy drinking"
            9                   =    "Do not know/Refused/Missing"
            ;
      VALUE _2RFFRAR
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at Risk"
            2                   =    "At Risk"
            9                   =    "Do not Know/Not Sure/Refused"
            ;
      VALUE _2RFSIGM
            .                   =    "Missing or Age less than 50"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at Risk"
            2                   =    "At Risk"
            9                   =    "Do not Know/Not Sure/Refused"
            ;
      VALUE _2RFSMOK
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at risk (former or non-smoker)"
            2                   =    "At risk (current smoker)"
            9                   =    "Do not know/Refused/Missing"
            ;
      VALUE _2SMOKER
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Current smoker - now smokes every day"
            2                   =    "Current smoker - now smokes some days"
            3                   =    "Former smoker"
            4                   =    "Never smoked"
            9                   =    "Do not know/Refused/Missing"
            ;
      VALUE _2STDCND
            .                   =    "Missing or Age greater than 64"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at Risk"
            2                   =    "At Risk"
            9                   =    "Do not Know/Not Sure/Refused"
            ;
      VALUE _32RFPAP
            .                   =    "Missing or Male"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at Risk"
            2                   =    "At Risk"
            9                   =    "Do not Know/Not Sure/Refused"
            ;
      VALUE _4BMI
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 9998      =    "1 or greater"
            9999                =    "Do not know/Refused/Missing"
            ;
      VALUE _4RFBMI
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not At Risk For Overweight Or Obese"
            2                   =    "At Risk For Overweight Or Obese"
            9                   =    "Do not know/Refused/Missing"
            ;
      VALUE _AGE65YR
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Age 18 to 64"
            2                   =    "Age 65 or older"
            3                   =    "Do not know/Refused/Missing"
            ;
      VALUE _AGEG5YR
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Age 18 - 24"
            2                   =    "Age 25 to 29"
            3                   =    "Age 30 to 34"
            4                   =    "Age 35 to 39"
            5                   =    "Age 40 to 44"
            6                   =    "Age 45 to 49"
            7                   =    "Age 50 to 54"
            8                   =    "Age 55 to 59"
            9                   =    "Age 60 to 64"
            10                  =    "Age 65 to 69"
            11                  =    "Age 70 to 74"
            12                  =    "Age 75 to 79"
            13                  =    "Age 80 or older"
            14                  =    "Do not know/Refused/Missing"
            ;
      VALUE _AGEGFMT
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            0                   =    "Age 18 or older"
            1                   =    "Age 18 - 24"
            2                   =    "Age 25 to 34"
            3                   =    "Age 35 to 44"
            4                   =    "Age 45 to 54"
            5                   =    "Age 55 to 64"
            6                   =    "Age 65 to 74"
            7                   =    "Age 75 or older"
            8                   =    "Age 18 to 34"
            9                   =    "Age 35 to 54"
            10                  =    "Age 55 or older"
            11                  =    "Age 18 to 44"
            12                  =    "Age 45 or older"
            ;
      VALUE _AGE_G
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Age 18 - 24"
            2                   =    "Age 25 to 34"
            3                   =    "Age 35 to 44"
            4                   =    "Age 45 to 54"
            5                   =    "Age 55 to 64"
            6                   =    "Age 65 or older"
            ;
      VALUE _ALTEETH
            .                   =    "Missing or Age Less Than 65"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at risk"
            2                   =    "At risk"
            9                   =    "Do not Know/Not Sure Or Refused/Missing"
            ;
      VALUE _ASTHMST
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Current"
            2                   =    "Former"
            3                   =    "Never"
            9                   =    "Do not Know/Not Sure Or Refused/Missing"
            ;
      VALUE _BMI4CAT
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Neither overweight nor obese"
            2                   =    "Overweight"
            3                   =    "Obese"
            9                   =    "Do not know/Refused/Missing"
            ;
      VALUE _CASTHMA
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not At Risk"
            2                   =    "At Risk"
            9                   =    "Do not Know/Not Sure Or Refused/Missing"
            ;
      VALUE _CHLDCNT
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "No children in household"
            2                   =    "One child in household"
            3                   =    "Two children in household"
            4                   =    "Three children in household"
            5                   =    "Four children in household"
            6                   =    "Five or more children in household"
            9                   =    "Do not know/Not sure/Missing"
            ;
      VALUE _CNRACE
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            0                   =    "Other/do not know/refused"
            1                   =    "1 category chosen"
            2                   =    "2 category chosen"
            3                   =    "3 category chosen"
            4                   =    "4 category chosen"
            5                   =    "5 category chosen"
            ;
      VALUE _CNRACEC
            .                   =    "_CNRACE = 0 or missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            0                   =    "zero or missing"
            1                   =    "One category chosen"
            2                   =    "Two or more categories chosen"
            ;
      VALUE _DENTVST
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at risk"
            2                   =    "At risk"
            9                   =    "Do not Know/Not Sure Or Refused/Missing"
            ;
      VALUE _EDUCAG
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Did not graduate High School"
            2                   =    "Graduated High School"
            3                   =    "Attended College or Technical School"
            4                   =    "Graduated from College or Technical School"
            9                   =    "Do not know/Not sure/Missing"
            ;
      VALUE _EXTEETH
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at risk"
            2                   =    "At risk"
            9                   =    "Do not Know/Not Sure Or Refused/Missing"
            ;
      VALUE _HIGHRSK
            .                   =    "Missing or Age greater than 64"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at Risk"
            2                   =    "At Risk"
            9                   =    "Do not Know/Not Sure/Refused"
            ;
      VALUE _IMPAGE
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            18      - 24        =    "Age 18 to 24"
            25      - 34        =    "Age 25 to 34"
            35      - 44        =    "Age 35 to 44"
            45      - 54        =    "Age 45 to 54"
            55      - 64        =    "Age 55 to 64"
            65      - 99        =    "Age 65 or older"
            ;
      VALUE _IMPNPH
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Number of phones"
            2                   =    " "
            3                   =    " "
            4                   =    " "
            5                   =    " "
            6                   =    " "
            7                   =    " "
            8                   =    "8 or more"
            ;
      VALUE _INCOMG
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Less than $15,000"
            2                   =    "$15,000 to less than $25,000"
            3                   =    "$25,000 to less than $35,000"
            4                   =    "$35,000 to less than $50,000"
            5                   =    "$50,000 or more"
            9                   =    "Do not know/Not sure/Missing"
            ;
      VALUE _LTASTHM
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not At Risk"
            2                   =    "At Risk"
            9                   =    "Do not Know/Not Sure Or Refused/Missing"
            ;
      VALUE _MRACE
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "White only"
            2                   =    "Black or African American only"
            3                   =    "Asian Only"
            4                   =    "Native Hawaiian or other Pacific Islander only"
            5                   =    "American Indian or Alaskan Native only"
            6                   =    "Other race only"
            7                   =    "Multiracial"
            77                  =    "Do not know/Not sure"
            99                  =    "Refused"
            ;
      VALUE _PNEUMOC
            .                   =    "Missing or Age Less Than 65"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at risk"
            2                   =    "At risk"
            9                   =    "Do not Know/Not Sure Or Refused/Missing"
            ;
      VALUE _PRACE
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "White"
            2                   =    "Black or African American"
            3                   =    "Asian"
            4                   =    "Native Hawaiian or other Pacific Islander"
            5                   =    "American Indian or Alaskan Native"
            6                   =    "Other race"
            7                   =    "No preferred race"
            8                   =    "Multiracial but preferred race not asked"
            77                  =    "Do not know/Not sure"
            99                  =    "Refused"
            ;
      VALUE _RACE_G
            .                   =    "Do not know/Not sure/Refused component question"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "White - Non-Hispanic"
            2                   =    "Black - Non-Hispanic"
            3                   =    "Hispanic"
            4                   =    "Other race only, Non-Hispanic"
            5                   =    "Multiracial, Non-Hispanic"
            ;
      VALUE _RFBLDST
            .                   =    "Missing or Age less than 50"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at Risk"
            2                   =    "At Risk"
            9                   =    "Do not Know/Not Sure/Refused"
            ;
      VALUE _RFFRARM
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at Risk"
            2                   =    "At Risk"
            9                   =    "Do not Know/Not Sure/Refused"
            ;
      VALUE _RFHLTH
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at Risk"
            2                   =    "At Risk"
            9                   =    "Do not Know/Not Sure Or Refused/Missing"
            ;
      VALUE _RFMAM2Y
            .                   =    "Missing or Age less than 40 or Male"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at Risk"
            2                   =    "At Risk"
            9                   =    "Do not Know/Not Sure/Refused"
            ;
      VALUE _RFPSA2Y
            .                   =    "Missing or Age less than 40 or Female"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not at Risk"
            2                   =    "At Risk"
            9                   =    "Do not Know/Not Sure/Refused"
            ;
      VALUE _STATE
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Alabama"
            2                   =    "Alaska"
            4                   =    "Arizona"
            5                   =    "Arkansas"
            6                   =    "California"
            8                   =    "Colorado"
            9                   =    "Connecticut"
            10                  =    "Delaware"
            11                  =    "District of Columbia"
            12                  =    "Florida"
            13                  =    "Georgia"
            15                  =    "Hawaii"
            16                  =    "Idaho"
            17                  =    "Illinois"
            18                  =    "Indiana"
            19                  =    "Iowa"
            20                  =    "Kansas"
            21                  =    "Kentucky"
            22                  =    "Louisiana"
            23                  =    "Maine"
            24                  =    "Maryland"
            25                  =    "Massachusetts"
            26                  =    "Michigan"
            27                  =    "Minnesota"
            28                  =    "Mississippi"
            29                  =    "Missouri"
            30                  =    "Montana"
            31                  =    "Nebraska"
            32                  =    "Nevada"
            33                  =    "New Hampshire"
            34                  =    "New Jersey"
            35                  =    "New Mexico"
            36                  =    "New York"
            37                  =    "North Carolina"
            38                  =    "North Dakota"
            39                  =    "Ohio"
            40                  =    "Oklahoma"
            41                  =    "Oregon"
            42                  =    "Pennsylvania"
            44                  =    "Rhode Island"
            45                  =    "South Carolina"
            46                  =    "South Dakota"
            47                  =    "Tennessee"
            48                  =    "Texas"
            49                  =    "Utah"
            50                  =    "Vermont"
            51                  =    "Virginia"
            53                  =    "Washington"
            54                  =    "West Virginia"
            55                  =    "Wisconsin"
            56                  =    "Wyoming"
            66                  =    "Guam"
            72                  =    "Puerto Rico"
            78                  =    "Virgin Islands"
            ;
      VALUE _TOTINDA
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Had physical activity or exercise"
            2                   =    "No physical activity or exercise in last 30 days"
            9                   =    "Do not know/Refused/Missing"
            ;
      VALUE $IMONTH
            "1"                 =    "January"
            "10"                =    "October"
            "11"                =    "November"
            "12"                =    "December"
            "2"                 =    "February"
            "3"                 =    "March"
            "4"                 =    "April"
            "5"                 =    "May"
            "6"                 =    "June"
            "7"                 =    "July"
            "8"                 =    "August"
            "9"                 =    "September"
            ;
 run;
