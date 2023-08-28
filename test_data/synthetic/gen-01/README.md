# NIST Voting Common Data Format Test Method – Test Data  
Synthetic Dataset – GEN-01

The purpose of the test data dataset is to provide worked examples of
the common data formats that are compact and comprehensive. This
document describes single election, test deck, and results. Common Data
Format equivalents are provided at
<https://github.com/usnistgov/cdf-test-method/>

This election definition was provided by the Pro V\&V, a Voting System
Test Lab (VSTL). It has been modified somewhat for purposes of
supporting the production of Common Data Format examples. It is one of
several test elections that has been developed.

ELECTION DEFINITION: GEN-01

**General Election: GEN-01**

A basic election held in 4 precincts one of which is a split precinct.
This election contains 19 contests compiled into 4 ballot styles. 5 of
the contests are in all 4 ballot styles. The other 14 contests are split
between at least 2 of the precincts with a maximum of 4 different
contest spread across the 4 precincts. The voting variations supported
by this election are as follows:

  - Closed Primary: No

  - Open Primary: No

  - Partisan offices: Yes

  - Non-Partisan offices: Yes

  - Write-in voting: Yes

  - Primary presidential delegation nominations: No

  - Ballot Rotation: No

  - Straight Party voting: Yes

  - Cross-party endorsement: No

  - Split Precincts: Yes

  - Vote for N of M: Yes

  - Recall issues, with options: No

  - Cumulative voting: No

  - Ranked choice voting: No

This election was designed to functionally test the handling of multiple
ballot styles, and support for common voting variations.

**Configuration**

**EMS computer is used to create ballots with the following
characteristics:**

**General Election named:** GEN-01 General Election

**<span class="underline">Precinct Based Testing</span>**

**4 precincts**: Precinct 1, Precinct 2a, Precinct 2b, Precinct 3

**3 parties:** Democrat, Libertarian, Republican

**Languages:** English, Spanish

**Contest Totals:** 19

**Contests as listed:**

<table>
<thead>
<tr class="header">
<th>Precinct 1 (4,5,6)</th>
<th>Precinct 2a</th>
<th>Precinct 2b</th>
<th>Precinct 3 (7,8,9)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Straight Party</strong></p>
<p>Libertarian</p>
<p>Republican</p>
<p>Democrat</p>
<p>Vote for one</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>President and Vice President of the United States</strong></p>
<p>Harry Brown LIB</p>
<p>Jim Doyle</p>
<p>George Bush REP</p>
<p>Dick Cheney</p>
<p>Al Gore DEM</p>
<p>Joe Liberman</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>United States Senator</strong></p>
<p>Ed Johnson LIB</p>
<p>John Rusco REP</p>
<p>Katie Bernstein DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>Representative in Congress</strong></p>
<p>District 1</p>
<p>Jim Gibbons LIB</p>
<p>Daniel Laws REP</p>
<p>Mary Cahill DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td><p><strong>Representative in Congress</strong></p>
<p>District 2</p>
<p>Habib Smith LIB</p>
<p>Bonnie Wyatt REP</p>
<p>Jim Hinkle DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td><p><strong>Representative in Congress</strong></p>
<p>District 1</p>
<p>Jim Gibbons LIB</p>
<p>Daniel Laws REP</p>
<p>Mary Cahill DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>State Assembly</strong></p>
<p><strong>District 1</strong></p>
<p>Marcia Jones DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td><p><strong>State Assembly</strong></p>
<p><strong>District 2</strong></p>
<p>Pat Thomas DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td><p><strong>State Assembly</strong></p>
<p><strong>District 3</strong></p>
<p>Yevette Downs DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>Proposal 1</strong></p>
<p><strong>District 1</strong></p>
<p>Should Taxes be raised</p>
<p>for road improvement?</p>
<p>Yes</p>
<p>No</p>
<p>Vote for 1</p></td>
<td><p><strong>Proposal 1</strong></p>
<p><strong>District 2a</strong></p>
<p>Should the city fund</p>
<p>the new stadium?</p>
<p>Yes</p>
<p>No</p>
<p>Vote for 1</p></td>
<td><p><strong>Proposal 1</strong></p>
<p><strong>District 2b</strong></p>
<p>Should the sales tax</p>
<p>be increased to 9%?</p>
<p>Yes</p>
<p>No</p>
<p>Vote for 1</p></td>
<td><p><strong>Proposal 1</strong></p>
<p><strong>District 2a</strong></p>
<p>Should the city fund</p>
<p>the new stadium?</p>
<p>Yes</p>
<p>No</p>
<p>Vote for 1</p></td>
</tr>
<tr class="odd">
<td><p><strong>County Commissioner</strong></p>
<p><strong>District 1</strong></p>
<p>Arlyn Beal REP</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td><p><strong>County Commissioner</strong></p>
<p><strong>District 2</strong></p>
<p>Jack Howard DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td><p><strong>County Commissioner</strong></p>
<p><strong>District 3</strong></p>
<p>Jay Scott LIB</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>County Assessor</strong></p>
<p>Dave Backus LIB</p>
<p>Myron Ensign LIB</p>
<p>Ralph Savage REP</p>
<p>Ernie Banks REP</p>
<p>Angus McFarland DEM</p>
<p>Mick Manson DEM</p>
<p>Write-In</p>
<p>Write-In</p>
<p>Vote for 2</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>Supreme Court Justice</strong></p>
<p><strong>Seat A</strong></p>
<p>Robert Rose LIB</p>
<p>Gary Becker DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td><p><strong>Supreme Court Justice</strong></p>
<p><strong>Seat B</strong></p>
<p>Laura Denise LIB</p>
<p>Barbara Young DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td><p><strong>Supreme Court Justice</strong></p>
<p><strong>Seat C</strong></p>
<p>Millie Farmer LIB</p>
<p>Ray Jones DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>Dog Catcher</strong></p>
<p>Bill Bates</p>
<p>Nancy Ingram</p>
<p>Roland Gustiv</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

**Applicable Voting Devices :**

**OP Scanner, DRE, Central Count, EBM, and ADA device**

**Test Deck Pattern:**

**Ballots voted or pre-marked with the following pattern. Ballots 8 and
9 will be cast utilizing the ADA audio capability with 8 being voted in
an alternate language as well. Ballots 3 and 10 will be cast utilizing
the Spanish language option. The following is the test pattern to be
voted for the given precinct:**

|                                                   |     |     |     |     |     |     |     |     |     |      |
| ------------------------------------------------- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---- |
| **Precinct 1**                                    | B-1 | B-2 | B-3 | B-4 | B-5 | B-6 | B-7 | B-8 | B-9 | B-10 |
| **Straight Party**                                |     |     |     |     |     |     |     |     |     |      |
| Libertarian                                       | X   |     |     |     |     |     |     |     |     |      |
| Republican                                        |     | X   |     |     |     |     |     |     |     |      |
| Democrat                                          |     |     | X   |     |     |     |     |     |     |      |
| **President of the United States**                |     |     |     |     |     |     |     |     |     |      |
| Harry Brown LIB                                   |     |     |     | X   |     |     |     | X   |     |      |
| George Bush REP                                   |     |     |     |     | X   |     |     |     | X   |      |
| Al Gore DEM                                       |     |     |     |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |
| **United States Senator**                         |     |     |     |     |     |     |     |     |     |      |
| Ed Johnson LIB                                    |     |     |     | X   |     |     |     | X   |     |      |
| John Rusco REP                                    |     |     |     |     | X   |     |     |     | X   |      |
| Katie Bernstein DEM                               |     |     |     |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |
| **Representative in Congress District 1**         |     |     |     |     |     |     |     |     |     |      |
| Jim Gibbons LIB                                   |     |     |     | X   |     |     |     | X   |     |      |
| Daniel Laws REP                                   |     |     |     |     | X   |     |     |     | X   |      |
| Mary Cahill DEM                                   |     |     |     |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |
| **State Assembly District 1**                     |     |     |     |     |     |     |     |     |     |      |
| Marcia Jones DEM                                  |     |     |     | X   |     | X   |     | X   |     |      |
| Write-In                                          |     |     |     |     | X   |     | X   |     |     | X    |
| **Proposal 1 District 1**                         |     |     |     |     |     |     |     |     |     |      |
| Yes                                               |     | X   |     | X   |     | X   |     | X   |     | X    |
| No                                                | X   |     | X   |     | X   |     | X   |     | X   |      |
| **County Commissioner District 1**                |     |     |     |     |     |     |     |     |     |      |
| Arlyn Beal REP                                    |     |     |     | X   |     | X   |     | X   |     |      |
| Write-In                                          |     |     |     |     | X   |     | X   |     | X   | X    |
| **County Assessor**                               |     |     |     |     |     |     |     |     |     |      |
| Dave Backus LIB                                   |     |     |     | X   |     |     |     | X   |     |      |
| Myron Ensign LIB                                  |     |     |     | X   |     |     |     |     | X   |      |
| Ralph Savage REP                                  |     |     |     |     | X   |     |     |     |     |      |
| Ernie Banks REP                                   |     |     |     |     | X   |     |     |     |     |      |
| Angus McFarland DEM                               |     |     |     |     |     | X   |     |     |     |      |
| Mick Manson DEM                                   |     |     |     |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   | X   | X   | X    |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |
| **Supreme Court Justice Seat A**                  |     |     |     |     |     |     |     |     |     |      |
| Robert Rose LIB                                   |     |     |     | X   |     |     | X   |     |     |      |
| Gary Becker DEM                                   |     |     |     |     | X   |     |     | X   |     |      |
| Write-In                                          |     |     |     |     |     | X   |     |     | X   | X    |
| **City of Priceville Dog Catcher (Non-Partisan)** |     |     |     |     |     |     |     |     |     |      |
| Bill Bates                                        | X   |     |     | X   |     |     |     | X   |     |      |
| Nancy Ingram                                      |     | X   |     |     | X   |     |     |     | X   |      |
| Roland Gustiv                                     |     |     | X   |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |

|                                                   |     |     |     |     |     |     |     |     |     |      |
| ------------------------------------------------- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---- |
| Precinct 2a                                       | B-1 | B-2 | B-3 | B-4 | B-5 | B-6 | B-7 | B-8 | B-9 | B-10 |
| **Straight Party**                                |     |     |     |     |     |     |     |     |     |      |
| Libertarian                                       | X   |     |     |     |     |     |     |     |     |      |
| Republican                                        |     | X   |     |     |     |     |     |     |     |      |
| Democrat                                          |     |     | X   |     |     |     |     |     |     |      |
| **President of the United States**                |     |     |     |     |     |     |     |     |     |      |
| Harry Brown LIB                                   |     |     |     | X   |     |     |     | X   |     |      |
| George Bush REP                                   |     |     |     |     | X   |     |     |     | X   |      |
| Al Gore DEM                                       |     |     |     |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |
| **United States Senator**                         |     |     |     |     |     |     |     |     |     |      |
| Ed Johnson LIB                                    |     |     |     | X   |     |     |     | X   |     |      |
| John Rusco REP                                    |     |     |     |     | X   |     |     |     | X   |      |
| Katie Bernstein DEM                               |     |     |     |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |
| **Representative in Congress District 2**         |     |     |     |     |     |     |     |     |     |      |
|                                                   |     |     |     |     |     |     |     |     |     |      |
| Habib Smith LIB                                   |     |     |     | X   |     |     |     | X   |     |      |
| Bonnie Wyatt REP                                  |     |     |     |     | X   |     |     |     | X   |      |
| Jim Hinkle DEM                                    |     |     |     |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |
| **State Assembly District 2**                     |     |     |     |     |     |     |     |     |     |      |
| Pat Thomas DEM                                    |     |     |     | X   |     | X   |     | X   |     |      |
| Write-In                                          |     |     |     |     | X   |     | X   |     |     | X    |
| **Proposal 1 District 2a**                        |     |     |     |     |     |     |     |     |     |      |
| Yes                                               |     | X   |     | X   |     | X   |     | X   |     | X    |
| No                                                | X   |     | X   |     | X   |     | X   |     | X   |      |
| **County Commissioner District 2**                |     |     |     |     |     |     |     |     |     |      |
| Jack Howard DEM                                   |     |     |     | X   |     | X   |     | X   |     |      |
| Write-In                                          |     |     |     |     | X   |     | X   |     | X   | X    |
| **County Assessor**                               |     |     |     |     |     |     |     |     |     |      |
| Dave Backus LIB                                   |     |     |     | X   |     |     |     | X   |     |      |
| Myron Ensign LIB                                  |     |     |     | X   |     |     |     |     | X   |      |
| Ralph Savage REP                                  |     |     |     |     | X   |     |     |     |     |      |
| Ernie Banks REP                                   |     |     |     |     | X   |     |     |     |     |      |
| Angus McFarland DEM                               |     |     |     |     |     | X   |     |     |     |      |
| Mick Manson DEM                                   |     |     |     |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   | X   | X   | X    |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |
| **Supreme Court Justice Seat B**                  |     |     |     |     |     |     |     |     |     |      |
| Laura Denise LIB                                  |     |     |     | X   |     |     | X   |     |     |      |
| Barbara Young DEM                                 |     |     |     |     | X   |     |     | X   |     |      |
| Write-In                                          |     |     |     |     |     | X   |     |     | X   | X    |
| **City of Priceville Dog Catcher (Non-Partisan)** |     |     |     |     |     |     |     |     |     |      |
| Bill Bates                                        | X   |     |     | X   |     |     |     | X   |     |      |
| Nancy Ingram                                      |     | X   |     |     | X   |     |     |     | X   |      |
| Roland Gustiv                                     |     |     | X   |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |

|                                                   |     |     |     |     |     |     |     |     |     |      |
| ------------------------------------------------- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---- |
| Precinct 2b                                       | B-1 | B-2 | B-3 | B-4 | B-5 | B-6 | B-7 | B-8 | B-9 | B-10 |
| **Straight Party**                                |     |     |     |     |     |     |     |     |     |      |
| Libertarian                                       | X   |     |     |     |     |     |     |     |     |      |
| Republican                                        |     | X   |     |     |     |     |     |     |     |      |
| Democrat                                          |     |     | X   |     |     |     |     |     |     |      |
| **President of the United States**                |     |     |     |     |     |     |     |     |     |      |
| Harry Brown LIB                                   |     |     |     | X   |     |     |     | X   |     |      |
| George Bush REP                                   |     |     |     |     | X   |     |     |     | X   |      |
| Al Gore DEM                                       |     |     |     |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |
| **United States Senator**                         |     |     |     |     |     |     |     |     |     |      |
| Ed Johnson LIB                                    |     |     |     | X   |     |     |     | X   |     |      |
| John Rusco REP                                    |     |     |     |     | X   |     |     |     | X   |      |
| Katie Bernstein DEM                               |     |     |     |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |
| **Representative in Congress District 2**         |     |     |     |     |     |     |     |     |     |      |
| Habib Smith LIB                                   |     |     |     | X   |     |     |     | X   |     |      |
| Bonnie Wyatt REP                                  |     |     |     |     | X   |     |     |     | X   |      |
| Jim Hinkle DEM                                    |     |     |     |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |
| **State Assembly District 2**                     |     |     |     |     |     |     |     |     |     |      |
| Pat Thomas DEM                                    |     |     |     | X   |     | X   |     | X   |     |      |
| Write-In                                          |     |     |     |     | X   |     | X   |     |     | X    |
| **Proposal 1 District 2a**                        |     |     |     |     |     |     |     |     |     |      |
| Yes                                               |     | X   |     | X   |     | X   |     | X   |     | X    |
| No                                                | X   |     | X   |     | X   |     | X   |     | X   |      |
| **County Commissioner District 2**                |     |     |     |     |     |     |     |     |     |      |
| Jack Howard DEM                                   |     |     |     | X   |     | X   |     | X   |     |      |
| Write-In                                          |     |     |     |     | X   |     | X   |     | X   | X    |
|                                                   |     |     |     |     |     |     |     |     |     |      |
| **County Assessor**                               |     |     |     |     |     |     |     |     |     |      |
| Dave Backus LIB                                   |     |     |     | X   |     |     |     | X   |     |      |
| Myron Ensign LIB                                  |     |     |     | X   |     |     |     |     | X   |      |
| Ralph Savage REP                                  |     |     |     |     | X   |     |     |     |     |      |
| Ernie Banks REP                                   |     |     |     |     | X   |     |     |     |     |      |
| Angus McFarland DEM                               |     |     |     |     |     | X   |     |     |     |      |
| Mick Manson DEM                                   |     |     |     |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   | X   | X   | X    |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |
| **Supreme Court Justice Seat B**                  |     |     |     |     |     |     |     |     |     |      |
| Laura Denise LIB                                  |     |     |     | X   |     |     | X   |     |     |      |
| Barbara Young DEM                                 |     |     |     |     | X   |     |     | X   |     |      |
| Write-In                                          |     |     |     |     |     | X   |     |     | X   | X    |
| **City of Priceville Dog Catcher (Non-Partisan)** |     |     |     |     |     |     |     |     |     |      |
| Bill Bates                                        | X   |     |     | X   |     |     |     | X   |     |      |
| Nancy Ingram                                      |     | X   |     |     | X   |     |     |     | X   |      |
| Roland Gustiv                                     |     |     | X   |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |

|                                                   |     |     |     |     |     |     |     |     |     |      |
| ------------------------------------------------- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---- |
| Precinct 3                                        | B-1 | B-2 | B-3 | B-4 | B-5 | B-6 | B-7 | B-8 | B-9 | B-10 |
| **Straight Party**                                |     |     |     |     |     |     |     |     |     |      |
| Libertarian                                       | X   |     |     |     |     |     |     |     |     |      |
| Republican                                        |     | X   |     |     |     |     |     |     |     |      |
| Democrat                                          |     |     | X   |     |     |     |     |     |     |      |
| **President of the United States**                |     |     |     |     |     |     |     |     |     |      |
| Harry Brown LIB                                   |     |     |     | X   |     |     |     | X   |     |      |
| George Bush REP                                   |     |     |     |     | X   |     |     |     | X   |      |
| Al Gore DEM                                       |     |     |     |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |
| **United States Senator**                         |     |     |     |     |     |     |     |     |     |      |
| Ed Johnson LIB                                    |     |     |     | X   |     |     |     | X   |     |      |
| John Rusco REP                                    |     |     |     |     | X   |     |     |     | X   |      |
| Katie Bernstein DEM                               |     |     |     |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |
| **Representative in Congress District 1**         |     |     |     |     |     |     |     |     |     |      |
| Jim Gibbons LIB                                   |     |     |     | X   |     |     |     | X   |     |      |
| Daniel Laws REP                                   |     |     |     |     | X   |     |     |     | X   |      |
| Mary Cahill DEM                                   |     |     |     |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |
| **State Assembly District 3**                     |     |     |     |     |     |     |     |     |     |      |
| Yevette Downs DEM                                 |     |     |     | X   |     | X   |     | X   |     |      |
| Write-In                                          |     |     |     |     | X   |     | X   |     |     | X    |
| **Proposal 1 District 2b**                        |     |     |     |     |     |     |     |     |     |      |
| Yes                                               |     | X   |     | X   |     | X   |     | X   |     | X    |
| No                                                | X   |     | X   |     | X   |     | X   |     | X   |      |
| **County Commissioner District 3**                |     |     |     |     |     |     |     |     |     |      |
| Jay Scott LIB                                     |     |     |     | X   |     | X   |     | X   |     |      |
| Write-In                                          |     |     |     |     | X   |     | X   |     | X   | X    |
| **County Assessor**                               |     |     |     |     |     |     |     |     |     |      |
| Dave Backus LIB                                   |     |     |     | X   |     |     |     | X   |     |      |
| Myron Ensign LIB                                  |     |     |     | X   |     |     |     |     | X   |      |
| Ralph Savage REP                                  |     |     |     |     | X   |     |     |     |     |      |
| Ernie Banks REP                                   |     |     |     |     | X   |     |     |     |     |      |
| Angus McFarland DEM                               |     |     |     |     |     | X   |     |     |     |      |
| Mick Manson DEM                                   |     |     |     |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   | X   | X   | X    |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |
| **Supreme Court Justice Seat C**                  |     |     |     |     |     |     |     |     |     |      |
| Millie Farmer LIB                                 |     |     |     | X   |     |     | X   |     |     |      |
| Ray Jones DEM                                     |     |     |     |     | X   |     |     | X   |     |      |
| Write-In                                          |     |     |     |     |     | X   |     |     | X   | X    |
| **City of Priceville Dog Catcher (Non-Partisan)** |     |     |     |     |     |     |     |     |     |      |
| Bill Bates                                        | X   |     |     | X   |     |     |     | X   |     |      |
| Nancy Ingram                                      |     | X   |     |     | X   |     |     |     | X   |      |
| Roland Gustiv                                     |     |     | X   |     |     | X   |     |     |     |      |
| Write-In                                          |     |     |     |     |     |     | X   |     |     | X    |

**Test Results:**

**Precinct 1:**

**Straight Party**

Libertarian 1

Republican 1

Democrat 1

**President**

Harry Brown LIB 3

George Bush REP 3

Al Gore DEM 2

Write-In 2

**US Senator**

Ed Johnson LIB 3

John Rusco REP 3

Katie Berstein DEM 2

Write-In 2

**Rep in Congress District 1**

Jim Gibbons LIB 3

Daniel Laws REP 3

Mary Cahill DEM 2

Write-In 2

**State Assembly District 1**

Marcia Jones DEM 4

Write-In 3

**Proposal 1 District 1**

Yes 5

No 5

**County Commissioner District 1**

Arlyn Beal REP 4

Write-In 4

**County Assessor**

Dave Backus LIB 3

Myron Ensign LIB 3

Ralph Savage REP 2

Ernie Banks REP 2

Angus McFarland DEM 2

Mick Manson DEM 2

Write-In 4

Write-In 2

**Supreme Court Justice Seat A**

Robert Rose LIB 3

Gary Becker DEM 3

Write-In 3

**City of Priceville Dog Catcher**

Bill Bates 3

Nancy Ingram 3

Roland Gustiv 2

Write-In 2

**Precinct 2a:**

**Straight Party**

Libertarian 1

Republican 1

Democrat 1

**President**

Harry Brown LIB 3

George Bush REP 3

Al Gore DEM 2

Write-In 2

**US Senator**

Ed Johnson LIB 3

John Rusco REP 3

Katie Berstein DEM 2

Write-In 2

**Rep in Congress District 2**

Habib Smith LIB 3

Bonnie Wyatt REP 3

Jim Hinkle DEM 2

Write-In 2

**State Assembly District 2**

Pat Thomas DEM 4

Write-In 3

**Proposal 1 District 2**

Yes 5

No 5

**County Commissioner District 2**

Jack Howard DEM 4

Write-In 4

**County Assessor**

Dave Backus LIB 3

Myron Ensign LIB 3

Ralph Savage REP 2

Ernie Banks REP 2

Angus McFarland DEM 2

Mick Manson DEM 2

Write-In 4

Write-In 2

**Supreme Court Justice Seat B**

Laura Denise LIB 3

Barbara Young DEM 3

Write-In 3

**City of Priceville Dog Catcher**

Bill Bates 3

Nancy Ingram 3

Roland Gustiv 2

Write-In 2

**Precinct 2b:**

**Straight Party**

Libertarian 1

Republican 1

Democrat 1

**President**

Harry Brown LIB 3

George Bush REP 3

Al Gore DEM 2

Write-In 2

**US Senator**

Ed Johnson LIB 3

John Rusco REP 3

Katie Berstein DEM 2

Write-In 2

**Rep in Congress District 2**

Habib Smith LIB 3

Bonnie Wyatt REP 3

Jim Hinkle DEM 2

Write-In 2

**State Assembly District 2**

Pat Thomas DEM 4

Write-In 3

**Proposal 1 District 2b**

Yes 5

No 5

**County Commissioner District 2**

Jack Howard DEM 4

Write-In 4

**County Assessor**

Dave Backus LIB 3

Myron Ensign LIB 3

Ralph Savage REP 2

Ernie Banks REP 2

Angus McFarland DEM 2

Mick Manson DEM 2

Write-In 4

Write-In 2

**Supreme Court Justice Seat B**

Laura Denise LIB 3

Barbara Young DEM 3

Write-In 3

**City of Priceville Dog Catcher**

Bill Bates 3

Nancy Ingram 3

Roland Gustiv 2

Write-In 2

**Precinct 3:**

**Straight Party**

Libertarian 1

Republican 1

Democrat 1

**Presiden***t*

Harry Brown LIB 3

George Bush REP 3

Al Gore DEM 2

Write-In 2

**US Senator**

Ed Johnson LIB 3

John Rusco REP 3

Katie Berstein DEM 2

Write-In 2

**Rep in Congress District 1**

Jim Gibbons LIB 3

Daniel Laws REP 3

Mary Cahill DEM 2

Write-In 2

**State Assembly District 3**

Yevette Downs DEM 4

Write-In 3

**Proposal 1 District 2b**

Yes 5

No 5

**County Commissioner District 3**

Jay Scott LIB 4

Write-In 4

**County Assessor**

Dave Backus LIB 3

Myron Ensign LIB 3

Ralph Savage REP 2

Ernie Banks REP 2

Angus McFarland DEM 2

Mick Manson DEM 2

Write-In 4

Write-In 2

**Supreme Court Justice Seat C**

Millie Farmer LIB 3

Ray Jones DEM 3

Write-In 3

**City of Priceville Dog Catcher**

Bill Bates 3

Nancy Ingram 3

Roland Gustiv 2

Write-In 2

**Cumlative Totals:**

**Straight Party**

Libertarian 4

Republican 4

Democrat 4

**President**

Harry Brown LIB 12

George Bush REP 12

Al Gore DEM 8

Write-In 8

**US Senator**

Ed Johnson LIB 12

John Rusco REP 12

Katie Berstein DEM 8

Write-In 8

**Rep in Congress District 1**

Jim Gibbons LIB 6

Daniel Laws REP 6

Mary Cahill DEM 4

Write-In 4

**Rep in Congress District 2**

Habib Smith LIB 6

Bonnie Wyatt REP 6

Jim Hinkle DEM 4

Write-In 4

**State Assembly District 1**

Marcia Jones DEM 4

Write-In 3

**State Assembly District 2**

Pat Thomas DEM 8

Write-In 6

**State Assembly District 3**

Yevette Downs DEM 4

Write-In 3

**Proposal 1 District 1**

Yes 5

No 5

**Proposal 1 District 2**

Yes 5

No 5

**Proposal 1 District 2a**

Yes 5

No 5

**Proposal 1 District 2b**

Yes 5

No 5

**County Commissioner District 1**

Arlyn Beal REP 4

Write-In 4

**County Commissioner District 2**

Jack Howard DEM 8

Write-In 8

**County Commissioner District 3**

Jay Scott LIB 4

Write-In 4

**County Assessor**

Dave Backus LIB 12

Myron Ensign LIB 12

Ralph Savage REP 8

Ernie Banks REP 8

Angus McFarland DEM 8

Mick Manson DEM 8

Write-In 16

Write-In 8

**Supreme Court Justice Seat A**

Robert Rose LIB 3

Gary Becker DEM 3

Write-In 3

**Supreme Court Justice Seat B**

Laura Denise LIB 6

Barbara Young DEM 6

Write-In 6

**Supreme Court Justice Seat C**

Millie Farmer LIB 3

Ray Jones DEM 3

Write-In 3

**City of Priceville Dog Catcher**

Bill Bates 12

Nancy Ingram 12

Roland Gustiv 8

Write-In 8

**Criteria For Evaluation of Test Results:**

The results of this test will be accepted if the stated election
definition can be input into the EMS, the election transferred to the
voting machine, voted according to the test vote pattern, and the
results reported and audited to match the expected results. During the
execution of this election all errors need to be logged and analyzed by
qualified personal to determine if the error is an actual error or
another issue.
