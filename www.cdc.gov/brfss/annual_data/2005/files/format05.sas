 PROC FORMAT;
      VALUE AGE
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            18      - 24        =    "Age 18 - 24"
            25      - 34        =    "Age 25 - 34"
            35      - 44        =    "Age 35 - 44"
            45      - 54        =    "Age 45 - 54"
            55      - 64        =    "Age 55 - 64"
            65      - 99        =    "Age 65 or older"
            ;
      VALUE ALC4DAY
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            101     - 199       =    "Days per week"
            201     - 299       =    "Days in past 30"
            777                 =    "Don’t know/Not sure"
            888                 =    "No drinks in past 30 days"
            999                 =    "Refused"
            ;
      VALUE ARTHEDU
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE ARTHEXER
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE ARTHWGT
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
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
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE ASACTLIM
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 365       =    "Number of days"
            777                 =    "Don’t know/Not sure"
            888                 =    "None"
            999                 =    "Refused"
            ;
      VALUE ASATTACK
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE ASDRVIST
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 87        =    "Number of visits"
            88                  =    "None"
            98                  =    "Don’t know/Not sure"
            99                  =    "Refused"
            ;
      VALUE ASERVIST
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 87        =    "Number of visits"
            88                  =    "None"
            98                  =    "Don’t know/Not sure"
            99                  =    "Refused"
            ;
      VALUE ASINHALR
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "One to four times(in the past 30 days)"
            2                   =    "Five to fourteen times(in the past 30 days)"
            3                   =    "Fifteen to twenty-nine times(in the past 30 days)"
            4                   =    "Thirty to fifty-nine times(in the past 30 days)"
            5                   =    "Sixty to ninety-nine times(in the past 30 days)"
            6                   =    "More than 100 times(in the past 30 days)"
            7                   =    "Don’t know/Not sure"
            8                   =    "Never(incl no attack in past 30 days)"
            9                   =    "Refused"
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
            7                   =    "Don’t know/Not sure"
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
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE ASRCHKUP
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 87        =    "Number of visits"
            88                  =    "None"
            98                  =    "Don’t know/Not sure"
            99                  =    "Refused"
            ;
      VALUE AST2HMA
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE ASTH2MED
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "1-14 days"
            2                   =    "15-24 days"
            3                   =    "25-30 days"
            7                   =    "Don’t know/Not sure"
            8                   =    "Never"
            9                   =    "Refused"
            ;
      VALUE ASTHMAGE
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            11      - 96        =    "Age 11 or older"
            97                  =    "Age 10 or younger"
            98                  =    "Don’t know/Not sure"
            99                  =    "Refused"
            ;
      VALUE ASTHNOW
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
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
            7                   =    "Don’t know/Not sure"
            8                   =    "Not at any time"
            9                   =    "Refused"
            ;
      VALUE AVE2DRNK
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of drinks"
            77                  =    "Don’t know/Not sure"
            78      - 98        =    "Number of drinks"
            99                  =    "Refused"
            ;
      VALUE BLDSTOOL
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
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
            777                 =    "Don’t know/Not sure"
            888                 =    "Never"
            999                 =    "Refused"
            ;
      VALUE BLOODCHO
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE BP4HIGH
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "Yes, but female told only during pregnancy"
            3                   =    "No"
            4                   =    "Told borderline high or pre-hypertensive"
            7                   =    "Don´t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE BPALCADV
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            3                   =    "Do not drink"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE BPALCHOL
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            3                   =    "Do not drink"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE BPEATADV
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE BPEATHBT
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE BPEXER
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE BPEXRADV
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE BPHI2MR
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "Yes, but female told only during pregnancy"
            3                   =    "No"
            4                   =    "Told borderline or pre-hypertensive"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE BPMEDADV
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE BPMEDS
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE BPSALT
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            3                   =    "Do not use salt"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE BPSLTADV
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            3                   =    "Do not use salt"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE CARROTS
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            101     - 199       =    "Per day"
            201     - 299       =    "Per week"
            301     - 399       =    "Per month"
            401     - 499       =    "Per year"
            555                 =    "Never"
            777                 =    "Don’t know/Not sure"
            999                 =    "Refused"
            ;
      VALUE CASTH2DX
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE CASTH2NO
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE CELLFON
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not a cellular phone"
            2                   =    "Yes"
            ;
      VALUE CHECKUP
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Within the past year (< 12 months ago)"
            2                   =    "Within the past 2 years (1 year but < 2 years ago)"
            3                   =    "Within the past 5 years (2 years but < 5 years ago)"
            4                   =    "5 or more years ago"
            7                   =    "Don’t know/Not sure"
            8                   =    "Never"
            9                   =    "Refused"
            ;
      VALUE CHILDREN
            .                   =    "Not asked or Missing"
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
            77                  =    "Don’t know/Not sure"
            88                  =    "None"
            98                  =    "Never heard of hemoglobin “A one C” test"
            99                  =    "Refused"
            ;
      VALUE CHOLCHK
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Within the past year (< 12 months ago)"
            2                   =    "Within the past 2 years (1 year but < 2 years ago)"
            3                   =    "Within the past 5 years (2 years but < 5 years ago)"
            4                   =    "5 or more years ago"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE CIFLUMST
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE CIFLUSHT
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE CTELENUM
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            ;
      VALUE CVD3CRHD
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE CVD3INFR
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE CVD3STRK
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE CVDASPRN
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
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
            7                   =    "Don’t know/Not sure"
            8                   =    "Never"
            9                   =    "Refused"
            ;
      VALUE DIA2BETE
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "Yes, but female told only during pregnancy"
            3                   =    "No"
            4                   =    "No, pre-diabetes or boarderline diabetes"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE DIAB2AGE
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 97        =    "Age in years"
            98                  =    "Don’t know/Not sure"
            99                  =    "Refused"
            ;
      VALUE DIABEDU
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE DIABEYE
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE DIABPILL
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE DIGRECEX
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
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
            77                  =    "Don’t know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE DRADVICE
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes, lose weight"
            2                   =    "Yes, gain weight"
            3                   =    "Yes, maintain current weight"
            4                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
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
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE DRNK25GE
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of Times"
            77                  =    "Don’t know/Not Sure"
            78      - 87        =    "Number of times"
            88                  =    "None"
            89      - 98        =    "Number of times"
            99                  =    "Refused"
            ;
      VALUE DRNK4ANY
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE DROCDY2_
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            0                   =    "No Drink-Occasions per day"
            1       - 899       =    "Drink-Occasions per day"
            900                 =    "Don’t know/Not Sure Or Refused/Missing"
            ;
      VALUE EDUCA
            .                   =    "Not asked or Missing"
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
      VALUE EMPLOY
            .                   =    "Not asked or Missing"
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
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
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
            7                   =    "Don’t know/Not sure"
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
            777                 =    "Don’t know/Not sure"
            888                 =    "Never"
            999                 =    "Refused"
            ;
      VALUE FEETCHK
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of times"
            77                  =    "Don’t know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE FEETSORE
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE FEWCAL
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes, fewer calories"
            2                   =    "Yes, less fat"
            3                   =    "Yes, fewer calories and less fat"
            4                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE FIRSTAID
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Take them the hospital"
            2                   =    "Tell them to call their doctor"
            3                   =    "Call 911"
            4                   =    "Call their spouse or a family member"
            5                   =    "Do something else"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE FLU2SPRY
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE FLU3SHOT
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
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
      VALUE FRUIT
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            101     - 199       =    "Per day"
            201     - 299       =    "Per week"
            301     - 399       =    "Per month"
            401     - 499       =    "Per year"
            555                 =    "Never"
            777                 =    "Don’t know/Not sure"
            999                 =    "Refused"
            ;
      VALUE FRUITJUI
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            101     - 199       =    "Per day"
            201     - 299       =    "Per week"
            301     - 399       =    "Per month"
            401     - 499       =    "Per year"
            555                 =    "Never"
            777                 =    "Don’t know/Not sure"
            999                 =    "Refused"
            ;
      VALUE GREENSAL
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            101     - 199       =    "Per day"
            201     - 299       =    "Per week"
            301     - 399       =    "Per month"
            401     - 499       =    "Per year"
            555                 =    "Never"
            777                 =    "Don’t know/Not sure"
            999                 =    "Refused"
            ;
      VALUE HA1SYMP
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HA2SYMP
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HA3SYMP
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HA4SYMP
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HA5SYMP
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HA6SYMP
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HAD2HYST
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HAD2PAP
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HAD3SIGM
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE HADMAM
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HAREHAB
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE HAV2ARTH
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE HECHMHOM
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 365       =    "Number of days"
            777                 =    "Don’t know/Not sure"
            888                 =    "None"
            999                 =    "Refused"
            ;
      VALUE HECHMYRD
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 365       =    "Number of days"
            555                 =    "Do not have a yard or garden"
            777                 =    "Don’t know/Not sure"
            888                 =    "None"
            999                 =    "Refused"
            ;
      VALUE HEIGHT
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            200     - 711       =    "Height (ft/inches)"
            7777                =    "Don’t know/Not sure"
            9000    - 9998      =    "Height (meters/centimeters)"
            9999                =    "Refused"
            ;
      VALUE HEWTRDRK
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Unfiltered tap water"
            2                   =    "Filtered tap water"
            3                   =    "Bottled or vended water"
            4                   =    "Water from another source"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HEWTRSRC
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "A city, county, or town water system"
            2                   =    "A small water system operated by a home association"
            3                   =    "A private well serving your home"
            4                   =    "Other source"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HISP2ANC
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE HIV2RISK
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE HIV5TST
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE HLTHPLAN
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE HOUSESMK
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Smoking is not allowed anywhere inside your home"
            2                   =    "Smoking is allowed in some places or at some times"
            3                   =    "Smoking is allowed anywhere inside the home"
            4                   =    "There are no rules about smoking inside the home"
            7                   =    "Don’t know/Not sure"
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
            7                   =    "Don’t know/Not sure"
            8                   =    "Never"
            9                   =    "Refused"
            ;
      VALUE HT3IN
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 998       =    "Height in inches"
            999                 =    "Don’t know/Refused/Missing"
            ;
      VALUE HT3M
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 998       =    "Height in meters [2 implied decimal places]"
            999                 =    "Don’t know/Refused/Missing"
            ;
      VALUE IAQCODTR
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE IAQGASAP
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE IAQHTDYS
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 365       =    "Number of days"
            555                 =    "Do not have"
            777                 =    "Don’t know/Not sure"
            888                 =    "None"
            999                 =    "Refused"
            ;
      VALUE IAQHTSRC
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE IAQMOLD
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE IN2COME
            .                   =    "Not asked or Missing"
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
            77                  =    "Don’t know/Not sure"
            99                  =    "Refused"
            ;
      VALUE INDOORS
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
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
      VALUE IPV12PVL
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE IPVPHHRT
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE IPVPHYVL
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE IPVRELTN
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Boyfriend"
            2                   =    "Girlfriend"
            3                   =    "Former boyfriend"
            4                   =    "Former girlfriend"
            5                   =    "Male you were dating"
            6                   =    "Female you were dating"
            7                   =    "Husband or male live-in partner"
            8                   =    "Former husband or former male live-in partner"
            9                   =    "Wife or female live-in partner"
            10                  =    "Former wife or former female live-in partner"
            11                  =    "Other"
            77                  =    "Don’t know/Not sure"
            99                  =    "Refused"
            ;
      VALUE IPVSXINJ
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE IPVTHRAT
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE IPVUWSEX
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE JOBACTIV
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Mostly sitting or standing"
            2                   =    "Mostly walking"
            3                   =    "Mostly heavy labor or physically demanding work"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE JOIN2TRT
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE JOINTSYM
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
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
            7                   =    "Don’t know/Not sure"
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
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE LAST3DEN
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Within the past year (< 12 months ago)"
            2                   =    "Within the past 2 years (1 year but < 2 years ago)"
            3                   =    "Within the past 5 years (2 years but < 5 years ago)"
            4                   =    "5 or more years ago"
            7                   =    "Don’t know/Not sure"
            8                   =    "Never"
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
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE LMT2JOIN
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE LOSEWT
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
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
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE MAINTAIN
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE MARITAL
            .                   =    "Not asked or Missing"
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
      VALUE MAXDRNKS
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of drinks"
            77                  =    "Don’t know/Not sure"
            78      - 98        =    "Number of drinks"
            99                  =    "Refused"
            ;
      VALUE MEDCOST
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE MENTHLTH
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 30        =    "Number of days"
            77                  =    "Don’t know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE MODCAT_
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Meet recommendations for moderate physical activity"
            2                   =    "Insufficient activity to meet moderate recommendations"
            3                   =    "No moderate physical activity"
            9                   =    "Don’t know/Not sure/Refused/Missing"
            ;
      VALUE MODPACT
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE MODPADAY
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 7         =    "Days per week"
            77                  =    "Don’t know/Not sure"
            88                  =    "Do less than 10 mins of moderate activity at a time"
            99                  =    "Refused"
            ;
      VALUE MODPATIM
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            10      - 759       =    "Hours and minutes per day"
            777                 =    "Don’t know/Not sure"
            800     - 959       =    "Hours and minutes per day"
            999                 =    "Refused"
            ;
      VALUE MSCODE
            .                   =    "GU, PR, VI"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "In the center city of an MSA"
            2                   =    "Outside the center city of an MSA but inside the county containing the center city"
            3                   =    "Inside a suburban county of the MSA"
            4                   =    "In an MSA that has no center city"
            5                   =    "Not in an MSA"
            ;
      VALUE NUM2HHOL
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
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
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE NY
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "No"
            2                   =    "Yes"
            9                   =    "Don’t know/Not Sure Or Refused/Missing"
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
            7                   =    "Don’t know/Not sure"
            8                   =    "Multiracial but preferred race not asked"
            9                   =    "Refused"
            ;
      VALUE OSTPROS
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE PACAT_
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Meet recommendations for moderate and vigorous physical activity"
            2                   =    "Meet recommendations for vigorous physical activity"
            3                   =    "Meet recommendations for moderate physical activity"
            4                   =    "Insufficient activity to meet moderate or vigorous recommendations"
            5                   =    "No moderate or vigorous physical activity"
            9                   =    "Don’t know/Not sure/Refused/Missing"
            ;
      VALUE PAIN2ACT
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 30        =    "Number of days"
            77                  =    "Don’t know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE PAIN30DY
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE PERS2DOC
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes, only one"
            2                   =    "More than one"
            3                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE PHYACT
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE PHYSHLTH
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 30        =    "Number of days"
            77                  =    "Don’t know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE PNEU3VAC
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE POORHLTH
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 30        =    "Number of days"
            77                  =    "Don’t know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE POTATOES
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            101     - 199       =    "Per day"
            201     - 299       =    "Per week"
            301     - 399       =    "Per month"
            401     - 499       =    "Per year"
            555                 =    "Never"
            777                 =    "Don’t know/Not sure"
            999                 =    "Refused"
            ;
      VALUE PRECALL
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "To be called"
            3                   =    "Pre-screened as non-working number"
            4                   =    "cell phone - PRO-T-S"
            5                   =    "Pre-screened as business number"
            6                   =    "cell phone - Interviewer"
            ;
      VALUE PREGNANT
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE PROFEXAM
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE PROSTATE
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE PSATEST
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
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
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE PVTRESID
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            ;
      VALUE QL2ACTLM
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE QL2HLTH
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 30        =    "Number of days"
            77                  =    "Don’t know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE QL2MENTL
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 30        =    "Number of days"
            77                  =    "Don’t know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE QL2REST
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 30        =    "Number of days"
            77                  =    "Don’t know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE QL2STRES
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 30        =    "Number of days"
            77                  =    "Don’t know/Not sure"
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
            .                   =    "Missing"
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
            9                   =    "Don’t know/Not sure/Refused"
            ;
      VALUE RCHISLAT
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE RCSBRACE
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "White"
            2                   =    "Black or African American"
            3                   =    "Asian"
            4                   =    "Native Hawaiian or other Pacific Islander"
            5                   =    "American Indian or Alaskan Native"
            6                   =    "Other"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE RCSGENDR
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Boy"
            2                   =    "Girl"
            9                   =    "Refused"
            ;
      VALUE RCSRELTN
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Parent (mother or father),biologic, step or adoptive"
            2                   =    "Grandparent"
            3                   =    "Foster parent or guardian"
            4                   =    "Sibling (brother or sister), biologic,step or adoptive"
            5                   =    "Other relative"
            6                   =    "Not related in any way"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE RMVTEETH
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "1 to 5"
            2                   =    "6 or more, but not all"
            3                   =    "All"
            7                   =    "Don’t know/Not sure"
            8                   =    "None"
            9                   =    "Refused"
            ;
      VALUE RR1EMTSM
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Never"
            2                   =    "No more than once a year"
            3                   =    "At least once a month"
            4                   =    "At least once a week"
            5                   =    "At least once a day"
            6                   =    "At least once an hour"
            7                   =    "Don’t know/Not Sure"
            8                   =    "Constantly"
            9                   =    "Refused"
            ;
      VALUE RR1PHYSM
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Never"
            2                   =    "No more than once a year"
            3                   =    "At least once a month"
            4                   =    "At least once a week"
            5                   =    "At least once a day"
            6                   =    "At least once an hour"
            7                   =    "Don’t know/Not Sure"
            8                   =    "Constantly"
            9                   =    "Refused"
            ;
      VALUE SCDSCMED
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of visits (01-76)"
            77                  =    "Don’t know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE SCDSCMTH
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of visits (01-76)"
            77                  =    "Don’t know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE SCGETCAR
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of times (01-76)"
            77                  =    "Don’t know/Not sure"
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
            77                  =    "Don’t know/Not sure"
            99                  =    "Refused"
            ;
      VALUE SCQITSMK
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 76        =    "Number of visits (01-76)"
            77                  =    "Don’t know/Not sure"
            88                  =    "None"
            99                  =    "Refused"
            ;
      VALUE SEX
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Male"
            2                   =    "Female"
            ;
      VALUE SMKPUBLC
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Not allowed in any public areas"
            2                   =    "Allowed in some public areas"
            3                   =    "Allowed in all public areas"
            4                   =    "No official policy"
            7                   =    "Don’t know/Not sure"
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
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE SMOK100_
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE SMOK2DAY
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Every day"
            2                   =    "Some days"
            3                   =    "Not at all"
            7                   =    "Don´t Know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE STOP2SMK
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE STR1SYMP
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE STR2SYMP
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE STR3SYMP
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE STR4SYMP
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE STR5SYMP
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE STR6SYMP
            .                   =    "Not asked, Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE STREHAB
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE SVEANOSX
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE SVEHDSEX
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE SVGENDER
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Male"
            2                   =    "Female"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE SVHADSEX
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE SVNOSEX
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE SVNOTCH
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE SVRELATN
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Complete stranger"
            2                   =    "A person known < 24 hours"
            3                   =    "Acquaintance"
            4                   =    "Friend"
            5                   =    "Date"
            6                   =    "Current boyfriend/girlfriend"
            7                   =    "Former boyfriend/girlfriend"
            8                   =    "Spouse or live-in partner"
            9                   =    "Ex-spouse or ex live-in partner"
            10                  =    "Co-worker"
            11                  =    "Neighbor"
            12                  =    "Parent"
            13                  =    "Step-parent"
            14                  =    "Parent's partner"
            15                  =    "Other relative"
            16                  =    "Other non-relative"
            17                  =    "Multiple perpetrators"
            77                  =    "Don’t know/Not sure"
            99                  =    "Refused"
            ;
      VALUE SVSEXTCH
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE TEL2SERV
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE TOLD2HI
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE UNK6ADIG
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            11985   - 772005    =    "Code month and year"
            777777              =    "Don’t know/Not sure"
            991985  - 992005    =    "Code month and year"
            999999              =    "Refused"
            ;
      VALUE USEEQUIP
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE VEGETABL
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            101     - 199       =    "Servings per day"
            201     - 299       =    "Servings per week"
            301     - 399       =    "Servings per month"
            401     - 499       =    "Servings per year"
            555                 =    "Never"
            777                 =    "Don’t know/Not sure"
            999                 =    "Refused"
            ;
      VALUE VET2STAT
            .                   =    "Not asked, Module not used, or Missing"
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
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE VIATWORK
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE VICATRCT
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "Yes, but had them removed"
            3                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE VIDIFCLT
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "No difficulty"
            2                   =    "A little difficulty"
            3                   =    "Moderate difficulty"
            4                   =    "Extreme difficulty"
            5                   =    "Unable to do because of eyesight"
            6                   =    "Unable to do for other reasons"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE VIEYEEXM
            .                   =    "Module not used or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Within past month"
            2                   =    "Within past year"
            3                   =    "Within past 2 years"
            4                   =    "2 or more years ago"
            5                   =    "Never"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE VIGCAT_
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Meet recommendations for vigorous physical activity"
            2                   =    "Insufficient activity to meet vigorous recommendations"
            3                   =    "No vigorous physical activity"
            9                   =    "Don’t know/Not sure/Refused/Missing"
            ;
      VALUE VIGLUCMA
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE VIGPACT
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE VIGPADAY
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 7         =    "Days per week"
            77                  =    "Don’t know/Not sure"
            88                  =    "Do less than 10 mins of vigorous activity at a time"
            99                  =    "Refused"
            ;
      VALUE VIGPATIM
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            10      - 759       =    "Hours and minutes per day"
            777                 =    "Don’t know/Not sure"
            800     - 959       =    "Hours and minutes per day"
            999                 =    "Refused"
            ;
      VALUE VIINSUR
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE VIMACDEG
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            7                   =    "Don’t know/Not Sure"
            9                   =    "Refused"
            ;
      VALUE VIMISWRK
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 554       =    "Number of days"
            555                 =    "None"
            777                 =    "Don’t know/Not sure"
            999                 =    "Refused"
            ;
      VALUE VINOCARE
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Cost/insurance"
            2                   =    "Do not have/know an eye doctor"
            3                   =    "Cannot get to the office/clinic (too far away,no transportation)"
            4                   =    "Could not get an appt"
            5                   =    "No reason to go"
            6                   =    "Have not thought of it"
            7                   =    "Other"
            8                   =    "Not Applicable (Blind)"
            77                  =    "Don’t know/Not Sure"
            99                  =    "Refused"
            ;
      VALUE VIPRFVST
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Within the past month (< 1 month ago)"
            2                   =    "Within the past year (1+ month but < 12 months ago)"
            3                   =    "Within the past 2 years (1+ years but < 2 years ago)"
            4                   =    "2 or more years ago"
            5                   =    "Never"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE VIREADIF
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "No difficulty"
            2                   =    "A little difficulty"
            3                   =    "Moderate difficulty"
            4                   =    "Extreme difficulty"
            5                   =    "Unable to do because of eyesight"
            6                   =    "Unable to do for other reasons"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE VITELDIF
            .                   =    "Not asked, Module not used, or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "No difficulty"
            2                   =    "A little difficulty"
            3                   =    "Moderate difficulty"
            4                   =    "Extreme difficulty"
            5                   =    "Unable to do because of eyesight"
            6                   =    "Unable to do for other reasons"
            7                   =    "Don’t know/Not sure"
            9                   =    "Refused"
            ;
      VALUE WEIGHT
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            50      - 999       =    "Weight (pounds)"
            7777                =    "Don’t know/Not sure"
            9000    - 9998      =    "Weight (kilograms)"
            9999                =    "Refused"
            ;
      VALUE WHR7TST
            .                   =    "Not asked or Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Private doctor or HMO"
            2                   =    "Counseling and testing site"
            3                   =    "Hospital"
            4                   =    "Clinic"
            5                   =    "In a jail or prison (or other correctional facility)"
            6                   =    "Home"
            7                   =    "Somewhere else"
            8                   =    "Drug treatment facility"
            77                  =    "Don’t know/Not sure"
            99                  =    "Refused"
            ;
      VALUE WT2KG
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 99998     =    "Weight in kilograms [2 implied decimal places]"
            99999               =    "Don’t know/Refused/Missing"
            ;
      VALUE _2AIDTST
            .                   =    "Missing or Age greater than 64"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            9                   =    "Don’t know/Not Sure/Refused"
            ;
      VALUE _2DENSTR
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Listed"
            2                   =    "Unlisted"
            3                   =    "Zero block"
            ;
      VALUE _2PNEUMO
            .                   =    "Missing or Age Less Than 65"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            9                   =    "Don’t know/Not Sure Or Refused/Missing"
            ;
      VALUE _2RACEG
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Non-Hispanic White"
            2                   =    "Non-White or Hispanic"
            9                   =    "Don’t know/Not sure/Refused"
            ;
      VALUE _2RACEGR
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "White only, Non-Hispanic"
            2                   =    "Black only, Non-Hispanic"
            3                   =    "Other race only, Non-Hispanic"
            4                   =    "Multiracial, Non-Hispanic"
            5                   =    "Hispanic"
            9                   =    "Don’t know/Not sure/Refused"
            ;
      VALUE _3DRNKDY
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            0                   =    "Did not drink"
            1       - 9899      =    "Number of drinks per day"
            9900                =    "Don’t know/Not sure/Refused/Missing"
            ;
      VALUE _3DRNKMO
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            0                   =    "Did not drink in the past month"
            1       - 9998      =    "Number of Drinks"
            9999                =    "Don’t know/Refused/Missing"
            ;
      VALUE _3FLSHOT
            .                   =    "Missing or Age Less Than 65"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            9                   =    "Don’t know/Not Sure Or Refused/Missing"
            ;
      VALUE _3RFBING
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "No"
            2                   =    "Yes"
            9                   =    "Don’t know/Refused/Missing"
            ;
      VALUE _3RFDRHV
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "No"
            2                   =    "Yes"
            9                   =    "Don’t know/Refused/Missing"
            ;
      VALUE _3RFDRMN
            .                   =    "Respondent is female"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "No"
            2                   =    "Yes"
            9                   =    "Don’t know/Refused/Missing"
            ;
      VALUE _3RFDRWM
            .                   =    "Respondent is male"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "No"
            2                   =    "Yes"
            9                   =    "Don’t know/Refused/Missing"
            ;
      VALUE _3RFSMOK
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "No"
            2                   =    "Yes"
            9                   =    "Don’t know/Refused/Missing"
            ;
      VALUE _3SMOKER
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Current smoker - now smokes every day"
            2                   =    "Current smoker - now smokes some days"
            3                   =    "Former smoker"
            4                   =    "Never smoked"
            9                   =    "Don’t know/Refused/Missing"
            ;
      VALUE _4BMI
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1       - 9998      =    "1 or greater"
            9999                =    "Don’t know/Refused/Missing"
            ;
      VALUE _4RFBMI
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "No"
            2                   =    "Yes"
            9                   =    "Don’t know/Refused/Missing"
            ;
      VALUE _AGE65YR
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Age 18 to 64"
            2                   =    "Age 65 or older"
            3                   =    "Don’t know/Refused/Missing"
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
            14                  =    "Don’t know/Refused/Missing"
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
            13                  =    "Age 65 or older"
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
      VALUE _ASTHMST
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Current"
            2                   =    "Former"
            3                   =    "Never"
            9                   =    "Don’t know/Not Sure Or Refused/Missing"
            ;
      VALUE _BMI4CAT
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Neither overweight nor obese"
            2                   =    "Overweight"
            3                   =    "Obese"
            9                   =    "Don’t know/Refused/Missing"
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
            9                   =    "Don’t know/Not sure/Missing"
            ;
      VALUE _CHOLCHK
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Had cholesterol checked in past 5 years."
            2                   =    "Did not have cholesterol checked in past 5 years"
            3                   =    "Have never had cholesterol checked"
            9                   =    "Don’t know/Not Sure Or Refused/Missing"
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
      VALUE _CRACE
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
            77                  =    "Don’t know/Not sure"
            99                  =    "Refused"
            ;
      VALUE _DRDXART
            .                   =    "Don´t know/Not Sure/Refused/Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Diagnosed with arthritis"
            2                   =    "Not diagnosed with arthritis"
            ;
      VALUE _EDUCAG
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Did not graduate High School"
            2                   =    "Graduated High School"
            3                   =    "Attended College or Technical School"
            4                   =    "Graduated from College or Technical School"
            9                   =    "Don’t know/Not sure/Missing"
            ;
      VALUE _FRTINDX
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Less than once per day or never"
            2                   =    "Once but less than 3 times per day"
            3                   =    "3 but less than 5 times per day"
            4                   =    "5 or more times per day"
            9                   =    "Don’t know/Refused/Missing"
            ;
      VALUE _FV5SRV
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Consume < 5 times per day"
            2                   =    "Consume 5 or more times per day"
            9                   =    "Don’t know/Not sure/Missing"
            ;
      VALUE _HIGHRSK
            .                   =    "Missing or Age greater than 64"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "No"
            2                   =    "Yes"
            9                   =    "Don’t know/Not Sure/Refused"
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
            9                   =    "Don’t know/Not sure/Missing"
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
            77                  =    "Don’t know/Not sure"
            99                  =    "Refused"
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
            77                  =    "Don’t know/Not sure"
            99                  =    "Refused"
            ;
      VALUE _RACE_G
            .                   =    "Don’t know/Not sure/Refused component question"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "White - Non-Hispanic"
            2                   =    "Black - Non-Hispanic"
            3                   =    "Hispanic"
            4                   =    "Other race only, Non-Hispanic"
            5                   =    "Multiracial, Non-Hispanic"
            ;
      VALUE _RFCHOL
            .                   =    "Missing"
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "No"
            2                   =    "Yes"
            9                   =    "Don’t know/Not Sure Or Refused/Missing"
            ;
      VALUE _RFNOPA
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            9                   =    "Don’t know/Not Sure/Refused/Missing"
            ;
      VALUE _RFPAMOD
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            9                   =    "Don’t know/Not Sure/Refused/Missing"
            ;
      VALUE _RFPAREC
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Meet physical activity recommendations"
            2                   =    "Insufficient physical activity"
            3                   =    "No physical activity"
            9                   =    "Don’t know/Not Sure/Refused/Missing"
            ;
      VALUE _RFPAVIG
            .D                  =    "DK/NS"
            .R                  =    "REFUSED"
            1                   =    "Yes"
            2                   =    "No"
            9                   =    "Don’t know/Not Sure/Refused/Missing"
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
            9                   =    "Don’t know/Refused/Missing"
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
