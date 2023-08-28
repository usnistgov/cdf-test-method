# NIST Voting Common Data Format Test Method – Test Data  
Synthetic Dataset – GEN-02

The purpose of the test data dataset is to provide worked examples of
the common data formats that are compact and comprehensive. This
document describes single election, test deck, and results. Common Data
Format equivalents are provided at
<https://github.com/usnistgov/cdf-test-method/>

This election definition was provided by the Pro V\&V, a Voting System
Test Lab (VSTL). It has been modified somewhat for purposes of
supporting the production of Common Data Format examples. It is one of
several test elections that has been developed.

ELECTION DEFINITION: GEN-02

A basic election held in 3 precincts. This election contains 15 contests
compiled into 3 ballot styles. 10 of the contests are in all 3 ballot
styles with the other five split across the 3 precincts. The voting
variations supported by this election are as follows:

  - Closed Primary: No

  - Open Primary: No

  - Partisan offices: Yes

  - Non-Partisan offices: Yes

  - Write-in voting: Yes

  - Primary presidential delegation nominations: No

  - Ballot Rotation: Yes

  - Straight Party voting: No

  - Cross-party endorsement: No

  - Split Precincts: No

  - Vote for N of M: Yes

  - Recall issues, with options: Yes

  - Cumulative voting: No

  - Ranked choice voting: Yes

**This election was designed to functionally test the handling of
multiple ballot styles, support for ballot rotation, and support for
complex voting variations. Voting options for Over-voting and
Under-voting will be exercised.**

**Configuration:**

**EMS computer is used to create ballots with the following
characteristics:**

**Election named:** GEN-02 General Election

**<span class="underline">Precinct Based Testing</span>**

**3 machines used for voting one for Mooring, one for Hillwood and one
for all precincts.**

**3 precincts**: Creekside, Mooring, Hillwood

**2 parties:** Democrat, Republican

**Contest Totals: 15**

**Contests as listed:**

<table>
<thead>
<tr class="header">
<th><strong>Creekside</strong></th>
<th><strong>Mooring</strong></th>
<th><strong>Hillwood</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td colspan="3"><p><strong>President of the United States</strong></p>
<p><em>(Rotated)</em></p>
<p>Albina Sepich – DEM</p>
<p>Barbara Barrett Hicks – REP</p>
<p>Write-In</p>
<p>Vote for One</p></td>
</tr>
<tr class="even">
<td colspan="3"><p><strong>Senator of the United States</strong></p>
<p><em>(Rotated)</em></p>
<p>Carl Moore - DEM</p>
<p>David Heroux - REP</p>
<p>Write-in</p>
<p>Vote for One</p></td>
</tr>
<tr class="odd">
<td colspan="3"><p><strong>Lieutenant Governor</strong></p>
<p><em>(Rotated)</em></p>
<p>Edwin Best - DEM</p>
<p>Fiero Finn – REP</p>
<p>Write-In</p>
<p>Vote for One</p></td>
</tr>
<tr class="even">
<td colspan="3"><p><strong>Secretary of State</strong></p>
<p><em>(Rotated)</em></p>
<p>Gail Keefe - DEM</p>
<p>Harry Levin - REP</p>
<p>Write-In</p>
<p>Vote for One</p></td>
</tr>
<tr class="odd">
<td colspan="3"><p><strong>Sheriff of Morgan County (RCV)</strong></p>
<p><strong>(Non-Partisan)</strong></p>
<p>Imran Rashid</p>
<p>Jack "Duke" Brodisky</p>
<p>Ken Anderson</p>
<p>Leo Cross</p>
<p>Mary Burke</p>
<p>Nora Kling</p>
<p>Write-In</p>
<p>Write-In</p>
<p>Write-In</p>
<p>Vote for First Three Choices</p></td>
</tr>
<tr class="even">
<td><p><strong>State House of Representative</strong></p>
<p><strong>District 1</strong></p>
<p>Kay Raab -DEM</p>
<p>Laurie Cioffi - REP</p>
<p>Write-In</p>
<p>Vote for One</p></td>
<td colspan="2"><p><strong>State House of Representative</strong></p>
<p><strong>District 2</strong></p>
<p>Keith Satterwhite – DEM</p>
<p>Laurie St Laurent – REP</p>
<p>Write-In</p>
<p>Vote for One</p></td>
</tr>
<tr class="odd">
<td><p><strong>Member of Assembly</strong></p>
<p><strong>Seat A</strong></p>
<p>Maribeth Clark – DEM</p>
<p>Nathan Johnson –REP</p>
<p>Write-In</p>
<p>Vote for One</p></td>
<td><p><strong>Member of Assembly</strong></p>
<p><strong>Seat B</strong></p>
<p>Marjorie Hall - DEM</p>
<p>Neil Carey - REP</p>
<p>Write-In</p>
<p>Vote for One</p></td>
<td><p><strong>Member of Assembly</strong></p>
<p><strong>Seat C</strong></p>
<p>Marsha Johnson - DEM</p>
<p>Neil Pitzsimmons - REP</p>
<p>Write-In</p>
<p>Vote for One</p></td>
</tr>
<tr class="even">
<td colspan="3"><p><strong>School Board</strong></p>
<p><strong>District 21</strong></p>
<p><strong>(Non-Partisan)</strong></p>
<p>Patricia Smallmon</p>
<p>R Nicholas Burton</p>
<p>Sam Patel</p>
<p>Tabathia Song</p>
<p>Vincent Gould</p>
<p>Write-In</p>
<p>Write-In</p>
<p>Vote for Two</p></td>
</tr>
<tr class="odd">
<td colspan="3"><p><strong>Recall Governor</strong></p>
<p>Should the Governor of the State be Recalled for failure to perform his duties?</p>
<p>Yes</p>
<p>No</p>
<p>If the Governor is to be replaced which candidate should replace him?</p>
<p>Ala Dee Smith - DEM</p>
<p>Ben Baker - DEM</p>
<p>Calvin Marino - REP</p>
<p>David Cox - REP</p>
<p>Edris Thomas - REP</p>
<p>Vote for One</p></td>
</tr>
<tr class="even">
<td colspan="3"><p><strong>Proposal A</strong></p>
<p>County Charter</p>
<p>Shall there be approved and adopted in the County, a Local Law</p>
<p>passed by the Board of the County on August 19, 1974 entitled</p>
<p>"A Local Law to amend section six (a) of Article II of the County</p>
<p>Charter - changing the elected term of the County Board to four</p>
<p>years," which enlarges the term of office of each member of the</p>
<p>County Board of Legislators from two (2) years to four (4) years?</p>
<p>Yes</p>
<p>No</p>
<p>Vote for One</p></td>
</tr>
<tr class="odd">
<td colspan="3"><p><strong>Proposal B</strong></p>
<p>Exchange of Certain Property</p>
<p>Shall the proposed amendment to Article XIV, section 1 of the Constitution,</p>
<p>authorizing the conveyance of approximately ten acres of State Land in</p>
<p>exchange for approximately two hundred acres of wild forest land in order</p>
<p>to facilitate the preservation of certain historic buildings, be approved?</p>
<p>Yes</p>
<p>No</p>
<p>Vote for One</p></td>
</tr>
</tbody>
</table>

**Applicable Voting Devices:**

**OP Scanner, DRE, Central Count, EBM, and ADA device**

**Test Deck Pattern:**

**Ballots voted or pre-marked with the following pattern. The following
is the test pattern to be voted for the given precinct:**

| **Creekside**                      | 1 | 2 | 3 | 4 | 5  | 6 | 7 | 8  | 9  | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 |
|------------------------------------|---|---|---|---|----|---|---|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| **President of the United States** |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Albina Sepich                      | X | X | X | X | X  | X | X | X  | X  | X  |    |    |    |    |    |    |    | X  |    |    |    |
| Barbara Barrett Hicks              |   |   |   |   |    |   |   |    |    |    | X  | X  | X  | X  | X  | X  | X  | OX | U  |    |    |
| Write-In                           |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    | X  | X  |
| **Senator of the United States**   |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Carl Moore                         | U | U | X | X | X  | X | X |    |    |    |    |    |    |    |    |    | X  | X  | X  | X  | X  |
| David Heroux                       |   |   |   |   |    |   |   |    | X  | X  | X  | X  | X  | U  | U  |    |    |    |    |    |    |
| Write-in                           |   |   |   |   |    |   |   | X  |    |    |    |    |    |    |    | X  |    |    |    |    |    |
| **Lieutenant Governor**            |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Edwin Best                         |   |   | X |   | X  |   |   | U  |    | X  |    | X  |    |    | X  | X  | X  |    | X  |    | X  |
| Fiero                              | X | X |   | X | OX | X | X |    | X  |    | X  |    | X  |    |    |    |    | X  |    | X  |    |
| Finn                               |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Write-In                           |   |   |   |   |    |   |   |    |    |    |    |    |    | X  |    | OX |    |    |    |    |    |
| **Secretary of State**             |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Gail Keefe                         | X |   | X |   |    | U | X |    | X  |    |    | X  | X  |    | X  |    | X  | X  |    | X  |    |
| Harry Levin                        |   | X |   | X |    |   |   | X  |    | X  |    | OX |    | X  |    | X  |    |    | X  |    | X  |
| Write-In                           |   |   |   |   | X  |   |   |    |    |    | X  |    |    |    |    |    | OX |    |    |    | OX |
| **Sheriff of Morgan County**       |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Imran Rashid                       | 1 | 1 | 1 | 1 | 1  | 1 | 1 | 1  | 1  | 1  | 1  | 1  | 1  | 1  | 1  | 1  | 1  | 1  | 1  | 1  | U  |
| Jack "Duke" Brodisky               | 2 | 2 | 2 | 2 | 2  |   |   |    |    |    |    |    |    |    | 3  |    |    |    | 2  | U  | 2  |
| Ken Anderson                       | 3 |   |   |   |    | 2 | 2 | 2  | 2  |    |    |    |    |    |    | 3  |    |    | U  |    |    |
| Leo Cross                          |   | 3 |   |   |    | 3 |   |    |    | 2  | 2  | 2  |    |    |    |    | 3  |    |    | U  |    |
| Mary Burke                         |   |   | 3 |   |    |   | 3 |    |    | 3  |    |    | 2  | 2  |    |    |    | 3  |    |    | U  |
| Nora Kling                         |   |   |   | 3 |    |   |   | 3  |    |    | 3  |    | 3  |    | 2  | 2  | 2  | 2  |    |    |    |
| Write-In                           |   |   |   |   | 3  |   |   |    | 3  |    |    | 3  |    | 3  |    |    |    |    |    |    |    |
| Write-In                           |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Write-In                           |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| **State House of Representative**  |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| **District 1**                     |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Kay Raab                           | X | X | X | X | X  | X | X | U  | X  |    |    |    |    |    |    |    |    |    |    |    |    |
| Laurie Cioffi                      |   |   |   |   |    |   |   |    | OX |    | X  | X  | X  | X  | X  | X  | X  | X  | X  | U  |    |
| Write-In                           |   |   |   |   |    |   |   |    |    | X  |    |    |    |    |    |    |    |    | OX |    | X  |
| **Member of Assembly Seat A**      |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Maribeth Clark                     |   | X |   | X |    | X |   | X  |    | X  |    | X  |    | X  | U  | X  |    | X  |    | X  | U  |
| Nathan Johnson                     | X |   | X |   | X  |   | X |    | X  |    | X  |    | X  |    |    | OX | X  |    | X  |    |    |
| Write-In                           |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| **School Board District 21**       |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Patricia Smallmon                  | X |   |   |   |    |   | X | X  | X  | U  | X  |    |    |    |    |    |    | X  |    | X  |    |
| R Nicholas Burton                  | X | X |   |   |    |   | U | X  | U  |    |    |    | X  |    |    |    | X  |    |    |    |    |
| Sam Patel                          |   | X | X |   |    |   |   | OX |    |    |    |    |    | X  | X  | X  |    |    |    |    |    |
| Tabathia Song                      |   |   | X | X |    |   |   |    |    |    |    | X  |    |    |    |    |    |    |    |    |    |
| Vicent Gould                       |   |   |   | X | X  |   |   |    |    |    | X  | X  | X  | X  | X  | X  | X  | X  |    | X  |    |
| Write-In                           |   |   |   |   |    | X |   |    |    | X  |    |    |    |    |    |    |    |    | XX |    | XX |
| **Recall Governor**                |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Yes                                | X | X | X |   |    | U | X | X  | X  |    | U  | X  | X  | X  |    | X  | X  | X  | X  |    |    |
| No                                 |   |   |   | X | X  |   |   |    |    | OX |    |    |    |    | X  |    |    |    |    | X  | X  |
| **Governor**                       |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Ala Dee Smith                      | X | X | X | X | X  | X |   |    |    |    |    |    | U  | X  | X  | X  | X  |    |    |    |    |
| Ben Baker                          |   |   |   |   |    |   | X | X  | X  |    |    |    |    |    |    |    |    | X  | X  | X  |    |
| Calvin Marino                      |   |   |   |   |    |   |   |    |    | X  | X  |    |    |    |    |    |    |    |    |    | X  |
| David Cox                          |   |   |   |   |    |   |   |    |    |    |    | X  |    |    |    |    |    |    |    |    |    |
| Edris Thomas                       |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| **Proposal A**                     |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Yes                                | X |   | X |   | X  |   | U |    | X  |    | X  |    | X  | X  |    | X  |    | U  | X  |    |    |
| No                                 |   | X |   | X |    | X |   | X  |    | X  |    | U  | OX |    | X  |    | X  |    |    | X  | X  |
| **Proposal B**                     |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Yes                                |   | X |   | X |    | X |   | U  |    | X  |    | X  |    | X  |    | X  |    | X  |    | X  | X  |
| No                                 | X |   | X |   | X  |   | X |    | X  |    | X  |    | X  | OX | X  |    | X  |    | X  |    |    |

| **Mooring**                        | 1 | 2 | 3 | 4 | 5  | 6 | 7 | 8  | 9  | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 |
|------------------------------------|---|---|---|---|----|---|---|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| **President of the United States** |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Albina Sepich                      | X | X | X | X | X  | X | X | X  | X  | X  |    |    |    |    |    |    |    | X  |    |    |    |
| Barbara Barrett Hicks              |   |   |   |   |    |   |   |    |    |    | X  | X  | X  | X  | X  | X  | X  | OX | U  |    |    |
| Write-In                           |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    | X  | X  |
| **Senator of the United States**   |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Carl Moore                         | U | U | X | X | X  | X | X |    |    |    |    |    |    |    |    |    | X  | X  | X  | X  | X  |
| David Heroux                       |   |   |   |   |    |   |   |    | X  | X  | X  | X  | X  | U  | U  |    |    |    |    |    |    |
| Write-in                           |   |   |   |   |    |   |   | X  |    |    |    |    |    |    |    | X  |    |    |    |    |    |
| **Lieutenant Governor**            |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Edwin Best                         |   |   | X |   | X  |   |   | U  |    | X  |    | X  |    |    | X  | X  | X  |    | X  |    | X  |
| Fiero                              | X | X |   | X | OX | X | X |    | X  |    | X  |    | X  |    |    |    |    | X  |    | X  |    |
| Finn                               |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Write-In                           |   |   |   |   |    |   |   |    |    |    |    |    |    | X  |    | OX |    |    |    |    |    |
| **Secretary of State**             |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Gail Keefe                         | X |   | X |   |    | U | X |    | X  |    |    | X  | X  |    | X  |    | X  | X  |    | X  |    |
| Harry Levin                        |   | X |   | X |    |   |   | X  |    | X  |    | OX |    | X  |    | X  |    |    | X  |    | X  |
| Write-In                           |   |   |   |   | X  |   |   |    |    |    | X  |    |    |    |    |    | OX |    |    |    | OX |
| **Sheriff of Morgan County**       |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Imran Rashid                       | 1 | 1 | 1 | 1 | 1  | 1 | 1 | 1  | 1  | 1  | 1  | 1  | 1  | 1  | 1  | 1  | 1  | 1  | 1  | 1  | U  |
| Jack "Duke" Brodisky               | 2 | 2 | 2 | 2 | 2  |   |   |    |    |    |    |    |    |    | 3  |    |    |    | 2  | U  | 2  |
| Ken Anderson                       | 3 |   |   |   |    | 2 | 2 | 2  | 2  |    |    |    |    |    |    | 3  |    |    | U  |    |    |
| Leo Cross                          |   | 3 |   |   |    | 3 |   |    |    | 2  | 2  | 2  |    |    |    |    | 3  |    |    | U  |    |
| Mary Burke                         |   |   | 3 |   |    |   | 3 |    |    | 3  |    |    | 2  | 2  |    |    |    | 3  |    |    | U  |
| Nora Kling                         |   |   |   | 3 |    |   |   | 3  |    |    | 3  |    | 3  |    | 2  | 2  | 2  | 2  |    |    |    |
| Write-In                           |   |   |   |   | 3  |   |   |    | 3  |    |    | 3  |    | 3  |    |    |    |    |    |    |    |
| Write-In                           |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Write-In                           |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| **State House of Representative**  |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| **District 2**                     |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Keith Satterwhite                  | X | X | X | X | X  | X | X | U  | X  |    |    |    |    |    |    |    |    |    |    |    |    |
| Laurie St Laurent                  |   |   |   |   |    |   |   |    | OX |    | X  | X  | X  | X  | X  | X  | X  | X  | X  | U  |    |
| Write-In                           |   |   |   |   |    |   |   |    |    | X  |    |    |    |    |    |    |    |    | OX |    | X  |
| **Member of Assembly Seat B**      |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Marjorie Hall                      |   | X |   | X |    | X |   | X  |    | X  |    | X  |    | X  | U  | X  |    | X  |    | X  | U  |
| Neil Carey                         | X |   | X |   | X  |   | X |    | X  |    | X  |    | X  |    |    | OX | X  |    | X  |    |    |
| Write-In                           |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| **School Board District 21**       |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Patricia Smallmon                  | X |   |   |   |    |   | X | X  | X  | U  | X  |    |    |    |    |    |    | X  |    | X  |    |
| R Nicholas Burton                  | X | X |   |   |    |   | U | X  | U  |    |    |    | X  |    |    |    | X  |    |    |    |    |
| Sam Patel                          |   | X | X |   |    |   |   | OX |    |    |    |    |    | X  | X  | X  |    |    |    |    |    |
| Tabathia Song                      |   |   | X | X |    |   |   |    |    |    |    | X  |    |    |    |    |    |    |    |    |    |
| Vicent Gould                       |   |   |   | X | X  |   |   |    |    |    | X  | X  | X  | X  | X  | X  | X  | X  |    | X  |    |
| Write-In                           |   |   |   |   |    | X |   |    |    | X  |    |    |    |    |    |    |    |    | XX |    | XX |
| **Recall Governor**                |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Yes                                | X | X | X |   |    | U | X | X  | X  |    | U  | X  | X  | X  |    | X  | X  | X  | X  |    |    |
| No                                 |   |   |   | X | X  |   |   |    |    | OX |    |    |    |    | X  |    |    |    |    | X  | X  |
| **Governor**                       |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Ala Dee Smith                      | X | X | X | X | X  | X |   |    |    |    |    |    | U  | X  | X  | X  | X  |    |    |    |    |
| Ben Baker                          |   |   |   |   |    |   | X | X  | X  |    |    |    |    |    |    |    |    | X  | X  | X  |    |
| Calvin Marino                      |   |   |   |   |    |   |   |    |    | X  | X  |    |    |    |    |    |    |    |    |    | X  |
| David Cox                          |   |   |   |   |    |   |   |    |    |    |    | X  |    |    |    |    |    |    |    |    |    |
| Edris Thomas                       |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| **Proposal A**                     |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Yes                                | X |   | X |   | X  |   | U |    | X  |    | X  |    | X  | X  |    | X  |    | U  | X  |    |    |
| No                                 |   | X |   | X |    | X |   | X  |    | X  |    | U  | OX |    | X  |    | X  |    |    | X  | X  |
| **Proposal B**                     |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Yes                                |   | X |   | X |    | X |   | U  |    | X  |    | X  |    | X  |    | X  |    | X  |    | X  | X  |
| No                                 | X |   | X |   | X  |   | X |    | X  |    | X  |    | X  | OX | X  |    | X  |    | X  |    |    |

| **Hillwood**                       | 1 | 2 | 3 | 4 | 5  | 6 | 7 | 8  | 9  | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 |
|------------------------------------|---|---|---|---|----|---|---|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| **President of the United States** |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Albina Sepich                      | X | X | X | X | X  | X | X | X  | X  | X  |    |    |    |    |    |    |    | X  |    |    |    |
| Barbara Barrett Hicks              |   |   |   |   |    |   |   |    |    |    | X  | X  | X  | X  | X  | X  | X  | OX | U  |    |    |
| Write-In                           |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    | X  | X  |
| **Senator of the United States**   |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Carl Moore                         | U | U | X | X | X  | X | X |    |    |    |    |    |    |    |    |    | X  | X  | X  | X  | X  |
| David Heroux                       |   |   |   |   |    |   |   |    | X  | X  | X  | X  | X  | U  | U  |    |    |    |    |    |    |
| Write-in                           |   |   |   |   |    |   |   | X  |    |    |    |    |    |    |    | X  |    |    |    |    |    |
| **Lieutenant Governor**            |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Edwin Best                         |   |   | X |   | X  |   |   | U  |    | X  |    | X  |    |    | X  | X  | X  |    | X  |    | X  |
| Fiero                              | X | X |   | X | OX | X | X |    | X  |    | X  |    | X  |    |    |    |    | X  |    | X  |    |
| Finn                               |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Write-In                           |   |   |   |   |    |   |   |    |    |    |    |    |    | X  |    | OX |    |    |    |    |    |
| **Secretary of State**             |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Gail Keefe                         | X |   | X |   |    | U | X |    | X  |    |    | X  | X  |    | X  |    | X  | X  |    | X  |    |
| Harry Levin                        |   | X |   | X |    |   |   | X  |    | X  |    | OX |    | X  |    | X  |    |    | X  |    | X  |
| Write-In                           |   |   |   |   | X  |   |   |    |    |    | X  |    |    |    |    |    | OX |    |    |    | OX |
| **Sheriff of Morgan County**       |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Imran Rashid                       | 1 | 1 | 1 | 1 | 1  | 1 | 1 | 1  | 1  | 1  | 1  | 1  | 1  | 1  | 1  | 1  | 1  | 1  | 1  | 1  | U  |
| Jack "Duke" Brodisky               | 2 | 2 | 2 | 2 | 2  |   |   |    |    |    |    |    |    |    | 3  |    |    |    | 2  | U  | 2  |
| Ken Anderson                       | 3 |   |   |   |    | 2 | 2 | 2  | 2  |    |    |    |    |    |    | 3  |    |    | U  |    |    |
| Leo Cross                          |   | 3 |   |   |    | 3 |   |    |    | 2  | 2  | 2  |    |    |    |    | 3  |    |    | U  |    |
| Mary Burke                         |   |   | 3 |   |    |   | 3 |    |    | 3  |    |    | 2  | 2  |    |    |    | 3  |    |    | U  |
| Nora Kling                         |   |   |   | 3 |    |   |   | 3  |    |    | 3  |    | 3  |    | 2  | 2  | 2  | 2  |    |    |    |
| Write-In                           |   |   |   |   | 3  |   |   |    | 3  |    |    | 3  |    | 3  |    |    |    |    |    |    |    |
| Write-In                           |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Write-In                           |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| **State House of Representative**  |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| **District 2**                     |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Keith Satterwhite                  | X | X | X | X | X  | X | X | U  | X  |    |    |    |    |    |    |    |    |    |    |    |    |
| Laurie St Laurent                  |   |   |   |   |    |   |   |    | OX |    | X  | X  | X  | X  | X  | X  | X  | X  | X  | U  |    |
| Write-In                           |   |   |   |   |    |   |   |    |    | X  |    |    |    |    |    |    |    |    | OX |    | X  |
| **Member of Assembly Seat C**      |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Marsha Johnson                     |   | X |   | X |    | X |   | X  |    | X  |    | X  |    | X  | U  | X  |    | X  |    | X  | U  |
| Neil Pitzsimmons                   | X |   | X |   | X  |   | X |    | X  |    | X  |    | X  |    |    | OX | X  |    | X  |    |    |
| Write-In                           |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| **School Board District 21**       |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Patricia Smallmon                  | X |   |   |   |    |   | X | X  | X  | U  | X  |    |    |    |    |    |    | X  |    | X  |    |
| R Nicholas Burton                  | X | X |   |   |    |   | U | X  | U  |    |    |    | X  |    |    |    | X  |    |    |    |    |
| Sam Patel                          |   | X | X |   |    |   |   | OX |    |    |    |    |    | X  | X  | X  |    |    |    |    |    |
| Tabathia Song                      |   |   | X | X |    |   |   |    |    |    |    | X  |    |    |    |    |    |    |    |    |    |
| Vicent Gould                       |   |   |   | X | X  |   |   |    |    |    | X  | X  | X  | X  | X  | X  | X  | X  |    | X  |    |
| Write-In                           |   |   |   |   |    | X |   |    |    | X  |    |    |    |    |    |    |    |    | XX |    | XX |
| **Recall Governor**                |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Yes                                | X | X | X |   |    | U | X | X  | X  | X  | U  | X  | X  | X  |    | X  | X  | X  | X  |    |    |
| No                                 |   |   |   | X | X  |   |   |    |    | OX |    |    |    |    | X  |    |    |    |    | X  | X  |
| **Governor**                       |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Ala Dee Smith                      | X | X | X | X | X  | X |   |    |    |    |    |    | U  | X  | X  | X  | X  |    |    |    |    |
| Ben Baker                          |   |   |   |   |    |   | X | X  | X  |    |    |    |    |    |    |    |    | X  | X  | X  |    |
| Calvin Marino                      |   |   |   |   |    |   |   |    |    | X  | X  |    |    |    |    |    |    |    |    |    | X  |
| David Cox                          |   |   |   |   |    |   |   |    |    |    |    | X  |    |    |    |    |    |    |    |    |    |
| Edris Thomas                       |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| **Proposal A**                     |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Yes                                | X |   | X |   | X  |   | U |    | X  |    | X  |    | X  | X  |    | X  |    | U  | X  |    |    |
| No                                 |   | X |   | X |    | X |   | X  |    | X  |    | U  | OX |    | X  |    | X  |    |    | X  | X  |
| **Proposal B**                     |   |   |   |   |    |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Yes                                |   | X |   | X |    | X |   | U  |    | X  |    | X  |    | X  |    | X  |    | X  |    | X  | X  |
| No                                 | X |   | X |   | X  |   | X |    | X  |    | X  |    | X  | OX | X  |    | X  |    | X  |    |    |

**Test Results:**

**Creekside**

**President of the United States**

**Albina Sepich 10**

**Barbara Barett Hicks 7**

**Write-In 2**

**Under Vote 1**

**OverVote 1**

**Senator of The United States**

**Carl Moore 10**

**David Heroux 5**

**Write-In 2**

**Under Vote 4**

**OverVote**

**Lieutenant Governor**

**Edwin Best 7**

**Fiero Finn 10**

**Write-In 1**

**Under Vote 1**

**OverVote 2**

**Secretary of State**

**Gail Keefe 8**

**Harry Levin 7**

**Write-In 2**

**Under Vote 1**

**OverVote 3**

**Sheriff of Morgan County**

**Imran Rashid 1-20**

**Jack “Duke” Brodisky 2-7, 3-1**

**Ken Anderson 2-4, 3-2**

**Leo Cross 2-3, 3-3**

**Mary Burke 2-2, 3-4**

**Nora Kling 2-4, 3-4**

**Write-In 3-4**

**Write-In 0**

**Write-In 0**

**Under Vote 4**

**OverVote**

**State House of Representative District 1**

**Kay Raab 7**

**Laurie Cioffi 8**

**Write-In 2**

**Under Vote 2**

**OverVote 2**

**Member of Assembly Seat A**

**Maribeth Clark 9**

**Nathan Johnson 9**

**Write-In 0**

**Under Vote 2**

**OverVote 1**

**School Board District 21**

**Patricia Smallmon 6**

**R Nicholas Burton 4**

**Sam Patel 5**

**Tabthia Song 3**

**Vicent Gould 11**

**Write-In 6**

**Under Vote 5**

**OverVote 2**

**Recall Governor**

**Yes 13**

**No 5**

**Under Vote 2**

**OverVote 1**

**Governor**

**Ala Dee Smith 10**

**Ben Baker 6**

**Calvin Marino 3**

**David Cox 1**

**Edris Thomas 0**

**Under Vote 1**

**OverVote 0**

**Proposal A**

**Yes 8**

**No 9**

**Under Vote 3**

**OverVote 1**

**Proposal B**

**Yes 9**

**No 10**

**Under Vote 1**

**OverVote 1**

**Mooring**

**President of the United States**

**Albina Sepich 10**

**Barbara Barett Hicks 7**

**Write-In 2**

**Under Vote 1**

**OverVote 1**

**Senator of The United States**

**Carl Moore 10**

**David Heroux 5**

**Write-In 2**

**Under Vote 4**

**OverVote**

**Lieutenant Governor**

**Edwin Best 7**

**Fiero Finn 10**

**Write-In 1**

**Under Vote 1**

**OverVote 2**

**Secretary of State**

**Gail Keefe 8**

**Harry Levin 7**

**Write-In 2**

**Under Vote 1**

**OverVote 3**

**Sheriff of Morgan County**

**Imran Rashid 1-20**

**Jack “Duke” Brodisky 2-7, 3-1**

**Ken Anderson 2-4, 3-2**

**Leo Cross 2-3, 3-3**

**Mary Burke 2-2, 3-4**

**Nora Kling 2-4, 3-4**

**Write-In 3-4**

**Write-In 0**

**Write-In 0**

**Under Vote 4**

**OverVote**

**State House of Representative District 2**

Keith Satterwhite 7

Laurie St Laurent 8

Write-In 2

**Under Vote 2**

**OverVote 2**

**Member of Assembly Seat B**

Marjorie Hall 9

Neil Carey 9

Write-In 0

**Under Vote 2**

**OverVote 1**

**School Board District 21**

**Patricia Smallmon 6**

**R Nicholas Burton 4**

**Sam Patel 5**

**Tabthia Song 3**

**Vicent Gould 11**

**Write-In 6**

**Under Vote 5**

**OverVote 2**

**Recall Governor**

**Yes 13**

**No 5**

**Under Vote 2**

**OverVote 1**

**Governor**

**Ala Dee Smith 10**

**Ben Baker 6**

**Calvin Marino 3**

**David Cox 1**

**Edris Thomas 0**

**Under Vote 1**

**OverVote 0**

**Proposal A**

**Yes 8**

**No 9**

**Under Vote 3**

**OverVote 1**

**Proposal B**

**Yes 9**

**No 10**

**Under Vote 1**

**OverVote 1**

**Hillwood**

**President of the United States**

**Albina Sepich 10**

**Barbara Barett Hicks 7**

**Write-In 2**

**Under Vote 1**

**OverVote 1**

**Senator of The United States**

**Carl Moore 10**

**David Heroux 5**

**Write-In 2**

**Under Vote 4**

**OverVote**

**Lieutenant Governor**

**Edwin Best 7**

**Fiero Finn 10**

**Write-In 1**

**Under Vote 1**

**OverVote 2**

**Secretary of State**

**Gail Keefe 8**

**Harry Levin 7**

**Write-In 2**

**Under Vote 1**

**OverVote 3**

**Sheriff of Morgan County**

**Imran Rashid 1-20**

**Jack “Duke” Brodisky 2-7, 3-1**

**Ken Anderson 2-4, 3-2**

**Leo Cross 2-3, 3-3**

**Mary Burke 2-2, 3-4**

**Nora Kling 2-4, 3-4**

**Write-In 3-4**

**Write-In 0**

**Write-In 0**

**Under Vote 4**

**OverVote**

**State House of Representative District 2**

Keith Satterwhite 7

Laurie St Laurent 8

Write-In 2

**Under Vote 2**

**OverVote 2**

**Member of Assembly Seat C**

Marsha Johnson 9

Neil Pitzsimmons 9

Write-In 0

**Under Vote 2**

**OverVote 1**

**School Board District 21**

**Patricia Smallmon 6**

**R Nicholas Burton 4**

**Sam Patel 5**

**Tabthia Song 3**

**Vicent Gould 11**

**Write-In 6**

**Under Vote 5**

**OverVote 2**

**Recall Governor**

**Yes 13**

**No 5**

**Under Vote 2**

**OverVote 1**

**Governor**

**Ala Dee Smith 10**

**Ben Baker 6**

**Calvin Marino 3**

**David Cox 1**

**Edris Thomas 0**

**Under Vote 1**

**OverVote 0**

**Proposal A**

**Yes 8**

**No 9**

**Under Vote 3**

**OverVote 1**

**Proposal B**

**Yes 9**

**No 10**

**Under Vote 1**

**OverVote 1**

**Cumulative Totals**

**President of the United States**

**Albina Sepich 30**

**Barbara Barett Hicks 21**

**Write-In 6**

**Under Vote 3**

**OverVote 3**

**Senator of The United States**

**Carl Moore 30**

**David Heroux 15**

**Write-In 6**

**Under Vote 12**

**OverVote**

**Lieutenant Governor**

**Edwin Best 21**

**Fiero Finn 30**

**Write-In 3**

**Under Vote 3**

**OverVote 6**

**Secretary of State**

**Gail Keefe 24**

**Harry Levin 21**

**Write-In 6**

**Under Vote 3**

**OverVote 9**

**Sheriff of Morgan County**

**Imran Rashid 1-60**

**Jack “Duke” Brodisky 2-21, 3-3**

**Ken Anderson 2-12, 3-6**

**Leo Cross 2-9, 3-9**

**Mary Burke 2-2, 3-12**

**Nora Kling 2-12, 3-12**

**Write-In 3-12**

**Write-In 0**

**Write-In 0**

**Under Vote 12**

**OverVote**

**State House of Representative District 1**

**Kay Raab 7**

**Laurie Cioffi 8**

**Write-In 2**

**Under Vote 2**

**OverVote 2**

**State House of Representative District 2**

Keith Satterwhite 14

Laurie St Laurent 16

Write-In 4

**Under Vote 4**

**OverVote 4**

**Member of Assembly Seat A**

**Maribeth Clark 9**

**Nathan Johnson 9**

**Write-In 0**

**Under Vote 2**

**OverVote 1**

**Member of Assembly Seat B**

Marjorie Hall 9

Neil Carey 9

Write-In 0

**Under Vote 2**

**OverVote 1**

**Member of Assembly Seat C**

Marsha Johnson 9

Neil Pitzsimmons 9

Write-In 0

**Under Vote 2**

**OverVote 1**

**School Board District 21**

**Patricia Smallmon 18**

**R Nicholas Burton 12**

**Sam Patel 15**

**Tabthia Song 9**

**Vicent Gould 33**

**Write-In 18**

**Under Vote 15**

**OverVote 6**

**Recall Governor**

**Yes 39**

**No 15**

**Under Vote 6**

**OverVote 3**

**Governor**

**Ala Dee Smith 30**

**Ben Baker 18**

**Calvin Marino 9**

**David Cox 3**

**Edris Thomas 0**

**Under Vote 3**

**OverVote 0**

**Proposal A**

**Yes 24**

**No 27**

**Under Vote 9**

**OverVote 3**

**Proposal B**

**Yes 27**

**No 30**

**Under Vote 3**

**OverVote 3**

**Criteria For Evaluation of Test Results:**

The results of this test will be accepted if the stated election
definition can be input into the EMS, the election transferred to the
voting machine, voted according to the test vote pattern, and the
results reported and audited to match the expected results. During the
execution of this election all errors need to be logged and analyzed by
qualified personal to determine if the error is an actual error or
another issue.
