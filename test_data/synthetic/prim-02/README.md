# NIST Voting Common Data Format Test Method – Test Data  
Synthetic Dataset – PRIM-02

The purpose of the test data dataset is to provide worked examples of
the common data formats that are compact and comprehensive. This
document describes single election, test deck, and results. Common Data
Format equivalents are provided at
<https://github.com/usnistgov/cdf-test-method/>

This election definition was provided by the Pro V\&V, a Voting System
Test Lab (VSTL). It has been modified somewhat for purposes of
supporting the production of Common Data Format examples. It is one of
several test elections that has been developed.

ELECTION DEFINITION: PRIM-02

**Open Primary Election**

A basic election held in 2 precincts. This election contains 13 contests
compiled into 3 ballot styles. 1 contest is in all 3 ballot styles all
other contests are independent. The voting variations supported by this
election are as follow:

  - Closed Primary: No

  - Open Primary: Yes

  - Partisan offices: Yes

  - Non-Partisan offices: Yes

  - Write-in voting: Yes

  - Primary presidential delegation nominations: Yes

  - Ballot Rotation: No

  - Straight Party voting: No

  - Cross-party endorsement: Yes

  - Split Precincts: No

  - Vote for N of M: Yes

  - Recall issues, with options: No

  - Cumulative voting: No

  - Ranked choice voting: No

This election was designed to functionally test the handling of
multiple ballot styles, support for Primary presidential delegation
nominations, support for complex voting variations, and audio support
for multiple languages. The election will be an open primary election
with one machine running for each precinct. Voting options for
Over-voting, Under-voting and write-in voting will be exercised. Ballot
20 was selected to test Cross Overvoting functionality in systems whose
Open Primaries support multiple parties on a single ballot. Cross
Overvoting occurs when a voter selects candidates in a contest for one
party then selects a candidate in the same contest for another party on
the ballot. If this occurs, the contest is considered overvoted and does
not count for any party on the ballot. NOTE: Overvotes and undervotes
are listed in results based upon the “Vote For” value of the contest.
For Example: If a Vote For 3 contest is undervoted, it is counted as 3
undervotes.

**Configuration:**

**EMS computer is used to create ballots with the following
characteristics:**

**Election named:** PRIM-02

**<span class="underline">Precinct Based Testing</span>**

**1 machines used for voting in one precinct**

**2 precincts**: Fire station 7, Mountain Gap School

**3 parties:** Democrat, Libertarian, Republican

**Contest Totals:** 13

**Contests as listed:**

<table>
<thead>
<tr class="header">
<th><strong>PRIM - 02</strong></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Democratic Party</strong></td>
<td><strong>Libertarian Party</strong></td>
<td><strong>Republican Party</strong></td>
</tr>
<tr class="even">
<td><p><strong>US PRESIDENT</strong></p>
<p>Barack Obama</p>
<p>Bill Richardson</p>
<p>Dennis Kucinich</p>
<p>Hillary Clinton</p>
<p>Joe Biden</p>
<p>John Edwards</p>
<p>Write-In</p>
<p>Vote for One</p></td>
<td><p><strong>US PRESIDENT</strong></p>
<p>Bob Barr</p>
<p>Wayne A. Boot</p>
<p>Roger Calero</p>
<p>Alyson Kennedy</p>
<p>Write-In</p>
<p>Vote for One</p></td>
<td><p><strong>US PRESIDENT</strong></p>
<p>John McCain</p>
<p>Fred Thompson</p>
<p>Mike Huckabee</p>
<p>Ron Paul</p>
<p>Mitt Romney</p>
<p>Rudy Giuliani</p>
<p>Write-In</p>
<p>Vote For One</p></td>
</tr>
<tr class="odd">
<td><p><strong>US SENATOR</strong></p>
<p>Cynthia Mckinney</p>
<p>Write-in</p>
<p>Vote for One</p></td>
<td><p><strong>US SENATOR</strong></p>
<p>(If Cross Endorsement not supported Jim Doyle )</p>
<p>Cynthia Mckinney</p>
<p>Write-in</p>
<p>Vote for One</p></td>
<td><p><strong>US SENATOR</strong></p>
<p>Jean Hundertmark</p>
<p>J. B. Van Hollen</p>
<p>Write-in</p>
<p>Vote for One</p></td>
</tr>
<tr class="even">
<td><p><strong>STATE REPRESENTATIVE</strong></p>
<p><strong>DISTRICT 23</strong></p>
<p>Jon ErpenBach</p>
<p>Janis Ringhand</p>
<p>Write-in</p>
<p>Vote for One</p></td>
<td><p><strong>STATE REPRESENTATIVE</strong></p>
<p><strong>DISTRICT 23</strong></p>
<p>Tim Peterson</p>
<p>Write-in</p>
<p>Vote for One</p></td>
<td><p><strong>STATE REPRESENTATIVE</strong></p>
<p><strong>DISTRICT 23</strong></p>
<p>Sandy Sullivan</p>
<p>Jack C. Vought</p>
<p>Write-in</p>
<p>Vote for One</p></td>
</tr>
<tr class="odd">
<td><p><strong>Delegates to the<br />
Democratic National Convention</strong></p>
<p><strong>(</strong><em>Group 1)</em></p>
<p>Micheal Fegley</p>
<p>Bliar Johnston</p>
<p>Kathy Campbell</p>
<p><em>(Group 2)</em></p>
<p>Iris N. Linares</p>
<p>Thomas A. Wallitsch</p>
<p>Joseph J. Russo</p>
<p>Vote for One</p></td>
<td><p><strong>Delegates to the<br />
Libertarian National Convention</strong></p>
<p><strong>(</strong><em>Group 1)</em></p>
<p>Dorthy Baran</p>
<p>Wendy Fuentes</p>
<p>Don Cunningham</p>
<p><strong>(</strong><em>Group 2)</em></p>
<p>Jennifer L. Mann</p>
<p>Robert McCord</p>
<p>Julius F. Cordisco</p>
<p>Vote for One</p></td>
<td><p><strong>Delegates to the<br />
Republican National Convention</strong></p>
<p><strong>(</strong><em>Group 1)</em></p>
<p>Dennis Morrison-Wesley</p>
<p>Jack Wagner</p>
<p>John M. Morganelli</p>
<p><strong>(</strong><em>Group 2)</em></p>
<p>Lilijana Xitlalli Dragović<br />
Amaru Nehuén<br />
Nita Iracema</p>
<p>Vote for One</p></td>
</tr>
<tr class="even">
<td colspan="3"><p><strong>Proposition 54</strong></p>
<p><strong>Classification by Race, Ethnicity, Color, or National Origin,</strong></p>
<p><strong>Initiative Constitutional Amendment</strong></p>
<p>Prohibits state and local governments from classifying any person<br />
by race, ethnicity, color, or national origin. Various exemptions apply.<br />
Fiscal Impact: The measure would not result in a significant fiscal impact<br />
on the state and local governments.</p>
<p>YES</p>
<p>NO</p>
<p>Vote for One</p></td>
</tr>
</tbody>
</table>

**Applicable Voting Devices:**

**OP Scanner, DRE, Central Count, EBM, and ADA device**

**Test Deck Pattern:**

**Ballots voted or pre-marked with the following pattern. The following
is the test pattern to be voted for the given precinct:**

| **Fire station  7**                 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 |
|-------------------------------------|---|---|---|---|---|---|---|---|---|----|----|----|----|----|----|----|----|----|----|----|
| **Democratic Party Ballot**         |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Barack Obama                        | X |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    | X  |
| Bill Richardson                     |   | X |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Dennis Kucinich                     |   |   | X |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Hillary Clinton                     |   |   |   | X |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Joe Biden                           |   |   |   |   | X |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| John Edwards                        |   |   |   |   |   | X |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Write-In                            |   |   |   |   |   |   | X |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **US SENATOR**                      |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Cynthia Mckinney                    | X | X | X | X | X | X | X |   |   |    |    |    |    |    |    |    |    |    |    | X  |
| Write-in                            |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **STATE REPRESENTATIVE**            |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **DISTRICT 23**                     |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Jon ErpenBach                       | X | X | X | X | X | U |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Janis Ringhand                      |   |   |   |   |   |   | X |   |   |    |    |    |    |    |    |    |    |    |    | X  |
| Write-in                            |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **Delegates to the**                |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **Democratic National Convention**  |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **(Grouped)**                       |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Micheal Fegley                      | X |   | X |   | X |   | U |   |   |    |    |    |    |    |    |    |    |    |    | X  |
| Bliar Johnston                      |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Kathy Campbell                      |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Iris N. Linares                     |   | X |   | X |   | X |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Thomas A. Wallitsch                 |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Joseph J. Russo                     |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **Proposition 54**                  |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| YES                                 | X |   | X |   | X |   | X |   |   |    |    |    |    |    |    |    |    |    |    |    |
| NO                                  |   | X |   | X |   | X |   |   |   |    |    |    |    |    |    |    |    |    |    | X  |
| **Libertarian Party Ballot**        |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **US PRESIDENT**                    |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Bob Barr                            |   |   |   |   |   |   |   | X |   |    | U  |    | X  |    |    |    |    |    |    | X  |
| Wayne A. Boot                       |   |   |   |   |   |   |   |   | X |    |    |    |    |    |    |    |    |    |    |    |
| Roger Calero                        |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Alyson Kennedy                      |   |   |   |   |   |   |   |   |   | X  |    | X  |    |    |    |    |    |    |    |    |
| Write-In                            |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **US SENATOR**                      |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Cynthia Mckinney                    |   |   |   |   |   |   |   |   | X | X  | X  | U  | X  |    |    |    |    |    |    | X  |
| Write-in                            |   |   |   |   |   |   |   | X |   |    |    |    |    |    |    |    |    |    |    |    |
| **STATE REPRESENTATIVE**            |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **DISTRICT 23**                     |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Tim Peterson                        |   |   |   |   |   |   |   | X | X | X  |    | U  | X  |    |    |    |    |    |    |    |
| Write-in                            |   |   |   |   |   |   |   |   |   |    | X  |    | OX |    |    |    |    |    |    | X  |
| **Delegates to the**                |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **Libertarian National Convention** |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **(Grouped)**                       |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Dorthy Baran                        |   |   |   |   |   |   |   | X |   | X  |    | X  | X  |    |    |    |    |    |    | X  |
| Wendy Fuentes                       |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Don Cunningham                      |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Jennifer L. Mann                    |   |   |   |   |   |   |   |   | X |    | X  | OX |    |    |    |    |    |    |    |    |
| Robert McCord                       |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Julius F. Cordisco                  |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **Proposition 54**                  |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| YES                                 |   |   |   |   |   |   |   |   | X |    |    |    | X  |    |    |    |    |    |    |    |
| NO                                  |   |   |   |   |   |   |   | X |   | X  | X  | X  |    |    |    |    |    |    |    | X  |
| **Republican Party Ballot**         |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **US PRESIDENT**                    |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| John McCain                         |   |   |   |   |   |   |   |   |   |    |    |    |    | X  | X  |    | X  |    | X  | X  |
| Fred Thompson                       |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Mike Huckabee                       |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Ron Paul                            |   |   |   |   |   |   |   |   |   |    |    |    |    | OX |    | X  |    |    |    |    |
| Mitt Romney                         |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Rudy Giuliani                       |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Write-In                            |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    | X  |    |    |
| **US SENATOR**                      |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Jean Hundertmark                    |   |   |   |   |   |   |   |   |   |    |    |    |    |    | X  | U  | X  |    |    | X  |
| J. B. Van Hollen                    |   |   |   |   |   |   |   |   |   |    |    |    |    | X  |    |    |    | X  | X  |    |
| Write-in                            |   |   |   |   |   |   |   |   |   |    |    |    |    |    | OX |    |    |    |    |    |
| **STATE REPRESENTATIVE**            |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **DISTRICT 23**                     |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Sandy Sullivan                      |   |   |   |   |   |   |   |   |   |    |    |    |    | U  | X  | X  | X  | X  | X  |    |
| Jack C. Vought                      |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    | X  |
| Write-in                            |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    | OX |    |
| **Delegates to the**                |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **Republican National Convention**  |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **(Grouped)**                       |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Dennis Morrison-Wesley              |   |   |   |   |   |   |   |   |   |    |    |    |    |    | X  |    | U  | X  |    | X  |
| Jack Wagner                         |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| John M. Morganelli                  |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Micheal Fegley                      |   |   |   |   |   |   |   |   |   |    |    |    |    | X  |    | X  |    |    | X  |    |
| Bliar Johnston                      |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Kathy Campbell                      |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **Proposition 54**                  |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| YES                                 |   |   |   |   |   |   |   |   |   |    |    |    |    |    | X  |    | X  |    | X  |    |
| NO                                  |   |   |   |   |   |   |   |   |   |    |    |    |    | X  |    | X  |    | X  |    | X  |

| **Mountain Gap School**             | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 |
|-------------------------------------|---|---|---|---|---|---|---|---|---|----|----|----|----|----|----|----|----|----|----|----|
| **Democratic Party Ballot**         |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **US PRESIDENT**                    |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Barack Obama                        | X |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    | X  |
| Bill Richardson                     |   | X |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Dennis Kucinich                     |   |   | X |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Hillary Clinton                     |   |   |   | X |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Joe Biden                           |   |   |   |   | X |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| John Edwards                        |   |   |   |   |   | X |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Write-In                            |   |   |   |   |   |   | X |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **US SENATOR**                      |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Cynthia Mckinney                    | X | X | X | X | X | X | X |   |   |    |    |    |    |    |    |    |    |    |    | X  |
| Write-in                            |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **STATE REPRESENTATIVE**            |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **DISTRICT 23**                     |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Jon ErpenBach                       | X | X | X | X | X | U |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Janis Ringhand                      |   |   |   |   |   |   | X |   |   |    |    |    |    |    |    |    |    |    |    | X  |
| Write-in                            |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **Delegates to the**                |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **Democratic National Convention**  |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **(Grouped)**                       |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Micheal Fegley                      | X |   | X |   | X |   | U |   |   |    |    |    |    |    |    |    |    |    |    | X  |
| Bliar Johnston                      |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Kathy Campbell                      |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Iris N. Linares                     |   | X |   | X |   | X |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Thomas A. Wallitsch                 |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Joseph J. Russo                     |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **Proposition 54**                  |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| YES                                 | X |   | X |   | X |   | X |   |   |    |    |    |    |    |    |    |    |    |    |    |
| NO                                  |   | X |   | X |   | X |   |   |   |    |    |    |    |    |    |    |    |    |    | X  |
| **Libertarian Party Ballot**        |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **US PRESIDENT**                    |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Bob Barr                            |   |   |   |   |   |   |   | X |   |    | U  |    | X  |    |    |    |    |    |    | X  |
| Wayne A. Boot                       |   |   |   |   |   |   |   |   | X |    |    |    |    |    |    |    |    |    |    |    |
| Roger Calero                        |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Alyson Kennedy                      |   |   |   |   |   |   |   |   |   | X  |    | X  |    |    |    |    |    |    |    |    |
| Write-In                            |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **US SENATOR**                      |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Cynthia Mckinney                    |   |   |   |   |   |   |   |   | X | X  | X  | U  | X  |    |    |    |    |    |    | X  |
| Write-in                            |   |   |   |   |   |   |   | X |   |    |    |    |    |    |    |    |    |    |    |    |
| **STATE REPRESENTATIVE**            |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **DISTRICT 23**                     |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Tim Peterson                        |   |   |   |   |   |   |   | X | X | X  |    | U  | X  |    |    |    |    |    |    |    |
| Write-in                            |   |   |   |   |   |   |   |   |   |    | X  |    | OX |    |    |    |    |    |    | X  |
| **Delegates to the**                |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **Libertarian National Convention** |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **(Grouped)**                       |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Dorthy Baran                        |   |   |   |   |   |   |   | X |   | X  |    | X  | X  |    |    |    |    |    |    | X  |
| Wendy Fuentes                       |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Don Cunningham                      |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Jennifer L. Mann                    |   |   |   |   |   |   |   |   | X |    | X  | OX |    |    |    |    |    |    |    |    |
| Robert McCord                       |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Julius F. Cordisco                  |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **Proposition 54**                  |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| YES                                 |   |   |   |   |   |   |   |   | X |    |    |    | X  |    |    |    |    |    |    |    |
| NO                                  |   |   |   |   |   |   |   | X |   | X  | X  | X  |    |    |    |    |    |    |    | X  |
| **Republican Party Ballot**         |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| US PRESIDENT                        |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| John McCain                         |   |   |   |   |   |   |   |   |   |    |    |    |    | X  | X  |    | X  |    | X  | X  |
| Fred Thompson                       |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Mike Huckabee                       |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Ron Paul                            |   |   |   |   |   |   |   |   |   |    |    |    |    | OX |    | X  |    |    |    |    |
| Mitt Romney                         |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Rudy Giuliani                       |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Write-In                            |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    | X  |    |    |
| **US SENATOR**                      |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Jean Hundertmark                    |   |   |   |   |   |   |   |   |   |    |    |    |    |    | X  | U  | X  |    |    | X  |
| J. B. Van Hollen                    |   |   |   |   |   |   |   |   |   |    |    |    |    | X  |    |    |    | X  | X  |    |
| Write-in                            |   |   |   |   |   |   |   |   |   |    |    |    |    |    | OX |    |    |    |    |    |
| **STATE REPRESENTATIVE**            |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **DISTRICT 23**                     |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Sandy Sullivan                      |   |   |   |   |   |   |   |   |   |    |    |    |    | U  | X  | X  | X  | X  | X  |    |
| Jack C. Vought                      |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    | X  |
| Write-in                            |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    | OX |    |
| **Delegates to the**                |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **Republican National Convention**  |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **(Grouped)**                       |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Dennis Morrison-Wesley              |   |   |   |   |   |   |   |   |   |    |    |    |    |    | X  |    | U  | X  |    | X  |
| Jack Wagner                         |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| John M. Morganelli                  |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Micheal Fegley                      |   |   |   |   |   |   |   |   |   |    |    |    |    | X  |    | X  |    |    | X  |    |
| Bliar Johnston                      |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| Kathy Campbell                      |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| **Proposition 54**                  |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |
| YES                                 |   |   |   |   |   |   |   |   |   |    |    |    |    |    | X  |    | X  |    | X  |    |
| NO                                  |   |   |   |   |   |   |   |   |   |    |    |    |    | X  |    | X  |    | X  |    | X  |

**Test Results:**

**Fire Station 7**

**DEM**

**US PRESIDENT**

**Barack Obama 1**

**Bill Richardson 1**

**Dennis Kucinich 1**

**Hillary Clinton 1**

**Joe Biden 1**

**John Edwards 1**

**Write-In 1**

**UNDERVOTES 0**

**OVERVOTES 1**

**US SENATOR**

**Cynthia Mckinney 7**

**Write-in 0**

**UNDERVOTES 0**

**OVERVOTES 1**

**STATE REPRESENTATIVE DISTRICT 23**

**Jon ErpenBach 5**

**Janis Ringhand 1**

**Write-in 0**

**UNDERVOTES 1**

**OVERVOTES 1**

**Delegates to the Democratic National Convention**

**(Grouped)**

**Micheal Fegley**

**Bliar Johnston**

**Kathy Campbell 3**

**Iris N. Linares**

**Thomas A. Wallitsch**

**Joseph J. Russo 3**

**UNDERVOTES 1**

**OVERVOTES 1**

**Proposition 54**

**YES 4**

**NO 4**

**UNDERVOTES 0**

**OVERVOTES 0**

**LIB**

**US PRESIDENT**

**Bob Barr 2**

**Wayne A. Boot 1**

**Roger Calero 0**

**Alyson Kennedy 2**

**Write-In 0**

**UNDERVOTES 1**

**OVERVOTES 1**

**US SENATOR**

**Cynthia Mckinney 4**

**Write-in 1**

**UNDERVOTES 1**

**OVERVOTES 1**

**STATE REPRESENTATIVE DISTRICT 23**

**Tim Peterson 3**

**Write-in 1**

**UNDERVOTES 1**

**OVERVOTES 2**

**Delegates to the Libertarian National Convention**

**(Grouped)**

**Dorthy Baran**

**Wendy Fuentes**

**Don Cunningham 3**

**Jennifer L. Mann**

**Robert McCord**

**Julius F. Cordisco 2**

**UNDERVOTES 0**

**OVERVOTES 2**

**Proposition 54**

**YES 2**

**NO 4**

**UNDERVOTES 0**

**OVERVOTES 0**

**REP**

**US PRESIDENT**

**John McCain 3**

**Fred Thompson 0**

**Mike Huckabee 0**

**Ron Paul 1**

**Mitt Romney 0**

**Rudy Giuliani 0**

**Write-In 1**

**UNDERVOTES 0**

**OVERVOTES 2**

**US SENATOR**

**Jean Hundertmark 1**

**J. B. Van Hollen 3**

**Write-in 0**

**UNDERVOTES 1**

**OVERVOTES 2**

**STATE REPRESENTATIVE DISTRICT 23**

Sandy Sullivan 4

Jack C. Vought 0

**Write-in 0**

**UNDERVOTES 1**

**OVERVOTES 2**

**Delegates to the Republican National Convention**

**(Grouped)**

**Dennis Morrison-Wesley**

**Jack Wagner 2**

**John M. Morganelli**

**Lilijana Xitlalli Dragović**

**Amaru Nehuén 3**

**Nita Iracema  
UNDERVOTES 1**

**OVERVOTES 1**

**Proposition 54**

**YES 3**

**NO 3**

**UNDERVOTES 0**

**OVERVOTES 0**

**Mountain Gap School**

**DEM**

**US PRESIDENT**

**Barack Obama 1**

**Bill Richardson 1**

**Dennis Kucinich 1**

**Hillary Clinton 1**

**Joe Biden 1**

**John Edwards 1**

**Write-In 1**

**UNDERVOTES 0**

**OVERVOTES 1**

**US SENATOR**

**Cynthia Mckinney 7**

**Write-in 0**

**UNDERVOTES 0**

**OVERVOTES 1**

**STATE REPRESENTATIVE DISTRICT 23**

**Jon ErpenBach 5**

**Janis Ringhand 1**

**Write-in 0**

**UNDERVOTES 1**

**OVERVOTES 1**

**Delegates to the Democratic National Convention**

**(Grouped)**

**Micheal Fegley**

**Bliar Johnston**

**Kathy Campbell 3**

**Iris N. Linares**

**Thomas A. Wallitsch**

**Joseph J. Russo 3**

**UNDERVOTES 1**

**OVERVOTES 1**

**Proposition 54**

**YES 4**

**NO 4**

**UNDERVOTES 0**

**OVERVOTES 0**

**LIB**

**US PRESIDENT**

**Bob Barr 2**

**Wayne A. Boot 1**

**Roger Calero 0**

**Alyson Kennedy 2**

**Write-In 0**

**UNDERVOTES 1**

**OVERVOTES 1**

**US SENATOR**

**Cynthia Mckinney 4**

**Write-in 1**

**UNDERVOTES 1**

**OVERVOTES 1**

**STATE REPRESENTATIVE DISTRICT 23**

**Tim Peterson 3**

**Write-in 1**

**UNDERVOTES 1**

**OVERVOTES 2**

**Delegates to the Libertarian National Convention**

**(Grouped)**

**Dorthy Baran**

**Wendy Fuentes**

**Don Cunningham 3**

**Jennifer L. Mann**

**Robert McCord**

**Julius F. Cordisco 2**

**UNDERVOTES 0**

**OVERVOTES 2**

**Proposition 54**

**YES 2**

**NO 4**

**UNDERVOTES 0**

**OVERVOTES 0**

**REP**

**US PRESIDENT**

**John McCain 3**

**Fred Thompson 0**

**Mike Huckabee 0**

**Ron Paul 1**

**Mitt Romney 0**

**Rudy Giuliani 0**

**Write-In 1**

**UNDERVOTES 0**

**OVERVOTES 2**

**US SENATOR**

**Jean Hundertmark 1**

**J. B. Van Hollen 3**

**Write-in 0**

**UNDERVOTES 1**

**OVERVOTES 2**

**STATE REPRESENTATIVE DISTRICT 23**

Sandy Sullivan 4

Jack C. Vought 0

**Write-in 0**

**UNDERVOTES 1**

**OVERVOTES 2**

**Delegates to the Republican National Convention**

**(Grouped)**

**Dennis Morrison-Wesley**

**Jack Wagner 2**

**John M. Morganelli**

**Lilijana Xitlalli Dragović**

**Amaru Nehuén 3**

**Nita Iracema  
UNDERVOTES 1**

**OVERVOTES 1**

**Proposition 54**

**YES 3**

**NO 3**

**UNDERVOTES 0**

**OVERVOTES 1**

**Cumulative Totals**

**DEM**

**US PRESIDENT**

**Barack Obama 2**

**Bill Richardson 2**

**Dennis Kucinich 2**

**Hillary Clinton 2**

**Joe Biden 2**

**John Edwards 2**

**Write-In 2**

**UNDERVOTES 0**

**OVERVOTES 2**

**US SENATOR**

**Cynthia Mckinney 14**

**Write-in 0**

**UNDERVOTES 0**

**OVERVOTES 2**

**STATE REPRESENTATIVE DISTRICT 23**

**Jon ErpenBach 10**

**Janis Ringhand 2**

**Write-in 0**

**UNDERVOTES 2**

**OVERVOTES 2**

**Delegates to the Democratic National Convention**

**(Grouped)**

**Micheal Fegley**

**Bliar Johnston**

**Kathy Campbell 6**

**Iris N. Linares**

**Thomas A. Wallitsch**

**Joseph J. Russo 6**

**UNDERVOTES 2**

**OVERVOTES 2**

**Proposition 54**

**YES 8**

**NO 8**

**UNDERVOTES 0**

**OVERVOTES 0**

**LIB**

**US PRESIDENT**

**Bob Barr 4**

**Wayne A. Boot 2**

**Roger Calero 0**

**Alyson Kennedy 4**

**Write-In 0**

**UNDERVOTES 2**

**OVERVOTES 2**

**US SENATOR**

**Cynthia Mckinney 8**

**Write-in 2**

**UNDERVOTES 2**

**OVERVOTES 2**

**STATE REPRESENTATIVE DISTRICT 23**

**Tim Peterson 6**

**Write-in 2**

**UNDERVOTES 2**

**OVERVOTES 4**

**Delegates to the Libertarian National Convention**

**(Grouped)**

**Dorthy Baran**

**Wendy Fuentes**

**Don Cunningham 6**

**Jennifer L. Mann**

**Robert McCord**

**Julius F. Cordisco 4**

**UNDERVOTES 0**

**OVERVOTES 4**

**Proposition 54**

**YES 4**

**NO 8**

**UNDERVOTES 0**

**OVERVOTES 0**

**REP**

**US PRESIDENT**

**John McCain 6**

**Fred Thompson 0**

**Mike Huckabee 0**

**Ron Paul 2**

**Mitt Romney 0**

**Rudy Giuliani 0**

**Write-In 2**

**UNDERVOTES 0**

**OVERVOTES 4**

**US SENATOR**

**Jean Hundertmark 2**

**J. B. Van Hollen 6**

**Write-in 0**

**UNDERVOTES 2**

**OVERVOTES 4**

**STATE REPRESENTATIVE DISTRICT 23**

Sandy Sullivan 8

Jack C. Vought 0

**Write-in 0**

**UNDERVOTES 2**

**OVERVOTES 4**

**Delegates to the Republican National Convention**

**(Grouped)**

**Dennis Morrison-Wesley**

**Jack Wagner 4**

**John M. Morganelli**

**Lilijana Xitlalli Dragović**

**Amaru Nehuén 6**

**Nita Iracema  
UNDERVOTES 2**

**OVERVOTES 2**

**Proposition 54**

**YES 6**

**NO 6**

**UNDERVOTES 0**

**OVERVOTES 0**

**Criteria For Evaluation of Test Results:**

The results of this test will be accepted if the stated election
definition can be input into the EMS, the election transferred to the
voting machine, voted according to the test vote pattern, and the
results reported and audited to match the expected results. During the
execution of this election all errors need to be logged and analyzed by
qualified personal to determine if the error is an actual error or
another issue.
