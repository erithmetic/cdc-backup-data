 PROC FORMAT;
      VALUE AGE
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            18      - 24        =    'Age 18 - 24'
            25      - 34        =    'Age 25 - 34'
            35      - 44        =    'Age 35 - 44'
            45      - 54        =    'Age 45 - 54'
            55      - 64        =    'Age 55 - 64'
            65      - 99        =    'Age 65 or older'
            ;
      VALUE ALC3DAY
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            101     - 199       =    'Days per week'
            201     - 299       =    'Days in past 30'
            777                 =    'Do not know/Not sure'
            888                 =    'No drinks in past 30 days'
            999                 =    'Refused'
            ;
      VALUE ARTH2DIS
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE ARTHEDU
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE ARTHEXER
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE ARTHWGT
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE ARTTODAY
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'I can do everything I would like to do'
            2                   =    'I can do most things I would like to do'
            3                   =    'I can do some things I would like to do'
            4                   =    'I can hardly do anything I would like to do'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE ASACTLIM
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 365       =    'Number of days'
            777                 =    'Do not know/Not sure'
            888                 =    'None'
            999                 =    'Refused'
            ;
      VALUE ASATTACK
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE ASDRVIST
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 87        =    'Number of visits'
            88                  =    'None'
            98                  =    'Do not know/Not sure'
            99                  =    'Refused'
            ;
      VALUE ASERVIST
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 87        =    'Number of visits'
            88                  =    'None'
            98                  =    'Do not know/Not sure'
            99                  =    'Refused'
            ;
      VALUE ASNOSLEP
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'One or two'
            2                   =    'Three to four'
            3                   =    'Five'
            4                   =    'Six to ten'
            5                   =    'More than ten'
            7                   =    'Do not know/Not sure'
            8                   =    'None'
            9                   =    'Refused'
            ;
      VALUE ASPUNSAF
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes, not stomach related'
            2                   =    'Yes, stomach problems'
            3                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE ASRCHKUP
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 87        =    'Number of visits'
            88                  =    'None'
            98                  =    'Do not know/Not sure'
            99                  =    'Refused'
            ;
      VALUE AST2HMA
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE ASTHMAGE
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            11      - 96        =    'Age 11 or older'
            97                  =    'Age 10 or younger'
            98                  =    'Do not know/Not sure'
            99                  =    'Refused'
            ;
      VALUE ASTHMEDS
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Less than once a week'
            2                   =    'Once or twice a week'
            3                   =    'More than 2 times a week, but not every day'
            4                   =    'Once every day'
            5                   =    '2 or more times every day'
            7                   =    'Do not know/Not sure'
            8                   =    'Did not take any'
            9                   =    'Refused'
            ;
      VALUE ASTHNOW
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE ASYMPTOM
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Less than once a week'
            2                   =    'Once or twice a week'
            3                   =    'More that 2 times a week, but not every day'
            4                   =    'Every day, but not all the time'
            5                   =    'Every day, all the time'
            7                   =    'Do not know/Not sure'
            8                   =    'Not at any time'
            9                   =    'Refused'
            ;
      VALUE AVEDRNK
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 76        =    'Number of drinks'
            77                  =    'Do not know/Not sure'
            78      - 98        =    'Number of drinks'
            99                  =    'Refused'
            ;
      VALUE BIDINOW
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Every day'
            2                   =    'Some days'
            3                   =    'Not at all'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE BIDISMK
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE BINGEDRV
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE BLDSTOOL
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE BLDSUGAR
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            101     - 199       =    'Times per day'
            201     - 299       =    'Times per week'
            301     - 399       =    'Times per month'
            401     - 499       =    'Times per year'
            777                 =    'Do not know/Not sure'
            888                 =    'Never'
            999                 =    'Refused'
            ;
      VALUE BLOODCHO
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE BP3HIGH
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'Yes, but female told only during pregnancy'
            3                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE BPMEDS
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE BUYALCH
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Someone else bought it for me or gave it to me'
            2                   =    'I bought it at a store, such as a liquor store, convenience store, or grocery store'
            3                   =    'I bought it at a restaurant, bar or public place'
            4                   =    'Other'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE CARROTS
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            101     - 199       =    'Per day'
            201     - 299       =    'Per week'
            301     - 399       =    'Per month'
            401     - 499       =    'Per year'
            555                 =    'Never'
            777                 =    'Do not know/Not sure'
            999                 =    'Refused'
            ;
      VALUE CASTHDX
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 76        =    'Number of Children'
            77                  =    'Do not know/Not sure'
            88                  =    'None'
            99                  =    'Refused'
            ;
      VALUE CASTHNOW
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 76        =    'Number of Children'
            77                  =    'Do not know/Not sure'
            88                  =    'None'
            99                  =    'Refused'
            ;
      VALUE CHILDREN
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 87        =    'Number of children'
            88                  =    'None'
            99                  =    'Refused'
            ;
      VALUE CHK2HEMO
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 76        =    'Number of times'
            77                  =    'Do not know/Not sure'
            88                  =    'None'
            98                  =    'Never heard of hemoglobin "A one C" test'
            99                  =    'Refused'
            ;
      VALUE CHOLCHK
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Within the past year (< 12 months ago)'
            2                   =    'Within the past 2 years (1 year but < 2 years ago)'
            3                   =    'Within the past 5 years (2 years but < 5 years ago)'
            4                   =    '5 or more years ago'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE CIG2AR
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE CIGARNOW
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Every day'
            2                   =    'Some days'
            3                   =    'Not at all'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE CTELENUM
            .                   =    'Unused or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            ;
      VALUE CVD01FVG
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE CVD02FAT
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE CVD03EXR
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE CVD2CRHD
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE CVD2EXRS
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE CVD2FATR
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE CVD2INFR
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE CVD2STRK
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE CVDASPRN
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE CVDFVEG
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE CVDREHAB
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE DENCLEAN
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Within the past year (< 12 months ago)'
            2                   =    'Within the past 2 years (1 year but < 2 years ago)'
            3                   =    'Within the past 5 years (2 years but < 5 years ago)'
            4                   =    '5 or more years ago'
            7                   =    'Do not know/Not sure'
            8                   =    'Never'
            9                   =    'Refused'
            ;
      VALUE DIAB2AGE
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 97        =    'Age in years'
            98                  =    'Do not know/Not sure'
            99                  =    'Refused'
            ;
      VALUE DIABEDU
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE DIABETES
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'Yes, but female told only during pregnancy'
            3                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE DIABEYE
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE DIABPILL
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE DIGRECEX
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE DOCTDIAB
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 76        =    'Number of times'
            77                  =    'Do not know/Not sure'
            88                  =    'None'
            99                  =    'Refused'
            ;
      VALUE DRADVICE
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes, lose weight'
            2                   =    'Yes, gain weight'
            3                   =    'Yes, maintain current weight'
            4                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE DRETIME
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Within the past year (< 12 months)'
            2                   =    'Within the past 2 years (1 year but < 2 years ago)'
            3                   =    'Within the past 3 years (2 years but < 3 years ago)'
            4                   =    'Within the past 5 years (3 years but < 5 years ago)'
            5                   =    '5 or more years ago'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE DRNK25GE
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 76        =    'Number of Times'
            77                  =    'Do not know/Not Sure'
            78      - 87        =    'Number of times'
            88                  =    'None'
            89      - 98        =    'Number of times'
            99                  =    'Refused'
            ;
      VALUE DRNK3ANY
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused/Missing'
            ;
      VALUE DRNKBEER
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 76        =    'Number of beers'
            77                  =    'Don’t know/Not Sure'
            78      - 87        =    'Number of beers'
            88                  =    'None'
            89      - 98        =    'Number of beers'
            99                  =    'Refused'
            ;
      VALUE DRNKLIQR
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 76        =    'Number of drinks of liquor'
            77                  =    'Don’t know/Not Sure'
            78      - 87        =    'Number of drinks of liquor'
            88                  =    'None'
            89      - 98        =    'Number of drinks of liquor'
            99                  =    'Refused'
            ;
      VALUE DRNKLOC
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'At your home, for example, your house, apartment, condominium, or dorm room'
            2                   =    'At another person’s home'
            3                   =    'At a restaurant or banquet hall'
            4                   =    'At a bar or club'
            5                   =    'At a public place, such as at a park, concert, or sporting event'
            6                   =    'Other'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE DRNKWINE
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 76        =    'Number of glasses of wine'
            77                  =    'Don’t know/Not Sure'
            78      - 87        =    'Number of glasses of wine'
            88                  =    'None'
            89      - 98        =    'Number of glasses of wine'
            99                  =    'Refused'
            ;
      VALUE DROCCDY_
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            0                   =    'No Drink-Occasions per day'
            1       - 899       =    'Drink-Occasions per day'
            900                 =    'Do not Know/Not Sure Or Refused/Missing'
            ;
      VALUE EDUCA
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Never attended school or only kindergarten'
            2                   =    'Grades 1 - 8 (Elementary)'
            3                   =    'Grades 9 - 11 (Some high school)'
            4                   =    'Grade 12 or GED (High school graduate)'
            5                   =    'College 1 year to 3 years (Some college or technical school)'
            6                   =    'College 4 years or more (College graduate)'
            9                   =    'Refused'
            ;
      VALUE EMPLOY
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Employed for wages'
            2                   =    'Self-employed'
            3                   =    'Out of work for more than 1 year'
            4                   =    'Out of work for less that 1 year'
            5                   =    'A homemaker'
            6                   =    'A student'
            7                   =    'Retired'
            8                   =    'Unable to work'
            9                   =    'Refused'
            ;
      VALUE EXER2ANY
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE EYEEXAM
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Within the past month (< 1 month ago)'
            2                   =    'Within the past year (1 month but < 12 months ago)'
            3                   =    'Within the past 2 years (1 year but < 2 years ago)'
            4                   =    '2 or more years ago'
            7                   =    'Do not know/Not sure'
            8                   =    'Never'
            9                   =    'Refused'
            ;
      VALUE FALL3MN
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE FALLINJ
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE FEET2CHK
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            101     - 199       =    'Times per day'
            201     - 299       =    'Times per week'
            301     - 399       =    'Times per month'
            401     - 499       =    'Times per year'
            555                 =    'No feet'
            777                 =    'Do not know/Not sure'
            888                 =    'Never'
            999                 =    'Refused'
            ;
      VALUE FEETCHK
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 76        =    'Number of times'
            77                  =    'Do not know/Not sure'
            88                  =    'None'
            99                  =    'Refused'
            ;
      VALUE FEETSORE
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE FEWCAL
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes, fewer calories'
            2                   =    'Yes, less fat'
            3                   =    'Yes, fewer calories and less fat'
            4                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE FIR3ESCP
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE FIREXIT
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE FIRSTAID
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Take them the hospital'
            2                   =    'Tell them to call their doctor'
            3                   =    'Call 911'
            4                   =    'Call their spouse or a family member'
            5                   =    'Do something else'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE FIRSTSMK
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 76        =    'Age in years'
            77                  =    'Do not know/Not sure'
            99                  =    'Refused'
            ;
      VALUE FLU2PRO
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'A doctors office or HMO'
            2                   =    'A health department'
            3                   =    'Another type of clinic or health center'
            4                   =    'A senior, recreation, or community center'
            5                   =    'A store'
            6                   =    'A hospital or emergency room'
            7                   =    'Workplace'
            8                   =    'Some other kind of place'
            77                  =    'Do not know/Not sure'
            99                  =    'Refused'
            ;
      VALUE FLUSHOT
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE FMONTH
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'January'
            2                   =    'February'
            3                   =    'March'
            4                   =    'April'
            5                   =    'May'
            6                   =    'June'
            7                   =    'July'
            8                   =    'August'
            9                   =    'September'
            10                  =    'October'
            11                  =    'November'
            12                  =    'December'
            ;
      VALUE FOLICACD
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE FRPEXLOC
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE FRPLANDO
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Never'
            2                   =    'Less than once a year'
            3                   =    'Once a year'
            4                   =    'Once every six months'
            5                   =    'Once a month'
            6                   =    'More than once a month'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE FRUIT
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            101     - 199       =    'Per day'
            201     - 299       =    'Per week'
            301     - 399       =    'Per month'
            401     - 499       =    'Per year'
            555                 =    'Never'
            777                 =    'Do not know/Not sure'
            999                 =    'Refused'
            ;
      VALUE FRUITJUI
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            101     - 199       =    'Per day'
            201     - 299       =    'Per week'
            301     - 399       =    'Per month'
            401     - 499       =    'Per year'
            555                 =    'Never'
            777                 =    'Do not know/Not sure'
            999                 =    'Refused'
            ;
      VALUE GENHLTH
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Excellent'
            2                   =    'Very good'
            3                   =    'Good'
            4                   =    'Fair'
            5                   =    'Poor'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE GETCARE
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE GREENSAL
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            101     - 199       =    'Per day'
            201     - 299       =    'Per week'
            301     - 399       =    'Per month'
            401     - 499       =    'Per year'
            555                 =    'Never'
            777                 =    'Do not know/Not sure'
            999                 =    'Refused'
            ;
      VALUE HA1SYMP
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE HA2SYMP
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE HA3SYMP
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE HA4SYMP
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE HA5SYMP
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE HA6SYMP
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE HAD2HYST
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE HAD2SIGM
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE HADMAM
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE HADPAP
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE HATTKAGE
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Age 40 or less'
            2                   =    'Age 41 to 54'
            3                   =    'Age 55 to 64'
            4                   =    'Age 65 or older'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE HAV2ARTH
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE HEIGHT
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            200     - 711       =    'Height (ft/inches)'
            777                 =    'Do not know/Not sure'
            999                 =    'Refused'
            ;
      VALUE HISP2ANC
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE HIV2RISK
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE HIV3TST
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE HIVOPT1B
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Very important'
            2                   =    'Somewhat important'
            3                   =    'Not at all important'
            7                   =    'Do not know/Not sure'
            8                   =    'Depends on Risk'
            9                   =    'Refused'
            ;
      VALUE HIVTF1A
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'True'
            2                   =    'False'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE HIVTF1B
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'True'
            2                   =    'False'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE HLTHPLAN
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE HOUSESMK
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not allowed anywhere inside your home'
            2                   =    'Allowed in some places or at some times'
            3                   =    'Allowed anywhere inside the home'
            4                   =    'No rules about smoking inside the home'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE HOWLONG
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Within the past year (<12 months ago)'
            2                   =    'Within the past 2 years (1 year but < 2 years ago)'
            3                   =    'Within the past 3 years (2 years but < 3 years ago)'
            4                   =    'Within the past 5 years (3 years but < 5 years ago)'
            5                   =    '5 or more years ago'
            7                   =    'Do not know/Not sure'
            8                   =    'Never'
            9                   =    'Refused'
            ;
      VALUE HT2IN
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 998       =    'Height in Inches'
            999                 =    'Do Not Know/Refused'
            ;
      VALUE HT2M
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 998       =    'Height in meters [2 implied decimal places]'
            999                 =    'Do not know/Refused/Missing'
            ;
      VALUE IN2COME
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Less than $10,000'
            2                   =    'Less than $15,000 ($10,000 to less than $15,000)'
            3                   =    'Less than $20,000 ($15,000 to less than $20,000)'
            4                   =    'Less than $25,000 ($20,000 to less than $25,000)'
            5                   =    'Less than $35,000 ($25,000 to less than $35,000)'
            6                   =    'Less than $50,000 ($35,000 to less than $50,000)'
            7                   =    'Less than $75,000 ($50,000 to less than $75,000)'
            8                   =    '$75,000 or more'
            77                  =    'Do not know/Not sure'
            99                  =    'Refused'
            ;
      VALUE INDOORS
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE INSULIN
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            9                   =    'Refused'
            ;
      VALUE JOBACTIV
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Mostly sitting or standing'
            2                   =    'Mostly walking'
            3                   =    'Mostly heavy labor or physically demanding work'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE JOIN2TRT
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE JOINTSYM
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE LAST2DEN
            .                   =    'Not asked, Module not used or  Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Within the past year (< 12 months ago)'
            2                   =    'Within the past 2 years (1 year but < 2 years ago)'
            3                   =    'Within the past 5 years (2 years but < 5 years ago)'
            4                   =    '5 or more years ago'
            7                   =    'Do not know/Not sure'
            8                   =    'Never'
            9                   =    'Refused'
            ;
      VALUE LAST2SIG
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Within the past year (< 12 months ago)'
            2                   =    'Within the past 2 years (1 year but < 2 years ago)'
            3                   =    'Within the past 5 years (2 years but < 5 years ago)'
            4                   =    'Within the past 10 years (5 years but < 10 years ago)'
            5                   =    '10 or more years ago'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE LASTPAP
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Within the past year (< 12 months ago)'
            2                   =    'Within the past 2 years (1 year but < 2 years ago)'
            3                   =    'Within the past 3 years (2 years but < 3 years ago)'
            4                   =    'Within the past 5 years (3 years but < 5 years ago)'
            5                   =    '5 or more years ago'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE LASTSMK
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Within the past month (< 1 month ago)'
            2                   =    'Within the past 3 months (1 month but < 3 months ago)'
            3                   =    'Within the past 6 months (3 months but < 6 months)'
            4                   =    'Within the past year (6 months but < 1 year ago)'
            5                   =    'Within the past 5 years (1 year but < 5 years ago)'
            6                   =    'Within the past 10 years (5 years but < 10 years ago)'
            7                   =    '10 or more years'
            77                  =    'Do not know/Not sure'
            99                  =    'Refused'
            ;
      VALUE LENGEXAM
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Within the past year (< 12 months ago)'
            2                   =    'Within the past 2 years (1 year but < 2 years ago)'
            3                   =    'Within the past 3 years (2 years but < 3 years ago)'
            4                   =    'Within the past 5 years (3 years but < 5 years ago)'
            5                   =    '5 or more years ago'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE LMT2JOIN
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE LOSEWT
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE LST2BLDS
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Within the past year (< 12 months ago)'
            2                   =    'Within the past 2 years (1 year but < 2 years ago)'
            3                   =    'Within the past 5 years (2 years but < 5 years ago)'
            4                   =    '5 or more years ago'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE MAINTAIN
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE MARITAL
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Married'
            2                   =    'Divorced'
            3                   =    'Widowed'
            4                   =    'Separated'
            5                   =    'Never married'
            6                   =    'A member of an unmarried couple'
            9                   =    'Refused'
            ;
      VALUE MEDCOST
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE MENTHLTH
            .                   =    'Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 30        =    'Number of days'
            77                  =    'Do not know/Not sure'
            88                  =    'None'
            99                  =    'Refused'
            ;
      VALUE MODCAT_
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Meet recommendations for moderate physical activity'
            2                   =    'Insufficient activity to meet moderate recommendations'
            3                   =    'No moderate physical activity'
            9                   =    'Do not know/Not sure/Refused/Missing'
            ;
      VALUE MODPACT
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE MODPADAY
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 7         =    'Days per week'
            77                  =    'Do not know/Not sure'
            88                  =    'Do less than 10 mins of moderate activity at a time'
            99                  =    'Refused'
            ;
      VALUE MODPATIM
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            10      - 759       =    'Hours and minutes per day'
            777                 =    'Do not know/Not sure'
            800     - 959       =    'Hours and minutes per day'
            999                 =    'Refused'
            ;
      VALUE MULTIVIT
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE NEXTMAM
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Less than 12 months before'
            2                   =    '1 year but less than 2 years before'
            3                   =    '2 years but less than 3 years before'
            4                   =    '3 years but less than 5 years before'
            5                   =    '5 or more years before'
            6                   =    'Has had only one mammogram'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE NUM2HHOL
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE NUM2PHON
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Residential telephone number'
            2                   =    'Residential telephone numbers'
            3                   =    'Residential telephone numbers'
            4                   =    'Residential telephone numbers'
            5                   =    'Residential telephone numbers'
            6                   =    'Residential telephone numbers'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE NUMBURN
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'One'
            2                   =    'Two'
            3                   =    'Three'
            4                   =    'Four'
            5                   =    'Five'
            6                   =    'Six or more'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE O2RACE
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'White'
            2                   =    'Black or African American'
            3                   =    'Asian'
            4                   =    'Native Hawaiian or Other Pacific Islander'
            5                   =    'American Indian, Alaska Native'
            6                   =    'Other'
            7                   =    'Do not know/Not sure'
            8                   =    'Multiracial but preferred race not asked'
            9                   =    'Refused'
            ;
      VALUE PACAT_
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Meet recommendations for moderate and vigorous physical activity'
            2                   =    'Meet recommendations for vigorous physical activity'
            3                   =    'Meet recommendations for moderate physical activity'
            4                   =    'Insufficient activity to meet moderate or vigorous recommendations'
            5                   =    'No moderate or vigorous physical activity'
            9                   =    'Do not know/Not sure/Refused/Missing'
            ;
      VALUE PAIN30DY
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE PCS2AIDS
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE PERS2DOC
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes, only one'
            2                   =    'More than one'
            3                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE PHYACT
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE PHYSHLTH
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 30        =    'Number of days'
            77                  =    'Do not know/Not sure'
            88                  =    'None'
            99                  =    'Refused'
            ;
      VALUE PIPENOW
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Every day'
            2                   =    'Some days'
            3                   =    'Not at all'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE PIPESMK
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE PNEU2VAC
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE POORHLTH
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 30        =    'Number of days'
            77                  =    'Do not know/Not sure'
            88                  =    'None'
            99                  =    'Refused'
            ;
      VALUE POTATOES
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            101     - 199       =    'Per day'
            201     - 299       =    'Per week'
            301     - 399       =    'Per month'
            401     - 499       =    'Per year'
            555                 =    'Never'
            777                 =    'Do not know/Not sure'
            999                 =    'Refused'
            ;
      VALUE PRECALL
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'To be called'
            3                   =    'Pre-screened as non-working number'
            5                   =    'Pre-screened as business number'
            ;
      VALUE PREGNANT
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE PROFEXAM
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE PROSTATE
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE PSATEST
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE PSATIME
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Within the past year (< 12 months ago)'
            2                   =    'Within the past 2 years (1 year but < 2 years ago)'
            3                   =    'Within the past 3 years (2 years but < 3 years ago)'
            4                   =    'Within the past 5 years (3 years but < 5 years ago)'
            5                   =    '5 or more years ago'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE PVTRESID
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            ;
      VALUE QL2ACTLM
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE QSTLANG
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'English'
            2                   =    'Spanish'
            3                   =    'Other'
            ;
      VALUE QUITSMOK
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE RACE2FMT
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'White only, Non-Hispanic'
            2                   =    'Black only, Non-Hispanic'
            3                   =    'Asian only, Non-Hispanic'
            4                   =    'Native Hawaiian or other Pacific Islander only, No'
            5                   =    'American Indian or Alaskan Native only, Non-Hispan'
            6                   =    'Other race only, Non-Hispanic'
            7                   =    'Multiracial, Non-Hispanic'
            8                   =    'Hispanic'
            9                   =    'Do not know/Not sure/Refused component question'
            ;
      VALUE RECOMMEN
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'To make strong bones'
            2                   =    'To prevent birth defects'
            3                   =    'To prevent high blood pressure'
            4                   =    'Some other reason'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE REGSMK
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 76        =    'Age in years'
            77                  =    'Do not know/Not sure'
            88                  =    'Never smoked regularly'
            99                  =    'Refused'
            ;
      VALUE RMVTEETH
            .                   =    'Not asked, Module not used or  Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    '1 to 5'
            2                   =    '6 or more, but not all'
            3                   =    'All'
            7                   =    'Do not know/Not sure'
            8                   =    'None'
            9                   =    'Refused'
            ;
      VALUE RSN4TST
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'It was required'
            2                   =    'Someone suggested you should be tested'
            3                   =    'You thought you may have gotten HIV through sex or drug use'
            4                   =    'You just wanted to find out whether you had HIV'
            5                   =    'You were worried that you could give HIV to someone'
            6                   =    'You were pregnant'
            7                   =    'It was done as part fo a routine medical check-up'
            8                   =    'Some other reason'
            77                  =    'Do not know/Not sure'
            99                  =    'Refused'
            ;
      VALUE SEX
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Male'
            2                   =    'Female'
            ;
      VALUE SMK3DETE
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Within the past month (less than 1 month ago)'
            2                   =    'Within the past 6 months (at least 1 month but less than 6 months ago)'
            3                   =    'Within the past year (at least 6 months but less than 12 months ago)'
            4                   =    'One or more years ago'
            5                   =    'Never'
            6                   =    'No smoke alarms in home'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE SMKPUBLC
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not allowed in any public areas'
            2                   =    'Allowed in some public areas'
            3                   =    'Allowed in all public areas'
            4                   =    'No official policy'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE SMKWORK
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not allowed in any work areas'
            2                   =    'Allowed in some work areas'
            3                   =    'Allowed in all work areas'
            4                   =    'No official policy'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE SMOK100_
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE SMOKEDAY
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Every day'
            2                   =    'Some days'
            3                   =    'Not at all'
            9                   =    'Refused'
            ;
      VALUE STOP2SMK
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE STR1SYMP
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE STR2SYMP
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE STR3SYMP
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE STR4SYMP
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE STR5SYMP
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE STR6SYMP
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE STROKAGE
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Age 40 or less'
            2                   =    'Age 41 to 54'
            3                   =    'Age 55 to 64'
            4                   =    'Age 65 or older'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE SUNBURN
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE TAKEVIT
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            101     - 199       =    'Times per day'
            201     - 299       =    'Times per week'
            301     - 399       =    'Times per month'
            777                 =    'Do not know/Not sure'
            999                 =    'Refused'
            ;
      VALUE TELSERV
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE TOLD2HI
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE UNK6ADIG
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            11985   - 772002    =    'Code month and year'
            777777              =    'Do not know/Not sure'
            992002              =    'Code month and year'
            999999              =    'Refused'
            ;
      VALUE USE2EVER
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE USE2NOW
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Every day'
            2                   =    'Some days'
            3                   =    'Not at all'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE USEEQUIP
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE VACARE
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes, all of my health care'
            2                   =    'Yes, some of my health care'
            3                   =    'No, no VA health care received'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE VEGETABL
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            101     - 199       =    'Per day'
            201     - 299       =    'Per week'
            301     - 399       =    'Per month'
            401     - 499       =    'Per year'
            555                 =    'Never'
            777                 =    'Do not know/Not sure'
            999                 =    'Refused'
            ;
      VALUE VET2STAT
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Currently on active duty'
            2                   =    'Currently in a National Guard or Reserve unit'
            3                   =    'Retired from military service'
            4                   =    'Medically discharged from military service'
            5                   =    'Discharged from military service'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE VETERAN
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE VIGCAT_
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Meet recommendations for vigorous physical activity'
            2                   =    'Insufficient activity to meet vigorous recommendations'
            3                   =    'No vigorous physical activity'
            9                   =    'Do not know/Not sure/Refused/Missing'
            ;
      VALUE VIGPACT
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE VIGPADAY
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 7         =    'Days per week'
            77                  =    'Do not know/Not sure'
            88                  =    'Do less than 10 mins of vigorous activity at a time'
            99                  =    'Refused'
            ;
      VALUE VIGPATIM
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            10      - 759       =    'Hours and minutes per day'
            777                 =    'Do not know/Not sure'
            800     - 959       =    'Hours and minutes per day'
            999                 =    'Refused'
            ;
      VALUE VITAMINS
            .                   =    'Module not used or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE WEIGHT
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            50      - 776       =    'Weight (pounds)'
            777                 =    'Do not know/Not sure'
            999                 =    'Refused'
            ;
      VALUE WHR5TST
            .                   =    'Not asked or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Private doctor or HMO'
            2                   =    'Counceling and testing site'
            3                   =    'Hospital'
            4                   =    'Clinic'
            5                   =    'In a jail or prison (or other correctional facility)'
            6                   =    'Home'
            7                   =    'Somewhere else'
            77                  =    'Do not know/Not sure'
            99                  =    'Refused'
            ;
      VALUE WHY3DONE
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Don’t know/Not Sure'
            9                   =    'Refused'
            ;
      VALUE WHYASPAN
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE WHYASPHA
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE WHYASPSK
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Yes'
            2                   =    'No'
            7                   =    'Do not know/Not sure'
            9                   =    'Refused'
            ;
      VALUE WTDESIRE
            .                   =    'Not asked, Module not used, or Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            50      - 776       =    'Weight pounds'
            777                 =    'Do not know/Not sure'
            999                 =    'Refused'
            ;
      VALUE WTKG
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 99998     =    'Weight in kilograms [2 implied decimal places]'
            99999               =    'Do not know/Refused/Missing'
            ;
      VALUE _2DENSTR
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Listed'
            2                   =    'Unlisted'
            3                   =    'Zero block'
            ;
      VALUE _2DRNKDY
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            0                   =    'Did not drink'
            1       - 9899      =    'Number of drinks per day'
            9900                =    'Do not know/Not sure/Refused/Missing'
            ;
      VALUE _2DRNKMO
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            0                   =    'Did not drink in the past month'
            1       - 9998      =    'Number of Drinks'
            9999                =    'Do not know/Refused/Missing'
            ;
      VALUE _2RACEG
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Non-Hispanic White'
            2                   =    'Non-White or Hispanic'
            9                   =    'Do not know/Not sure/Refused Missing component question'
            ;
      VALUE _2RACEGR
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'White only, Non-Hispanic'
            2                   =    'Black only, Non-Hispanic'
            3                   =    'Other race only, Non-Hispanic'
            4                   =    'Multiracial, Non-Hispanic'
            5                   =    'Hispanic'
            9                   =    'Do not know/Not sure/Refused component question'
            ;
      VALUE _2RFBING
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not at risk for Binge Drinking'
            2                   =    'At risk for Binge Drinking'
            9                   =    'Do not know/Refused/Missing'
            ;
      VALUE _2RFDRHV
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not at risk for heavy drinking'
            2                   =    'At risk for heavy drinking'
            9                   =    'Do not know/Refused/Missing'
            ;
      VALUE _2RFDRMN
            .                   =    'Respondent is female'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Men not at risk for heavy drinking'
            2                   =    'Men at risk for heavy drinking'
            9                   =    'Do not know/Refused/Missing'
            ;
      VALUE _2RFDRWM
            .                   =    'Respondent is male'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Women not at risk for heavy drinking'
            2                   =    'Women at risk for heavy drinking'
            9                   =    'Do not know/Refused/Missing'
            ;
      VALUE _2RFSMOK
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not at risk (former or non-smoker)'
            2                   =    'At risk (current smoker)'
            9                   =    'Do not know/Refused/Missing'
            ;
      VALUE _2SMOKER
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Current smoker - now smokes every day'
            2                   =    'Current smoker - now smokes some days'
            3                   =    'Former smoker'
            4                   =    'Never smoked'
            9                   =    'Do not know/Refused/Missing'
            ;
      VALUE _3BMI
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1       - 9998      =    '1 or greater'
            9999                =    'Do not know/Refused/Missing'
            ;
      VALUE _3RFBMI
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not At Risk For Overweight Or Obese (_BMI2 <  2500)'
            2                   =    'At Risk For Overweight Or Obese (2500 <= _BMI2 < 9999)'
            9                   =    'Do not know/Refused/Missing'
            ;
      VALUE _4RFHYPE
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not at risk for high blood pressure'
            2                   =    'At risk for high blood pressure'
            9                   =    'Do not Know/Not Sure/Refused/Missing'
            ;
      VALUE _AGE65YR
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Age 18 to 64'
            2                   =    'Age 65 or older'
            3                   =    'Do not know/Refused/Missing'
            ;
      VALUE _AGEG5YR
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Age 18 - 24'
            2                   =    'Age 25 to 29'
            3                   =    'Age 30 to 34'
            4                   =    'Age 35 to 39'
            5                   =    'Age 40 to 44'
            6                   =    'Age 45 to 49'
            7                   =    'Age 50 to 54'
            8                   =    'Age 55 to 59'
            9                   =    'Age 60 to 64'
            10                  =    'Age 65 to 69'
            11                  =    'Age 70 to 74'
            12                  =    'Age 75 to 79'
            13                  =    'Age 80 or older'
            14                  =    'Do not know/Refused/Missing'
            ;
      VALUE _AGEGFMT
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            0                   =    'Age 18 or older'
            1                   =    'Age 18 - 24'
            2                   =    'Age 25 to 34'
            3                   =    'Age 35 to 44'
            4                   =    'Age 45 to 54'
            5                   =    'Age 55 to 64'
            6                   =    'Age 65 or older'
            7                   =    'Age 18 to 34'
            8                   =    'Age 35 to 54'
            9                   =    'Age 55 or older'
            10                  =    'Age 18 to 44'
            11                  =    'Age 45 or older'
            ;
      VALUE _AIDSTST
            .                   =    'Missing or Age greater than 64'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not at Risk'
            2                   =    'At Risk'
            9                   =    'Do not Know/Not Sure/Refused'
            ;
      VALUE _ASTHMST
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Current'
            2                   =    'Former'
            3                   =    'Never'
            9                   =    'Do not Know/Not Sure Or Refused/Missing'
            ;
      VALUE _BMI3CAT
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Neither overweight nor obese (_BMI2 < 2500)'
            2                   =    'Overweight (2500 <= _BMI2 < 3000)'
            3                   =    'Obese (3000 <= _BMI2 < 9999)'
            9                   =    'Do not know/Refused/Missing'
            ;
      VALUE _CASTHMA
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not At Risk'
            2                   =    'At Risk'
            9                   =    'Do not Know/Not Sure Or Refused/Missing'
            ;
      VALUE _CHLDCNT
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'No children in household'
            2                   =    'One child in household'
            3                   =    'Two children in household'
            4                   =    'Three children in household'
            5                   =    'Four children in household'
            6                   =    'Five or more children in household'
            9                   =    'Do not know/Not sure/Missing'
            ;
      VALUE _CHOLCHK
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Had cholesterol checked in past 5 years.'
            2                   =    'Did not have cholesterol checked in past 5 years'
            3                   =    'Have never had cholesterol checked'
            9                   =    'Do not Know/Not Sure Or Refused/Missing'
            ;
      VALUE _CNRACE
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            0                   =    'Other/do not know/refused'
            1                   =    '1 category chosen'
            2                   =    '2 category chosen'
            3                   =    '3 category chosen'
            4                   =    '4 category chosen'
            5                   =    '5 category chosen'
            ;
      VALUE _CNRACEC
            .                   =    '_CNRACE was coded Other/do not know/refused'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            0                   =    'zero or missing'
            1                   =    'One category chosen'
            2                   =    'Two or more categories chosen'
            ;
      VALUE _EDUCAG
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Did not graduate High School'
            2                   =    'Graduated High School'
            3                   =    'Attended College or Technical School'
            4                   =    'Graduated from College or Technical School'
            9                   =    'Do not know/Not sure/Missing'
            ;
      VALUE _FLUSHOT
            .                   =    'Missing or Age Less Than 65'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not at risk'
            2                   =    'At risk'
            9                   =    'Do not Know/Not Sure Or Refused/Missing'
            ;
      VALUE _FRTINDX
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Less than once per day or never'
            2                   =    'Once but less than 3 times per day'
            3                   =    '3 but less than 5 times per day'
            4                   =    '5 or more times per day'
            9                   =    'Do not know/Refused/Missing'
            ;
      VALUE _FV5SRV
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Consume < 5 servings per day'
            2                   =    'Consume 5 or more servings per day'
            9                   =    'Do not know/Not sure/Missing'
            ;
      VALUE _HIGHRSK
            .                   =    'Missing or Age greater than 64'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not at Risk'
            2                   =    'At Risk'
            9                   =    'Do not Know/Not Sure/Refused'
            ;
      VALUE _IMPAGE
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            18      - 24        =    'Age 18 to 24'
            25      - 34        =    'Age 25 to 34'
            35      - 44        =    'Age 35 to 44'
            45      - 54        =    'Age 45 to 54'
            55      - 64        =    'Age 55 to 64'
            65      - 99        =    'Age 65 or older'
            ;
      VALUE _IMPNPH
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    ' '
            2                   =    ' '
            3                   =    ' '
            4                   =    ' '
            5                   =    ' '
            6                   =    ' '
            7                   =    ' '
            8                   =    '8 or more'
            ;
      VALUE _INCOMG
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Less than $15,000'
            2                   =    '$15,000 to less than $25,000'
            3                   =    '$25,000 to less than $35,000'
            4                   =    '$35,000 to less than $50,000'
            5                   =    '$50,000 or more'
            9                   =    'Do not know/Not sure/Missing'
            ;
      VALUE _LTASTHM
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not At Risk'
            2                   =    'At Risk'
            9                   =    'Do not Know/Not Sure Or Refused/Missing'
            ;
      VALUE _MRACE
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'White only'
            2                   =    'Black or African American only'
            3                   =    'Asian Only'
            4                   =    'Native Hawaiian or other Pacific Islander only'
            5                   =    'American Indian or Alaskan Native only'
            6                   =    'Other race only'
            7                   =    'Multiracial'
            77                  =    'Do not know/Not sure'
            99                  =    'Refused'
            ;
      VALUE _PNEUMOC
            .                   =    'Missing or Age Less Than 65'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not at risk'
            2                   =    'At risk'
            9                   =    'Do not Know/Not Sure Or Refused/Missing'
            ;
      VALUE _PRACE
            .                   =    'Missing'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'White'
            2                   =    'Black or African American'
            3                   =    'Asian'
            4                   =    'Native Hawaiian or other Pacific Islander'
            5                   =    'American Indian or Alaskan Native'
            6                   =    'Other race'
            7                   =    'No preferred race'
            8                   =    'Multiracial but preferred race not asked'
            77                  =    'Do not know/Not sure'
            99                  =    'Refused'
            ;
      VALUE _RFCHOL
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not at risk for high cholesterol'
            2                   =    'At risk for high Not at risk for high cholesterol'
            9                   =    'Do not Know/Not Sure Or Refused/Missing'
            ;
      VALUE _RFHLTH
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not at Risk'
            2                   =    'At Risk'
            9                   =    'Do not Know/Not Sure Or Refused/Missing'
            ;
      VALUE _RFNOPA
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not at Risk'
            2                   =    'At Risk'
            9                   =    'Do not Know/Not Sure/Refused/Missing'
            ;
      VALUE _RFPAMOD
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not at Risk'
            2                   =    'At Risk'
            9                   =    'Do not Know/Not Sure/Refused/Missing'
            ;
      VALUE _RFPAREC
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Meet physical activity recommendations'
            2                   =    'Insufficient physical activity'
            3                   =    'No physical activity'
            9                   =    'Do not Know/Not Sure/Refused/Missing'
            ;
      VALUE _RFPAVIG
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not at Risk'
            2                   =    'At Risk'
            9                   =    'Do not Know/Not Sure/Refused/Missing'
            ;
      VALUE _STATE
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Alabama'
            2                   =    'Alaska'
            4                   =    'Arizona'
            5                   =    'Arkansas'
            6                   =    'California'
            8                   =    'Colorado'
            9                   =    'Connecticut'
            10                  =    'Delaware'
            11                  =    'District of Columbia'
            12                  =    'Florida'
            13                  =    'Georgia'
            15                  =    'Hawaii'
            16                  =    'Idaho'
            17                  =    'Illinois'
            18                  =    'Indiana'
            19                  =    'Iowa'
            20                  =    'Kansas'
            21                  =    'Kentucky'
            22                  =    'Louisiana'
            23                  =    'Maine'
            24                  =    'Maryland'
            25                  =    'Massachusetts'
            26                  =    'Michigan'
            27                  =    'Minnesota'
            28                  =    'Mississippi'
            29                  =    'Missouri'
            30                  =    'Montana'
            31                  =    'Nebraska'
            32                  =    'Nevada'
            33                  =    'New Hampshire'
            34                  =    'New Jersey'
            35                  =    'New Mexico'
            36                  =    'New York'
            37                  =    'North Carolina'
            38                  =    'North Dakota'
            39                  =    'Ohio'
            40                  =    'Oklahoma'
            41                  =    'Oregon'
            42                  =    'Pennsylvania'
            44                  =    'Rhode Island'
            45                  =    'South Carolina'
            46                  =    'South Dakota'
            47                  =    'Tennessee'
            48                  =    'Texas'
            49                  =    'Utah'
            50                  =    'Vermont'
            51                  =    'Virginia'
            53                  =    'Washington'
            54                  =    'West Virginia'
            55                  =    'Wisconsin'
            56                  =    'Wyoming'
            66                  =    'Guam'
            72                  =    'Puerto Rico'
            78                  =    'Virgin Islands'
            ;
      VALUE _STDCNDM
            .                   =    'Missing or Age greater than 64'
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Not at Risk'
            2                   =    'At Risk'
            9                   =    'Do not Know/Not Sure/Refused'
            ;
      VALUE _TOTINDA
            .D                  =    'DK/NS'
            .R                  =    'REFUSED'
            1                   =    'Had physical activity or exercise'
            2                   =    'No physical activity or exercise in last 30 days'
            9                   =    'Do not know/Refused/Missing'
            ;
      VALUE $IMONTH
            '1'                 =    'January'
            '10'                =    'October'
            '11'                =    'November'
            '12'                =    'December'
            '2'                 =    'February'
            '3'                 =    'March'
            '4'                 =    'April'
            '5'                 =    'May'
            '6'                 =    'June'
            '7'                 =    'July'
            '8'                 =    'August'
            '9'                 =    'September'
            ;
 run;
