# NIST Voting Common Data Format Test Method – Test Data  
Synthetic Dataset – GEN-03

The purpose of the test data dataset is to provide worked examples of
the common data formats that are compact and comprehensive. This
document describes single election, test deck, and results. Common Data
Format equivalents are provided at
<https://github.com/usnistgov/cdf-test-method/>

This election definition was provided by the Pro V\&V, a Voting System
Test Lab (VSTL). It has been modified somewhat for purposes of
supporting the production of Common Data Format examples. It is one of
several test elections that has been developed.

ELECTION DEFINITION: GEN-03

A basic election held in 2 precincts. This election contains 8 contests
and compiled into 2 ballot styles. 4 of the contests are in both ballot
styles. The other 4 contests are split between the two precincts. The
voting variations supported by this election are as follows:

  - Closed Primary: No

  - Open Primary: No

  - Partisan offices: Yes

  - Non-Partisan offices: Yes

  - Write-in voting: Yes

  - Primary presidential delegation nominations: No

  - Ballot Rotation: No

  - Straight Party voting: No

  - Cross-party endorsement: No

  - Split Precincts: No

  - Vote for N of M: Yes

  - Recall issues, with options: No

  - Cumulative voting: No

  - Ranked choice voting: No

This election was designed to functionally test the handling of multiple
ballot styles, and support for common voting variations.

**Configuration:**

**EMS computer is used to create ballots with the following
characteristics:**

**General Election named:** GEN-03 General Election

**<span class="underline">Precinct Based Testing</span>**

**1 machine used for each precinct**

**2 precincts**: Fire Station 23, Aldersgate Church

**2 parties:** Democrat, Republican

**Contest Totals:** 8

**Contests as listed:**

<table>
<thead>
<tr class="header">
<th><strong>Fire Station 23</strong></th>
<th><strong>Aldersgate Church</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td colspan="2"><p><strong>President of the United States</strong></p>
<p>Arthur Kumar REP</p>
<p>Brian Getz DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
</tr>
<tr class="even">
<td colspan="2"><p><strong>United States Senator</strong></p>
<p>Chad Snow REP</p>
<p>Don Etler DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
</tr>
<tr class="odd">
<td><p><strong>Representative in Congress</strong></p>
<p><strong>District 1</strong></p>
<p>Eric Sheehy REP</p>
<p>Fiero Finn DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td><p><strong>Representative in Congress</strong></p>
<p><strong>District 2</strong></p>
<p>Ernest Snyder REP</p>
<p>Frank L. Matthews DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
</tr>
<tr class="even">
<td><p><strong>State Assembly</strong></p>
<p><strong>District 1</strong></p>
<p>Gloria Castle REP</p>
<p>Harry Sosses DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td><p><strong>State Assembly</strong></p>
<p><strong>District 2</strong></p>
<p>Glenna P Cook-Lincoln REP</p>
<p>Heidi Hatzinger DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
</tr>
<tr class="odd">
<td colspan="2"><p><strong>Measure 22.6</strong></p>
<p><strong>Exchange of Certain Property</strong></p>
<p>Shall the proposed amendment to Article XIV, section 1 of the Constitution,</p>
<p>authorizing the conveyance of approximately ten acres of State Land in</p>
<p>exchange for approximately two hundred acres of wild forest land in order</p>
<p>to facilitate the preservation of certain historic buildings, be approved?</p>
<p>Yes</p>
<p>No</p>
<p>Vote for one</p></td>
</tr>
<tr class="even">
<td colspan="2"><p><strong>Measure 25.3</strong></p>
<p><strong>County Charter</strong></p>
<p>Shall there be approved and adopted in the County, a Local Law</p>
<p>passed by the Board of the County on August 19, 1974 entitled</p>
<p>"A Local Law to amend section six (a) of Article II of the County</p>
<p>Charter - changing the elected term of the County Board to four</p>
<p>years," which enlarges the term of office of each member of the</p>
<p>County Board of Legislators from two (2) years to four (4) years?</p>
<p>Yes</p>
<p>No</p>
<p>Vote for one</p></td>
</tr>
</tbody>
</table>

**Applicable Voting Devices :**

**OP Scanner, DRE, Central Count, EBM, and ADA device**

**Test Deck Pattern:**

**Ballots voted or pre-marked with the following pattern. The following
is the test pattern to be voted for the given precinct:**

|                                    |         |         |         |         |         |         |         |         |         |          |
| ---------------------------------- | ------- | ------- | ------- | ------- | ------- | ------- | ------- | ------- | ------- | -------- |
| **Fire Station 23**                | **B-1** | **B-2** | **B-3** | **B-4** | **B-5** | **B-6** | **B-7** | **B-8** | **B-9** | **B-10** |
| **President of the United States** |         |         |         |         |         |         |         |         |         |          |
| Arthur Kumar REP                   | X       |         | X       |         | X       |         | X       |         | X       |          |
| Brian Getz DEM                     |         | X       |         | X       |         |         |         | X       |         | X        |
| Write-In                           |         |         |         |         |         | X       |         |         |         |          |
| **United States Senator**          |         |         |         |         |         |         |         |         |         |          |
| Chad Snow REP                      | X       |         | X       |         | X       |         | X       |         | X       |          |
| Don Etler DEM                      |         | X       |         |         |         | X       |         | X       |         | X        |
| Write-In                           |         |         |         | X       |         |         |         |         |         |          |
| **Representative in Congress**     |         |         |         |         |         |         |         |         |         |          |
| **District 1**                     |         |         |         |         |         |         |         |         |         |          |
| Eric Sheehy REP                    | X       |         | X       |         |         |         | X       |         | X       |          |
| Fiero Finn DEM                     |         | X       |         | X       |         | X       |         | X       |         | X        |
| Write-In                           |         |         |         |         | X       |         |         |         |         |          |
| **State Assembly**                 |         |         |         |         |         |         |         |         |         |          |
| **District 1**                     |         |         |         |         |         |         |         |         |         |          |
| Gloria Castle REP                  | X       |         | X       |         | X       |         |         |         |         |          |
| Harry Sosses DEM                   |         | X       |         | X       |         | X       |         |         |         |          |
| Write-In                           |         |         |         |         |         |         | X       | X       | X       | X        |
| **Measure 22.6**                   |         |         |         |         |         |         |         |         |         |          |
| Yes                                | X       |         | X       |         | X       |         | X       |         | X       |          |
| No                                 |         | X       |         | X       |         | X       |         | X       |         | X        |
| **Measure 25.3**                   |         |         |         |         |         |         |         |         |         |          |
| Yes                                | X       |         | X       |         | X       |         | X       |         | X       |          |
| No                                 |         | X       |         | X       |         | X       |         | X       |         | X        |

|                                           |         |         |         |         |         |         |         |         |         |          |
| ----------------------------------------- | ------- | ------- | ------- | ------- | ------- | ------- | ------- | ------- | ------- | -------- |
| **Aldersgate Church**                     | **B-1** | **B-2** | **B-3** | **B-4** | **B-5** | **B-6** | **B-7** | **B-8** | **B-9** | **B-10** |
| **President of the United States**        |         |         |         |         |         |         |         |         |         |          |
| Arthur Kumar REP                          | X       |         | X       |         | X       |         | X       |         | X       |          |
| Brian Getz DEM                            |         | X       |         | X       |         | X       |         | X       |         | X        |
| Write-In                                  |         |         |         |         |         |         |         |         |         |          |
| **United States Senator**                 |         |         |         |         |         |         |         |         |         |          |
| Chad Snow REP                             | X       |         | X       |         | X       |         | X       |         | X       |          |
| Don Etler DEM                             |         | X       |         |         |         | X       |         | X       |         | X        |
| Write-In                                  |         |         |         | X       |         |         |         |         |         |          |
| **Representative in Congress District 2** |         |         |         |         |         |         |         |         |         |          |
| Ernest Snyder REP                         | X       |         | X       |         |         |         | X       |         | X       |          |
| Frank L. Matthews DEM                     |         | X       |         | X       |         | X       |         | X       |         | X        |
| Write-In                                  |         |         |         |         | X       |         |         |         |         |          |
| **State Assembly District 2**             |         |         |         |         |         |         |         |         |         |          |
| Glenna P Cook-Lincoln REP                 | X       |         | X       |         | X       |         |         |         |         |          |
| Heidi Hatzinger DEM                       |         | X       |         | X       |         | X       |         |         |         |          |
| Write-In                                  |         |         |         |         |         |         | X       | X       | X       | X        |
| **Measure 22.6**                          |         |         |         |         |         |         |         |         |         |          |
| Yes                                       | X       |         | X       |         | X       |         | X       |         | X       |          |
| No                                        |         | X       |         | X       |         | X       |         | X       |         | X        |
| **Measure 25.3**                          |         |         |         |         |         |         |         |         |         |          |
| Yes                                       | X       |         | X       |         | X       |         | X       |         | X       |          |
| No                                        |         | X       |         | X       |         | X       |         | X       |         | X        |

**Test Results:**

**Fire Station 23**

**President of the United States**

Arthur Kumar REP 5

Brian Getz DEM 4

Write-In 1

**United States Senator**

Chad Snow REP 5

Don Etler DEM 4

Write-In 1

**Representative in Congress**

**District 1**

Eric Sheehy REP 4

Fiero Finn DEM 5

Write-In 1

**State Assembly**

**District 1**

Gloria Castle REP 3

Harry Sosses DEM 3

Write-In 4

**Measure 22.6**

Yes 5

No 5

**Measure 25.3**

Yes 5

No 5

**AldersGate Church**

**President of the United States**

Arthur Kumar REP 5

Brian Getz DEM 5

Write-In 0

**United States Senator**

Chad Snow REP 5

Don Etler DEM 4

Write-In 1

**Representative in Congress**

**District 2**

Ernest Snyder REP 4

Frank L. Matthews DEM 5

Write-In 1

**State Assembly**

**District 2**

Glenna P Cook-Lincoln REP 3

Heidi Hatzinger DEM 3

Write-In 4

**Measure 22.6**

Yes 5

No 5

**Measure 25.3**

Yes 5

No 5

Cumulative Totals:

**President of the United States**

Arthur Kumar REP 10

Brian Getz DEM 9

Write-In 1

**United States Senator**

Chad Snow REP 10

Don Etler DEM 8

Write-In 2

**Representative in Congress**

**District 1**

Eric Sheehy REP 8

Fiero Finn DEM 10

Write-In 2

**Representative in Congress**

**District 2**

Ernest Snyder REP 4

Frank L. Matthews DEM 5

Write-In 1

**State Assembly**

**District 1**

Gloria Castle REP 3

Harry Sosses DEM 3

Write-In 4

**State Assembly**

**District 2**

Glenna P Cook-Lincoln REP 3

Heidi Hatzinger DEM 3

Write-In 4

**Measure 22.6**

Yes 10

No 10

**Measure 25.3**

Yes 10

No 10

**Criteria For Evaluation of Test Results:**

The results of this test will be accepted if the stated election
definition can be input into the EMS, the election transferred to the
voting machine, voted according to the test vote pattern, and the
results reported and audited to match the expected results. During the
execution of this election all errors need to be logged and analyzed by
qualified personal to determine if the error is an actual error or
another issue.
