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

**General Election**

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
<td><p><strong>President of the United States</strong></p>
<p><em>(Rotated)</em></p>
<p>Albina Sepich – DEM</p>
<p>Barbara Barrett Hicks – REP</p>
<p>Write-In</p>
<p>Vote for One</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>Senator of the United States</strong></p>
<p><em>(Rotated)</em></p>
<p>Carl Moore - DEM</p>
<p>David Heroux - REP</p>
<p>Write-in</p>
<p>Vote for One</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>Lieutenant Governor</strong></p>
<p><em>(Rotated)</em></p>
<p>Edwin Best - DEM</p>
<p>Fiero Finn – REP</p>
<p>Write-In</p>
<p>Vote for One</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>Secretary of State</strong></p>
<p><em>(Rotated)</em></p>
<p>Gail Keefe - DEM</p>
<p>Harry Levin - REP</p>
<p>Write-In</p>
<p>Vote for One</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>Sheriff of Morgan County (RCV)</strong></p>
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
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>State House of Representative</strong></p>
<p><strong>District 1</strong></p>
<p>Kay Raab -DEM</p>
<p>Laurie Cioffi - REP</p>
<p>Write-In</p>
<p>Vote for One</p></td>
<td><p><strong>State House of Representative</strong></p>
<p><strong>District 2</strong></p>
<p>Keith Satterwhite – DEM</p>
<p>Laurie St Laurent – REP</p>
<p>Write-In</p>
<p>Vote for One</p></td>
<td></td>
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
<td><p><strong>School Board</strong></p>
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
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>Recall Governor</strong></p>
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
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>Proposal A</strong></p>
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
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>Proposal B</strong></p>
<p>Exchange of Certain Property</p>
<p>Shall the proposed amendment to Article XIV, section 1 of the Constitution,</p>
<p>authorizing the conveyance of approximately ten acres of State Land in</p>
<p>exchange for approximately two hundred acres of wild forest land in order</p>
<p>to facilitate the preservation of certain historic buildings, be approved?</p>
<p>Yes</p>
<p>No</p>
<p>Vote for One</p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

**Applicable Voting Devices:**

**OP Scanner, DRE, Central Count, EBM, and ADA device**

**Test Deck Pattern:**

**Ballots voted or pre-marked with the following pattern. The following
is the test pattern to be voted for the given precinct:**

<table>
<thead>
<tr class="header">
<th><strong>Creekside</strong></th>
<th><strong>1</strong></th>
<th><strong>2</strong></th>
<th><strong>3</strong></th>
<th><strong>4</strong></th>
<th><strong>5</strong></th>
<th><strong>6</strong></th>
<th><strong>7</strong></th>
<th><strong>8</strong></th>
<th><strong>9</strong></th>
<th><strong>10</strong></th>
<th><strong>11</strong></th>
<th><strong>12</strong></th>
<th><strong>13</strong></th>
<th><strong>14</strong></th>
<th><strong>15</strong></th>
<th><strong>16</strong></th>
<th><strong>17</strong></th>
<th><strong>18</strong></th>
<th><strong>19</strong></th>
<th><strong>20</strong></th>
<th><strong>21</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>President of the United States</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Albina Sepich</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Barbara Barrett Hicks</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>OX</td>
<td>U</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td>X</td>
</tr>
<tr class="odd">
<td><strong>Senator of the United States</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Carl Moore</td>
<td>U</td>
<td>U</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
</tr>
<tr class="odd">
<td>David Heroux</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>U</td>
<td>U</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-in</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>Lieutenant Governor</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Edwin Best</td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td>U</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td>X</td>
<td>X</td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
</tr>
<tr class="odd">
<td><p>Fiero</p>
<p>Finn</p></td>
<td>X</td>
<td>X</td>
<td></td>
<td>X</td>
<td>OX</td>
<td>X</td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td>OX</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>Secretary of State</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Gail Keefe</td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td>U</td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td>X</td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
</tr>
<tr class="odd">
<td>Harry Levin</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>OX</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>OX</td>
<td></td>
<td></td>
<td></td>
<td>OX</td>
</tr>
<tr class="odd">
<td><strong>Sheriff of Morgan County</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Imran Rashid</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>U</td>
</tr>
<tr class="odd">
<td>Jack "Duke" Brodisky</td>
<td>2</td>
<td>2</td>
<td>2</td>
<td>2</td>
<td>2</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>3</td>
<td></td>
<td></td>
<td></td>
<td>2</td>
<td>U</td>
<td>2</td>
</tr>
<tr class="even">
<td>Ken Anderson</td>
<td>3</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>2</td>
<td>2</td>
<td>2</td>
<td>2</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>3</td>
<td></td>
<td></td>
<td>U</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Leo Cross</td>
<td></td>
<td>3</td>
<td></td>
<td></td>
<td></td>
<td>3</td>
<td></td>
<td></td>
<td></td>
<td>2</td>
<td>2</td>
<td>2</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>3</td>
<td></td>
<td></td>
<td>U</td>
<td></td>
</tr>
<tr class="even">
<td>Mary Burke</td>
<td></td>
<td></td>
<td>3</td>
<td></td>
<td></td>
<td></td>
<td>3</td>
<td></td>
<td></td>
<td>3</td>
<td></td>
<td></td>
<td>2</td>
<td>2</td>
<td></td>
<td></td>
<td></td>
<td>3</td>
<td></td>
<td></td>
<td>U</td>
</tr>
<tr class="odd">
<td>Nora Kling</td>
<td></td>
<td></td>
<td></td>
<td>3</td>
<td></td>
<td></td>
<td></td>
<td>3</td>
<td></td>
<td></td>
<td>3</td>
<td></td>
<td>3</td>
<td></td>
<td>2</td>
<td>2</td>
<td>2</td>
<td>2</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>3</td>
<td></td>
<td></td>
<td></td>
<td>3</td>
<td></td>
<td></td>
<td>3</td>
<td></td>
<td>3</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>State House of Representative<br />
District 1</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Kay Raab</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>U</td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Laurie Cioffi</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>OX</td>
<td></td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>U</td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>OX</td>
<td></td>
<td>X</td>
</tr>
<tr class="odd">
<td><strong>Member of Assembly Seat A</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Maribeth Clark</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td>U</td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td>U</td>
</tr>
<tr class="odd">
<td>Nathan Johnson</td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td>OX</td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>School Board District 21</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Patricia Smallmon</td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>U</td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
</tr>
<tr class="odd">
<td>R Nicholas Burton</td>
<td>X</td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>U</td>
<td>X</td>
<td>U</td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Sam Patel</td>
<td></td>
<td>X</td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>OX</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td>X</td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Tabathia Song</td>
<td></td>
<td></td>
<td>X</td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Vicent Gould</td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
</tr>
<tr class="odd">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>XX</td>
<td></td>
<td>XX</td>
</tr>
<tr class="even">
<td><strong>Recall Governor</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Yes</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td></td>
<td></td>
<td>U</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td></td>
<td>U</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td></td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>No</td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>OX</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td>X</td>
</tr>
<tr class="odd">
<td><strong>Governor</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Ala Dee Smith</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>U</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Ben Baker</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td>X</td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td>X</td>
<td>X</td>
<td></td>
</tr>
<tr class="even">
<td>Calvin Marino</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
</tr>
<tr class="odd">
<td>David Cox</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Edris Thomas</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>Proposal A</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Yes</td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>U</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>No</td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>U</strong></td>
<td><strong>OX</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
</tr>
<tr class="even">
<td><strong>Proposal B</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>Yes</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>U</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
</tr>
<tr class="even">
<td><strong>No</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>OX</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr class="header">
<th>Mooring</th>
<th>1</th>
<th>2</th>
<th>3</th>
<th>4</th>
<th>5</th>
<th>6</th>
<th>7</th>
<th>8</th>
<th>9</th>
<th>10</th>
<th>11</th>
<th>12</th>
<th>13</th>
<th>14</th>
<th>15</th>
<th>16</th>
<th>17</th>
<th>18</th>
<th>19</th>
<th>20</th>
<th>21</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>President of the United States</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Albina Sepich</td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Barbara Barrett Hicks</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>OX</strong></td>
<td><strong>U</strong></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td><strong>Senator of the United States</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Carl Moore</td>
<td><strong>U</strong></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td>David Heroux</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>U</strong></td>
<td><strong>U</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-in</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>Lieutenant Governor</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Edwin Best</td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>U</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td><p>Fiero</p>
<p>Finn</p></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>OX</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>OX</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>Secretary of State</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Gail Keefe</td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="odd">
<td>Harry Levin</td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>OX</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>OX</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>OX</strong></td>
</tr>
<tr class="odd">
<td><strong>Sheriff of Morgan County</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Imran Rashid</td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>U</strong></td>
</tr>
<tr class="odd">
<td>Jack "Duke" Brodisky</td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>2</strong></td>
<td><strong>U</strong></td>
<td><strong>2</strong></td>
</tr>
<tr class="even">
<td>Ken Anderson</td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td><strong>U</strong></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Leo Cross</td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td><strong>U</strong></td>
<td></td>
</tr>
<tr class="even">
<td>Mary Burke</td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td><strong>U</strong></td>
</tr>
<tr class="odd">
<td>Nora Kling</td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>State House of Representative<br />
District 2</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Keith Satterwhite</td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Laurie St Laurent</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>OX</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>U</strong></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>OX</strong></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td><strong>Member of Assembly Seat B</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Marjorie Hall</td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>U</strong></td>
</tr>
<tr class="odd">
<td>Neil Carey</td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>OX</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>School Board District 21</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Patricia Smallmon</td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="odd">
<td>R Nicholas Burton</td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td><strong>U</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Sam Patel</td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>OX</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Tabathia Song</td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Vicent Gould</td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="odd">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>XX</strong></td>
<td></td>
<td><strong>XX</strong></td>
</tr>
<tr class="even">
<td><strong>Recall Governor</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Yes</td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>No</td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>OX</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td><strong>Governor</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Ala Dee Smith</td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Ben Baker</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="even">
<td>Calvin Marino</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td>David Cox</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Edris Thomas</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>Proposal A</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Yes</td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>U</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>No</td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>U</strong></td>
<td><strong>OX</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
</tr>
<tr class="even">
<td><strong>Proposal B</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>Yes</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>U</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
</tr>
<tr class="even">
<td><strong>No</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>OX</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr class="header">
<th>Hillwood</th>
<th>1</th>
<th>2</th>
<th>3</th>
<th>4</th>
<th>5</th>
<th>6</th>
<th>7</th>
<th>8</th>
<th>9</th>
<th>10</th>
<th>11</th>
<th>12</th>
<th>13</th>
<th>14</th>
<th>15</th>
<th>16</th>
<th>17</th>
<th>18</th>
<th>19</th>
<th>20</th>
<th>21</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>President of the United States</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Albina Sepich</td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Barbara Barrett Hicks</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>OX</strong></td>
<td><strong>U</strong></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td><strong>Senator of the United States</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Carl Moore</td>
<td><strong>U</strong></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td>David Heroux</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>U</strong></td>
<td><strong>U</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-in</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>Lieutenant Governor</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Edwin Best</td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>U</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td><p>Fiero</p>
<p>Finn</p></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>OX</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>OX</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>Secretary of State</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Gail Keefe</td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="odd">
<td>Harry Levin</td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>OX</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>OX</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>OX</strong></td>
</tr>
<tr class="odd">
<td><strong>Sheriff of Morgan County</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Imran Rashid</td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>1</strong></td>
<td><strong>U</strong></td>
</tr>
<tr class="odd">
<td>Jack "Duke" Brodisky</td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>2</strong></td>
<td><strong>U</strong></td>
<td><strong>2</strong></td>
</tr>
<tr class="even">
<td>Ken Anderson</td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td><strong>U</strong></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Leo Cross</td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td><strong>U</strong></td>
<td></td>
</tr>
<tr class="even">
<td>Mary Burke</td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td><strong>U</strong></td>
</tr>
<tr class="odd">
<td>Nora Kling</td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td><strong>2</strong></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td><strong>3</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>State House of Representative<br />
District 2</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Keith Satterwhite</td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Laurie St Laurent</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>OX</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>U</strong></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>OX</strong></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td><strong>Member of Assembly Seat C</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Marsha Johnson</td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>U</strong></td>
</tr>
<tr class="odd">
<td>Neil Pitzsimmons</td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>OX</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>School Board District 21</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Patricia Smallmon</td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="odd">
<td>R Nicholas Burton</td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td><strong>U</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Sam Patel</td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>OX</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Tabathia Song</td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Vicent Gould</td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="odd">
<td>Write-In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>XX</strong></td>
<td></td>
<td><strong>XX</strong></td>
</tr>
<tr class="even">
<td><strong>Recall Governor</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Yes</td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>No</td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>OX</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td><strong>Governor</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Ala Dee Smith</td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Ben Baker</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="even">
<td>Calvin Marino</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td>David Cox</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Edris Thomas</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>Proposal A</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Yes</td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>U</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>No</td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>U</strong></td>
<td><strong>OX</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
</tr>
<tr class="even">
<td><strong>Proposal B</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>Yes</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>U</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
</tr>
<tr class="even">
<td><strong>No</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>OX</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

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
