# NIST Voting Common Data Format Test Method – Test Data  
Synthetic Dataset – PRIM-03

The purpose of the test data dataset is to provide worked examples of
the common data formats that are compact and comprehensive. This
document describes single election, test deck, and results. Common Data
Format equivalents are provided at
<https://github.com/usnistgov/cdf-test-method/>

This election definition was provided by the Pro V\&V, a Voting System
Test Lab (VSTL). It has been modified somewhat for purposes of
supporting the production of Common Data Format examples. It is one of
several test elections that has been developed.

ELECTION DEFINITION: PRIM-03

**Primary Election**

A basic election held in 2 precincts. This election contains 10 contests
and is compiled into 2 ballot styles. 2 of the contests are in both
ballot styles. The other 8 contests are split between the two parties’
ballots. The voting variations supported by this election are as
follows:

  - Closed Primary: Yes

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

**General Election named:** PRIM-03 Primary Election

**<span class="underline">Precinct Based Testing</span>**

**1 machine used for each precinct**

**2 precincts**: Middleton Community Center, First Baptist Church

**2 parties:** Democrat, Republican

**Contest Totals:** 8

**Contests as listed:**

<table>
<thead>
<tr class="header">
<th><strong>Democratic Party Ballot</strong></th>
<th><strong>Republican Party Ballot</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>President of the United States</strong></p>
<p>Anne Neet</p>
<p>Ben Baker</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td><p><strong>President of the United States</strong></p>
<p>Andre Nina</p>
<p>Brent Gilley</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
</tr>
<tr class="even">
<td><p><strong>United States Senator</strong></p>
<p>Chad Snow</p>
<p>Don Etler</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td><p><strong>United States Senator</strong></p>
<p>Carol Cross</p>
<p>David Cox</p>
<p>Write-in</p>
<p>Vote for 1</p></td>
</tr>
<tr class="odd">
<td><p><strong>Representative in Congress</strong></p>
<p><strong>District 12</strong></p>
<p>Eric Sheehy</p>
<p>Fiero Finn</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td><p><strong>Representative in Congress</strong></p>
<p><strong>District 12</strong></p>
<p>Ernest Snyder</p>
<p>Frank L. Matthews</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
</tr>
<tr class="even">
<td><p><strong>State Assembly</strong></p>
<p><strong>District 26</strong></p>
<p>Shlomo Archibald</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td><p><strong>State Assembly</strong></p>
<p><strong>District 26</strong></p>
<p>Glenna P Cook-Lincoln</p>
<p>Heidi Hatzinger</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
</tr>
<tr class="odd">
<td><p><strong>Referendum A</strong></p>
<p><strong>Bond Issue</strong></p>
<p>To promote and assure the preservation and improvement of essential rail</p>
<p>passenger and freight services to the inhabitants of the state, shall section</p>
<p>two of chapter one hundred eighteen of the laws of nineteen hundred</p>
<p>seventy-four, authorizing the creation of a state debt in the amount of</p>
<p>two hundred fifty million dollars for capital facilities be approved?</p>
<p>For</p>
<p>Against</p>
<p>Vote for 1</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>Referendum B</strong></p>
<p><strong>Exchange or Certain Property</strong></p>
<p>Shall the proposed amendment to Article XIV, section 1 of the Constitution,</p>
<p>authorizing the conveyance of approximately ten acres of State Land in</p>
<p>exchange for approximately two hundred acres of wild forest land in order</p>
<p>to facilitate the preservation of certain historic buildings, be approved?</p>
<p>For</p>
<p>Against</p>
<p>Vote for 1</p></td>
<td></td>
</tr>
</tbody>
</table>

**Applicable Voting Devices :**

**OP Scanner, DRE, Central Count, EBM, and ADA device**

**Test Deck Pattern:**

**The following is the test pattern to be voted for the given
precinct:**
| **Middleton Community Center**              | B-1 | B-2 | B-3 | B-4 | B-5 | B-6 | B-7 | B-8 | B-9 | B-10 |
|---------------------------------------------|-----|-----|-----|-----|-----|-----|-----|-----|-----|------|
|                                             | D   | R   | D   | R   | D   | R   | D   | R   | D   | R    |
| **DEM**                                     |     |     |     |     |     |     |     |     |     |      |
| **President of the United States**          |     |     |     |     |     |     |     |     |     |      |
| Anne Neet                                   | X   |     |  X  |     |     |     |     |     | X   |      |
| Ben Baker                                   |     |     |     |     | X   |     | X   |     |     |      |
| Write-In                                    |     |     |     |     |     |     |     |     |     |      |
| **United States Senator**                   |     |     |     |     |     |     |     |     |     |      |
| Chad Snow                                   | X   |     | X   |     |     |     |  X  |     | X   |      |
| Don Etler                                   |     |     |     |     | X   |     |     |     |     |      |
| Write-In                                    |     |     |     |     |     |     |     |     |     |      |
| **Representative in Congress District 12**  |     |     |     |     |     |     |     |     |     |      |
| Eric Sheehy                                 | X   |     | X   |     |     |     | X   |     |     |      |
| Fiero Finn                                  |     |     |     |     |     |     |     |     | X   |      |
| Write-In                                    |     |     |     |     |  X  |     |     |     |     |      |
| **State Assembly District 26**              |     |     |     |     |     |     |     |     |     |      |
| Shlomo Archibald                            | X   |     |     |     |     |     |     |     |     |      |
| Write-In                                    |     |     | X   |     | X   |     | X   |     | X   |      |
| **Referendum A**                            |     |     |     |     |     |     |     |     |     |      |
| For                                         | X   |     | X   |     |     |     | X   |     | X   |      |
| Against                                     |     |     |     |     | X   |     |     |     |     |      |
| **Referendum B**                            |     |     |     |     |     |     |     |     |     |      |
| For                                         | X   |     | X   |     | X   |     |     |     | X   |      |
| Against                                     |     |     |     |     |     |     | X   |     |     |      |
| **REP**                                     |     |     |     |     |     |     |     |     |     |      |
| **President of the United States**          |     |     |     |     |     |     |     |     |     |      |
| Andre Nina                                  |     | X   |     |     |     | X   |     |     |     | X    |
| Brent Gilley                                |     |     |     | X   |     |     |     | X   |     |      |
| Write-In                                    |     |     |     |     |     |     |     |     |     |      |
| **United States Senator**                   |     |     |     |     |     |     |     |     |     |      |
| Carol Cross                                 |     | X   |     |     |     | X   |     | X   |     |  X   |
| David Cox                                   |     |     |     | X   |     |     |     |     |     |      |
| Write-in                                    |     |     |     |     |     |     |     |     |     |      |
| **Representative in Congress District 12**  |     |     |     |     |     |     |     |     |     |      |
| Ernest Snyder                               |     | X   |     |     |     |     |     |     |     | X    |
| Frank L. Matthews                           |     |     |     | X   |     | X   |     | X   |     |      |
| Write-In                                    |     |     |     |     |     |     |     |     |     |      |
| **State Assembly District 26**              |     |     |     |     |     |     |     |     |     |      |
| Glenna P Cook-Lincoln                       |     |     |     | X   |     |     |     |     |     |      |
| Heidi Hatzinger                             |     | X   |     |     |     | X   |     |     |     |      |
| Write-In                                    |     |     |     |     |     |     |     | X   |     | X    |
| **Referendum A**                            |     |     |     |     |     |     |     |     |     |      |
| For                                         |     | X   |     | X   |     | X   |     | X   |     | X    |
| Against                                     |     |     |     |     |     |     |     |     |     |      |
| **Referendum B**                            |     |     |     |     |     |     |     |     |     |      |
| For                                         |     | X   |     | X   |     |     |     |     |     |      |
| Against                                     |     |     |     |     |     | X   |     | X   |     | X    |

| **Middleton Community Center**              | B-1 | B-2 | B-3 | B-4 | B-5 | B-6 | B-7 | B-8 | B-9 | B-10 |
|---------------------------------------------|-----|-----|-----|-----|-----|-----|-----|-----|-----|------|
|                                             | D   | R   | D   | R   | D   | R   | D   | R   | D   | R    |
| **DEM**                                     |     |     |     |     |     |     |     |     |     |      |
| **President of the United States**          |     |     |     |     |     |     |     |     |     |      |
| Anne Neet                                   | X   |     |  X  |     |     |     |     |     | X   |      |
| Ben Baker                                   |     |     |     |     | X   |     | X   |     |     |      |
| Write-In                                    |     |     |     |     |     |     |     |     |     |      |
| **United States Senator**                   |     |     |     |     |     |     |     |     |     |      |
| Chad Snow                                   | X   |     | X   |     |     |     |  X  |     | X   |      |
| Don Etler                                   |     |     |     |     | X   |     |     |     |     |      |
| Write-In                                    |     |     |     |     |     |     |     |     |     |      |
| **Representative in Congress District 12**  |     |     |     |     |     |     |     |     |     |      |
| Eric Sheehy                                 | X   |     | X   |     |     |     | X   |     |     |      |
| Fiero Finn                                  |     |     |     |     |     |     |     |     | X   |      |
| Write-In                                    |     |     |     |     |  X  |     |     |     |     |      |
| **State Assembly District 26**              |     |     |     |     |     |     |     |     |     |      |
| Shlomo Archibald                            | X   |     |     |     |     |     |     |     |     |      |
| Write-In                                    |     |     | X   |     | X   |     | X   |     | X   |      |
| **Referendum A**                            |     |     |     |     |     |     |     |     |     |      |
| For                                         | X   |     | X   |     |     |     | X   |     | X   |      |
| Against                                     |     |     |     |     | X   |     |     |     |     |      |
| **Referendum B**                            |     |     |     |     |     |     |     |     |     |      |
| For                                         | X   |     | X   |     | X   |     |     |     | X   |      |
| Against                                     |     |     |     |     |     |     | X   |     |     |      |
| **REP**                                     |     |     |     |     |     |     |     |     |     |      |
| **President of the United States**          |     |     |     |     |     |     |     |     |     |      |
| Andre Nina                                  |     | X   |     |     |     | X   |     |     |     | X    |
| Brent Gilley                                |     |     |     | X   |     |     |     | X   |     |      |
| Write-In                                    |     |     |     |     |     |     |     |     |     |      |
| **United States Senator**                   |     |     |     |     |     |     |     |     |     |      |
| Carol Cross                                 |     | X   |     |     |     | X   |     | X   |     |  X   |
| David Cox                                   |     |     |     | X   |     |     |     |     |     |      |
| Write-in                                    |     |     |     |     |     |     |     |     |     |      |
| **Representative in Congress District 12**  |     |     |     |     |     |     |     |     |     |      |
| Ernest Snyder                               |     | X   |     |     |     |     |     |     |     | X    |
| Frank L. Matthews                           |     |     |     | X   |     | X   |     | X   |     |      |
| Write-In                                    |     |     |     |     |     |     |     |     |     |      |
| **State Assembly District 26**              |     |     |     |     |     |     |     |     |     |      |
| Glenna P Cook-Lincoln                       |     |     |     | X   |     |     |     |     |     |      |
| Heidi Hatzinger                             |     | X   |     |     |     | X   |     |     |     |      |
| Write-In                                    |     |     |     |     |     |     |     | X   |     | X    |
| **Referendum A**                            |     |     |     |     |     |     |     |     |     |      |
| For                                         |     | X   |     | X   |     | X   |     | X   |     | X    |
| Against                                     |     |     |     |     |     |     |     |     |     |      |
| **Referendum B**                            |     |     |     |     |     |     |     |     |     |      |
| For                                         |     | X   |     | X   |     |     |     |     |     |      |
| Against                                     |     |     |     |     |     | X   |     | X   |     | X    |

**Test Results:**

**Middleton Community Center**

**DEM**

**President of the United States**

Anne Neet 3

Ben Baker 2

Write-In 0

**United States Senator**

Chad Snow 4

Don Etler 1

Write-In 0

**Representative in Congress District 12**

Eric Sheehy 3

Fiero Finn 1

Write-In 1

**State Assembly District 26**

Shlomo Archibald 1

Write-In 4

**Referendum A**

For 4

Against 1

**Referendum B**

For 4

Against 1

**REP**

**President of the United States**

Andre Nina 3

Brent Gilley 2

Write-In 0

**United States Senator**

Carol Cross 4

David Cox 1

Write-in 0

**Representative in Congress District 12**

Ernest Snyder 2

Frank L. Matthews 3

Write-In 0

**State Assembly District 26**

Glenna P Cook-Lincoln 1

Heidi Hatzinger 2

Write-In 2

**Referendum A**

For 5

Against 0

**Referendum B**

For 2

Against 3

**First Baptist Church**

**DEM**

**President of the United States**

Anne Neet 3

Ben Baker 2

Write-In 0

**United States Senator**

Chad Snow 4

Don Etler 1

Write-In 0

**Representative in Congress District 12**

Eric Sheehy 3

Fiero Finn 1

Write-In 1

**State Assembly District 26**

Shlomo Archibald 1

Write-In 4

**Referendum A**

For 4

Against 1

**Referendum B**

For 4

Against 1

**REP**

**President of the United States**

Andre Nina 3

Brent Gilley 2

Write-In 0

**United States Senator**

Carol Cross 4

David Cox 1

Write-in 0

**Representative in Congress District 12**

Ernest Snyder 2

Frank L. Matthews 3

Write-In 0

**State Assembly District 26**

Glenna P Cook-Lincoln 1

Heidi Hatzinger 2

Write-In 2

**Referendum A**

For 5

Against 0

**Referendum B**

For 2

Against 3

**Cumlative Totals:**

**DEM**

**President of the United States**

Anne Neet 6

Ben Baker 4

Write-In 0

**United States Senator**

Chad Snow 8

Don Etler 2

Write-In 0

**Representative in Congress District 12**

Eric Sheehy 6

Fiero Finn 2

Write-In 2

**State Assembly District 26**

Shlomo Archibald 2

Write-In 8

**Referendum A**

For 8

Against 2

**Referendum B**

For 8

Against 2

**REP**

**President of the United States**

Andre Nina 6

Brent Gilley 4

Write-In 0

**United States Senator**

Carol Cross 8

David Cox 2

Write-in 0

**Representative in Congress District 12**

Ernest Snyder 4

Frank L. Matthews 6

Write-In 0

**State Assembly District 26**

Glenna P Cook-Lincoln 2

Heidi Hatzinger 4

Write-In 4

**Referendum A**

For 18

Against 2

**Referendum B**

For 12

Against 8

**Criteria For Evaluation of Test Results:**

The results of this test will be accepted if the stated election
definition can be input into the EMS, the election transferred to the
voting machine, voted according to the test vote pattern, and the
results reported and audited to match the expected results. During the
execution of this election all errors need to be logged and analyzed by
qualified personal to determine if the error is an actual error or
another issue.
