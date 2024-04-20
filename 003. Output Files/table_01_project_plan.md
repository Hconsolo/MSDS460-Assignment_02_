|    | taskID   | task                         | predecessorTaskIDs     |   bestCaseHours | expectedHours   |   worstCaseHours | projectManager   | frontendDeveloper   | backendDeveloper   | dataScientist   | dataEngineer   |   Rate_Hour |   Quantity_People |   Total_Costs |   PM_Costs |   Dev_Team_Costs |   Maximum Reduction |   Crashing |   Crash_Cost_Hour |
|---:|:---------|:-----------------------------|:-----------------------|----------------:|:----------------|-----------------:|:-----------------|:--------------------|:-------------------|:----------------|:---------------|------------:|------------------:|--------------:|-----------:|-----------------:|--------------------:|-----------:|------------------:|
|  0 | A        | Describe product             |                        |           20    | 20              |             20   | 1                |                     |                    |                 |                |          60 |                 1 |          1200 |       1200 |                0 |                5    |       1800 |               360 |
|  1 | B        | Develop marketing strategy   |                        |           40    | 40              |             40   | 1                |                     |                    |                 |                |          60 |                 1 |          2400 |       2400 |                0 |               10    |       3600 |               360 |
|  2 | C        | Design brochure              | A                      |           20    | 20              |             20   | 1                |                     |                    |                 |                |          60 |                 1 |          1200 |       1200 |                0 |                5    |       1800 |               360 |
|  3 | D        | Develop product  prototype   |                        |            0    |                 |              0   |                  |                     |                    |                 |                |          60 |                 0 |             0 |          0 |                0 |                0    |          0 |                 0 |
|  4 | D1       | Requirements analysis        | A                      |           40    | 40              |             40   | 1                | 1                   | 1                  | 1               | 1              |          60 |                 5 |         12000 |       2400 |             9600 |               10    |       3600 |               360 |
|  5 | D2       | Software design              | D1                     |           40    | 40              |             40   | 1                | 1                   | 1                  | 1               | 1              |          60 |                 5 |         12000 |       2400 |             9600 |               10    |       3600 |               360 |
|  6 | D3       | System design                | D1                     |           40    | 40              |             40   | 1                |                     | 1                  |                 | 1              |          60 |                 3 |          7200 |       2400 |             4800 |               10    |       3600 |               360 |
|  7 | D4.0     | Begin Code                   | D2, D3                 |            0    | 0               |              0   |                  |                     |                    |                 |                |          60 |                 0 |             0 |          0 |                0 |                0    |          0 |                 0 |
|  8 | D4.1     | Coding - Front-end dev       | D4.0                   |          112.5  | 150             |            300   |                  | 1                   |                    |                 |                |          60 |                 1 |          9000 |          0 |             9000 |               37.5  |      27000 |               720 |
|  9 | D4.2     | Coding - Back-end dev        | D4.0                   |          180    | 180             |            180   |                  |                     | 1                  |                 |                |          60 |                 1 |         10800 |          0 |            10800 |               45    |      16200 |               360 |
| 10 | D4.3     | Coding - Data Scientist      | D4.0                   |           60    | 80              |            120   |                  |                     |                    | 1               |                |          60 |                 1 |          4800 |          0 |             4800 |               20    |      10800 |               540 |
| 11 | D4.4     | Coding - Data Engineer       | D4.0                   |          160    | 160             |            160   |                  |                     |                    |                 | 1              |          60 |                 1 |          9600 |          0 |             9600 |               40    |      14400 |               360 |
| 12 | D4.5     | End Code                     | D4.1, D4.2, D4.3, D4.4 |            0    | 0               |              0   |                  |                     |                    |                 |                |          60 |                 0 |             0 |          0 |                0 |                0    |          0 |                 0 |
| 13 | D5       | Write documentation          | D4.5                   |           20    | 20              |             20   | 1                | 1                   | 1                  | 1               | 1              |          60 |                 5 |          6000 |       1200 |             4800 |                5    |       1800 |               360 |
| 14 | D6       | Unit testing                 | D5                     |           30    | 40              |             80   |                  | 1                   | 1                  |                 | 1              |          60 |                 3 |          7200 |          0 |             7200 |               10    |       7200 |               720 |
| 15 | D7       | System testing               | D6                     |           30    | 40              |             80   | 1                | 1                   | 1                  |                 | 1              |          60 |                 4 |          9600 |       2400 |             7200 |               10    |       7200 |               720 |
| 16 | D8       | Package deliverables         | D5, D7                 |           20    | 20              |             30   | 1                | 1                   | 1                  | 1               | 1              |          60 |                 5 |          6000 |       1200 |             4800 |                5    |       2700 |               540 |
| 17 | E        | Survey potential market      | B, C                   |           22.5  | 30              |             45   | 1                |                     |                    |                 |                |          60 |                 1 |          1800 |       1800 |                0 |                7.5  |       4050 |               540 |
| 18 | F        | Develop pricing plan         | D8, E                  |           11.25 | 15              |             22.5 | 1                |                     |                    |                 |                |          60 |                 1 |           900 |        900 |                0 |                3.75 |       2025 |               540 |
| 19 | G        | Develop implementation  plan | A, D8                  |           22.5  | 30              |             45   | 1                |                     |                    |                 |                |          60 |                 1 |          1800 |       1800 |                0 |                7.5  |       4050 |               540 |
| 20 | H        | Write client proposal        | F, G                   |           11.25 | 15              |             22.5 | 1                |                     |                    |                 |                |          60 |                 1 |           900 |        900 |                0 |                3.75 |       2025 |               540 |