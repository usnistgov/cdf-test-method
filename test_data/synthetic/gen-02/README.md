# NIST Voting Common Data Format Test Method – Test Data  
Synthetic Dataset – GEN-02

The purpose of the test data dataset is to provide worked examples of
the common data formats that are compact and comprehensive. This
document describes single election, test deck, and results. Common Data
Format equivalents are provided at
https://github.com/usnistgov/cdf-test-method/

This election definition was provided by the Pro V\&V, a Voting System
Test Lab (VSTL). It has been modified somewhat for purposes of
supporting the production of Common Data Format examples. It is one of
several test elections that has been developed.

<table>
<thead>
<tr class="header">
<th>ELECTION DEFINITION: GEN-02</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>General Election</strong></p>
<p>A basic election held in 3 precincts. This election contains 15 contests compiled into 3 ballot styles. 10 of the contests are in all 3 ballot styles with the other five split across the 3 precincts. The voting variations supported by this election are as follows:</p>
<ul>
<li><p>Closed Primary: No</p></li>
<li><p>Open Primary: No</p></li>
<li><p>Partisan offices: Yes</p></li>
<li><p>Non-Partisan offices: Yes</p></li>
<li><p>Write-in voting: Yes</p></li>
<li><p>Primary presidential delegation nominations: No</p></li>
<li><p>Ballot Rotation: Yes</p></li>
<li><p>Straight Party voting: No</p></li>
<li><p>Cross-party endorsement: No</p></li>
<li><p>Split Precincts: No</p></li>
<li><p>Vote for N of M: Yes</p></li>
<li><p>Recall issues, with options: Yes</p></li>
<li><p>Cumulative voting: No</p></li>
<li><p>Ranked choice voting: Yes</p></li>
<li></li>
<li></li>
</ul>
<p><strong>This election was designed to functionally test the handling of multiple ballot styles, support for ballot rotation, and</strong> <strong>support for complex voting variations.</strong> <strong>Voting options for Over-voting and Under-voting will be exercised.</strong></p></td>
</tr>
<tr class="even">
<td><p><strong>Configuration:</strong></p>
<p><strong>EMS computer is used to create ballots with the following characteristics:</strong></p>
<p><strong>Election named:</strong> GEN-02 General Election</p>
<p><strong><span class="underline">Precinct Based Testing</span></strong></p>
<p><strong>3 machines used for voting one for Mooring, one for Hillwood and one for all precincts.</strong></p>
<p><strong>3 precincts</strong>: Creekside, Mooring, Hillwood</p>
<p><strong>2 parties:</strong> Democrat, Republican</p>
<p><strong>Contest Totals: 15</strong></p>
<p><strong>Contests as listed:</strong></p>
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
<p>Should the Governor of the State be Recalled</p>
<p> for failure to perform his duties?</p>
<p>Yes</p>
<p>No</p>
<p>If the Governor is to be replaced</p><p> which candidate should replace him?</p>
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
</table></td>
</tr>
<tr class="odd">
<td><p><strong>Applicable Voting Devices:</strong></p>
<p><strong>OP Scanner, DRE, Central Count, EBM, and ADA device</strong></p></td>
</tr>
<tr class="even">
<td><p><strong>Test Deck Pattern:</strong></p>
<p><strong>Ballots voted or pre-marked with the following pattern.</strong> <strong>The following is the test pattern to be voted for the given precinct:</strong></p>
<table>
<thead>
<tr class="header">
<th><strong>Creekside</strong></th>
<th><strong>B 1</strong></th>
<th><strong>B 2</strong></th>
<th><strong>B 3</strong></th>
<th><strong>B 4</strong></th>
<th><strong>B 5</strong></th>
<th><strong>B 6</strong></th>
<th><strong>B 7</strong></th>
<th><strong>B 8</strong></th>
<th><strong>B 9</strong></th>
<th><strong>B 10</strong></th>
<th><strong>B 11</strong></th>
<th><strong>B 12</strong></th>
<th><strong>B 13</strong></th>
<th><strong>B 14</strong></th>
<th><strong>B 15</strong></th>
<th><strong>B 16</strong></th>
<th><strong>B 17</strong></th>
<th><strong>B 18</strong></th>
<th><strong>B 19</strong></th>
<th><strong>B 20</strong></th>
<th><strong>B 21</strong></th>
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
<td><strong>State House of Representative District 1</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Laurie Cioffi</td>
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
<td>Nathan Johnson</td>
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
<tr class="even">
<td><strong>Mooring</strong></td>
<td><strong>B 1</strong></td>
<td><strong>B 2</strong></td>
<td><strong>B 3</strong></td>
<td><strong>B 4</strong></td>
<td><strong>B 5</strong></td>
<td><strong>B 6</strong></td>
<td><strong>B 7</strong></td>
<td><strong>B 8</strong></td>
<td><strong>B 9</strong></td>
<td><strong>B 10</strong></td>
<td><strong>B 11</strong></td>
<td><strong>B 12</strong></td>
<td><strong>B 13</strong></td>
<td><strong>B 14</strong></td>
<td><strong>B 15</strong></td>
<td><strong>B 16</strong></td>
<td><strong>B 17</strong></td>
<td><strong>B 18</strong></td>
<td><strong>B 19</strong></td>
<td><strong>B 20</strong></td>
<td><strong>B 21</strong></td>
</tr>
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
<td><strong>State House of Representative District 2</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<tr class="even">
<td><strong>Hillwood</strong></td>
<td><strong>B 1</strong></td>
<td><strong>B 2</strong></td>
<td><strong>B 3</strong></td>
<td><strong>B 4</strong></td>
<td><strong>B 5</strong></td>
<td><strong>B 6</strong></td>
<td><strong>B 7</strong></td>
<td><strong>B 8</strong></td>
<td><strong>B 9</strong></td>
<td><strong>B 10</strong></td>
<td><strong>B 11</strong></td>
<td><strong>B 12</strong></td>
<td><strong>B 13</strong></td>
<td><strong>B 14</strong></td>
<td><strong>B 15</strong></td>
<td><strong>B 16</strong></td>
<td><strong>B 17</strong></td>
<td><strong>B 18</strong></td>
<td><strong>B 19</strong></td>
<td><strong>B 20</strong></td>
<td><strong>B 21</strong></td>
</tr>
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
<td><strong>State House of Representative District 2</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
</table></td>
</tr>
<tr class="odd">
<td><p><strong>Test Results:</strong></p>
<p><strong>Creekside</strong></p>
<p><strong>President of the United States</strong></p>
<p><strong>Albina Sepich 10</strong></p>
<p><strong>Barbara Barett Hicks 7</strong></p>
<p><strong>Write-In 2</strong></p>
<p><strong>Under Vote 1</strong></p>
<p><strong>OverVote 1</strong></p>
<p><strong>Senator of The United States</strong></p>
<p><strong>Carl Moore 10</strong></p>
<p><strong>David Heroux 5</strong></p>
<p><strong>Write-In 2</strong></p>
<p><strong>Under Vote 4</strong></p>
<p><strong>OverVote</strong></p>
<p><strong>Lieutenant Governor</strong></p>
<p><strong>Edwin Best 7</strong></p>
<p><strong>Fiero Finn 10</strong></p>
<p><strong>Write-In 1</strong></p>
<p><strong>Under Vote 1</strong></p>
<p><strong>OverVote 2</strong></p>
<p><strong>Secretary of State</strong></p>
<p><strong>Gail Keefe 8</strong></p>
<p><strong>Harry Levin 7</strong></p>
<p><strong>Write-In 2</strong></p>
<p><strong>Under Vote 1</strong></p>
<p><strong>OverVote 3</strong></p>
<p><strong>Sheriff of Morgan County</strong></p>
<p><strong>Imran Rashid 1-20</strong></p>
<p><strong>Jack “Duke” Brodisky 2-7, 3-1</strong></p>
<p><strong>Ken Anderson 2-4, 3-2</strong></p>
<p><strong>Leo Cross 2-3, 3-3</strong></p>
<p><strong>Mary Burke 2-2, 3-4</strong></p>
<p><strong>Nora Kling 2-4, 3-4</strong></p>
<p><strong>Write-In 3-4</strong></p>
<p><strong>Write-In 0</strong></p>
<p><strong>Write-In 0</strong></p>
<p><strong>Under Vote 4</strong></p>
<p><strong>OverVote</strong></p>
<p><strong>State House of Representative District 1</strong></p>
<p><strong>Kay Raab 7</strong></p>
<p><strong>Laurie Cioffi 8</strong></p>
<p><strong>Write-In 2</strong></p>
<p><strong>Under Vote 2</strong></p>
<p><strong>OverVote 2</strong></p>
<p><strong>Member of</strong> <strong>Assembly Seat A</strong></p>
<p><strong>Maribeth Clark 9</strong></p>
<p><strong>Nathan Johnson 9</strong></p>
<p><strong>Write-In 0</strong></p>
<p><strong>Under Vote 2</strong></p>
<p><strong>OverVote 1</strong></p>
<p><strong>School Board District 21</strong></p>
<p><strong>Patricia Smallmon 6</strong></p>
<p><strong>R Nicholas Burton 4</strong></p>
<p><strong>Sam Patel 5</strong></p>
<p><strong>Tabthia Song 3</strong></p>
<p><strong>Vicent Gould 11</strong></p>
<p><strong>Write-In 6</strong></p>
<p><strong>Under Vote</strong> <strong>5</strong></p>
<p><strong>OverVote</strong> <strong>2</strong></p>
<p><strong>Recall</strong> <strong>Governor</strong></p>
<p><strong>Yes 13</strong></p>
<p><strong>No 5</strong></p>
<p><strong>Under Vote 2</strong></p>
<p><strong>OverVote 1</strong></p>
<p><strong>Governor</strong></p>
<p><strong>Ala Dee Smith 10</strong></p>
<p><strong>Ben Baker 6</strong></p>
<p><strong>Calvin Marino 3</strong></p>
<p><strong>David Cox 1</strong></p>
<p><strong>Edris Thomas 0</strong></p>
<p><strong>Under Vote 1</strong></p>
<p><strong>OverVote 0</strong></p>
<p><strong>Proposal A</strong></p>
<p><strong>Yes 8</strong></p>
<p><strong>No 9</strong></p>
<p><strong>Under Vote 3</strong></p>
<p><strong>OverVote 1</strong></p>
<p><strong>Proposal B</strong></p>
<p><strong>Yes 9</strong></p>
<p><strong>No 10</strong></p>
<p><strong>Under Vote 1</strong></p>
<p><strong>OverVote 1</strong></p>
<p><strong>Mooring</strong></p>
<p><strong>President of the United States</strong></p>
<p><strong>Albina Sepich 10</strong></p>
<p><strong>Barbara Barett Hicks 7</strong></p>
<p><strong>Write-In 2</strong></p>
<p><strong>Under Vote 1</strong></p>
<p><strong>OverVote 1</strong></p>
<p><strong>Senator of The United States</strong></p>
<p><strong>Carl Moore 10</strong></p>
<p><strong>David Heroux 5</strong></p>
<p><strong>Write-In 2</strong></p>
<p><strong>Under Vote 4</strong></p>
<p><strong>OverVote</strong></p>
<p><strong>Lieutenant Governor</strong></p>
<p><strong>Edwin Best 7</strong></p>
<p><strong>Fiero Finn 10</strong></p>
<p><strong>Write-In 1</strong></p>
<p><strong>Under Vote 1</strong></p>
<p><strong>OverVote 2</strong></p>
<p><strong>Secretary of State</strong></p>
<p><strong>Gail Keefe 8</strong></p>
<p><strong>Harry Levin 7</strong></p>
<p><strong>Write-In 2</strong></p>
<p><strong>Under Vote 1</strong></p>
<p><strong>OverVote 3</strong></p>
<p><strong>Sheriff of Morgan County</strong></p>
<p><strong>Imran Rashid 1-20</strong></p>
<p><strong>Jack “Duke” Brodisky 2-7, 3-1</strong></p>
<p><strong>Ken Anderson 2-4, 3-2</strong></p>
<p><strong>Leo Cross 2-3, 3-3</strong></p>
<p><strong>Mary Burke 2-2, 3-4</strong></p>
<p><strong>Nora Kling 2-4, 3-4</strong></p>
<p><strong>Write-In 3-4</strong></p>
<p><strong>Write-In 0</strong></p>
<p><strong>Write-In 0</strong></p>
<p><strong>Under Vote 4</strong></p>
<p><strong>OverVote</strong></p>
<p><strong>State House of Representative District 2</strong></p>
<p>Keith Satterwhite 7</p>
<p>Laurie St Laurent 8</p>
<p>Write-In 2</p>
<p><strong>Under Vote 2</strong></p>
<p><strong>OverVote 2</strong></p>
<p><strong>Member of</strong> <strong>Assembly Seat B</strong></p>
<p>Marjorie Hall 9</p>
<p>Neil Carey 9</p>
<p>Write-In 0</p>
<p><strong>Under Vote 2</strong></p>
<p><strong>OverVote 1</strong></p>
<p><strong>School Board District 21</strong></p>
<p><strong>Patricia Smallmon 6</strong></p>
<p><strong>R Nicholas Burton 4</strong></p>
<p><strong>Sam Patel 5</strong></p>
<p><strong>Tabthia Song 3</strong></p>
<p><strong>Vicent Gould 11</strong></p>
<p><strong>Write-In 6</strong></p>
<p><strong>Under Vote</strong> <strong>5</strong></p>
<p><strong>OverVote</strong> <strong>2</strong></p>
<p><strong>Recall</strong> <strong>Governor</strong></p>
<p><strong>Yes 13</strong></p>
<p><strong>No 5</strong></p>
<p><strong>Under Vote 2</strong></p>
<p><strong>OverVote 1</strong></p>
<p><strong>Governor</strong></p>
<p><strong>Ala Dee Smith 10</strong></p>
<p><strong>Ben Baker 6</strong></p>
<p><strong>Calvin Marino 3</strong></p>
<p><strong>David Cox 1</strong></p>
<p><strong>Edris Thomas 0</strong></p>
<p><strong>Under Vote 1</strong></p>
<p><strong>OverVote 0</strong></p>
<p><strong>Proposal A</strong></p>
<p><strong>Yes 8</strong></p>
<p><strong>No</strong> <strong>9</strong></p>
<p><strong>Under Vote</strong> <strong>3</strong></p>
<p><strong>OverVote 1</strong></p>
<p><strong>Proposal B</strong></p>
<p><strong>Yes</strong> <strong>9</strong></p>
<p><strong>No 10</strong></p>
<p><strong>Under Vote 1</strong></p>
<p><strong>OverVote 1</strong></p>
<p><strong>Hillwood</strong></p>
<p><strong>President of the United States</strong></p>
<p><strong>Albina Sepich 10</strong></p>
<p><strong>Barbara Barett Hicks 7</strong></p>
<p><strong>Write-In 2</strong></p>
<p><strong>Under Vote 1</strong></p>
<p><strong>OverVote 1</strong></p>
<p><strong>Senator of The United States</strong></p>
<p><strong>Carl Moore 10</strong></p>
<p><strong>David Heroux 5</strong></p>
<p><strong>Write-In 2</strong></p>
<p><strong>Under Vote 4</strong></p>
<p><strong>OverVote</strong></p>
<p><strong>Lieutenant Governor</strong></p>
<p><strong>Edwin Best 7</strong></p>
<p><strong>Fiero Finn 10</strong></p>
<p><strong>Write-In 1</strong></p>
<p><strong>Under Vote 1</strong></p>
<p><strong>OverVote 2</strong></p>
<p><strong>Secretary of State</strong></p>
<p><strong>Gail Keefe 8</strong></p>
<p><strong>Harry Levin 7</strong></p>
<p><strong>Write-In 2</strong></p>
<p><strong>Under Vote 1</strong></p>
<p><strong>OverVote 3</strong></p>
<p><strong>Sheriff of Morgan County</strong></p>
<p><strong>Imran Rashid 1-20</strong></p>
<p><strong>Jack “Duke” Brodisky 2-7, 3-1</strong></p>
<p><strong>Ken Anderson 2-4, 3-2</strong></p>
<p><strong>Leo Cross 2-3, 3-3</strong></p>
<p><strong>Mary Burke 2-2, 3-4</strong></p>
<p><strong>Nora Kling 2-4, 3-4</strong></p>
<p><strong>Write-In 3-4</strong></p>
<p><strong>Write-In 0</strong></p>
<p><strong>Write-In 0</strong></p>
<p><strong>Under Vote 4</strong></p>
<p><strong>OverVote</strong></p>
<p><strong>State House of Representative District 2</strong></p>
<p>Keith Satterwhite 7</p>
<p>Laurie St Laurent 8</p>
<p>Write-In 2</p>
<p><strong>Under Vote 2</strong></p>
<p><strong>OverVote 2</strong></p>
<p><strong>Member of Assembly Seat C</strong></p>
<p>Marsha Johnson 9</p>
<p>Neil Pitzsimmons 9</p>
<p>Write-In 0</p>
<p><strong>Under Vote 2</strong></p>
<p><strong>OverVote 1</strong></p>
<p><strong>School Board District 21</strong></p>
<p><strong>Patricia Smallmon 6</strong></p>
<p><strong>R Nicholas Burton 4</strong></p>
<p><strong>Sam Patel 5</strong></p>
<p><strong>Tabthia Song 3</strong></p>
<p><strong>Vicent Gould 11</strong></p>
<p><strong>Write-In 6</strong></p>
<p><strong>Under Vote</strong> <strong>5</strong></p>
<p><strong>OverVote</strong> <strong>2</strong></p>
<p><strong>Recall</strong> <strong>Governor</strong></p>
<p><strong>Yes 13</strong></p>
<p><strong>No 5</strong></p>
<p><strong>Under Vote 2</strong></p>
<p><strong>OverVote 1</strong></p>
<p><strong>Governor</strong></p>
<p><strong>Ala Dee Smith 10</strong></p>
<p><strong>Ben Baker 6</strong></p>
<p><strong>Calvin Marino 3</strong></p>
<p><strong>David Cox 1</strong></p>
<p><strong>Edris Thomas 0</strong></p>
<p><strong>Under Vote 1</strong></p>
<p><strong>OverVote 0</strong></p>
<p><strong>Proposal A</strong></p>
<p><strong>Yes 8</strong></p>
<p><strong>No 9</strong></p>
<p><strong>Under Vote 3</strong></p>
<p><strong>OverVote 1</strong></p>
<p><strong>Proposal B</strong></p>
<p><strong>Yes 9</strong></p>
<p><strong>No 10</strong></p>
<p><strong>Under Vote 1</strong></p>
<p><strong>OverVote 1</strong></p>
<p><strong>Cumulative Totals</strong></p>
<p><strong>President of the United States</strong></p>
<p><strong>Albina Sepich 30</strong></p>
<p><strong>Barbara Barett Hicks 21</strong></p>
<p><strong>Write-In 6</strong></p>
<p><strong>Under Vote 3</strong></p>
<p><strong>OverVote 3</strong></p>
<p><strong>Senator of The United States</strong></p>
<p><strong>Carl Moore 30</strong></p>
<p><strong>David Heroux 15</strong></p>
<p><strong>Write-In 6</strong></p>
<p><strong>Under Vote 12</strong></p>
<p><strong>OverVote</strong></p>
<p><strong>Lieutenant Governor</strong></p>
<p><strong>Edwin Best 21</strong></p>
<p><strong>Fiero Finn 30</strong></p>
<p><strong>Write-In 3</strong></p>
<p><strong>Under Vote 3</strong></p>
<p><strong>OverVote 6</strong></p>
<p><strong>Secretary of State</strong></p>
<p><strong>Gail Keefe 24</strong></p>
<p><strong>Harry Levin 21</strong></p>
<p><strong>Write-In 6</strong></p>
<p><strong>Under Vote 3</strong></p>
<p><strong>OverVote 9</strong></p>
<p><strong>Sheriff of Morgan County</strong></p>
<p><strong>Imran Rashid 1-60</strong></p>
<p><strong>Jack “Duke” Brodisky 2-21, 3-3</strong></p>
<p><strong>Ken Anderson 2-12, 3-6</strong></p>
<p><strong>Leo Cross 2-9, 3-9</strong></p>
<p><strong>Mary Burke 2-2, 3-12</strong></p>
<p><strong>Nora Kling 2-12, 3-12</strong></p>
<p><strong>Write-In 3-12</strong></p>
<p><strong>Write-In 0</strong></p>
<p><strong>Write-In 0</strong></p>
<p><strong>Under Vote 12</strong></p>
<p><strong>OverVote</strong></p>
<p><strong>State House of Representative District 1</strong></p>
<p><strong>Kay Raab 7</strong></p>
<p><strong>Laurie Cioffi 8</strong></p>
<p><strong>Write-In 2</strong></p>
<p><strong>Under Vote 2</strong></p>
<p><strong>OverVote 2</strong></p>
<p><strong>State House of Representative District 2</strong></p>
<p>Keith Satterwhite 14</p>
<p>Laurie St Laurent 16</p>
<p>Write-In 4</p>
<p><strong>Under Vote 4</strong></p>
<p><strong>OverVote 4</strong></p>
<p><strong>Member of Assembly Seat A</strong></p>
<p><strong>Maribeth Clark 9</strong></p>
<p><strong>Nathan Johnson 9</strong></p>
<p><strong>Write-In 0</strong></p>
<p><strong>Under Vote 2</strong></p>
<p><strong>OverVote 1</strong></p>
<p><strong>Member of Assembly Seat B</strong></p>
<p>Marjorie Hall 9</p>
<p>Neil Carey 9</p>
<p>Write-In 0</p>
<p><strong>Under Vote 2</strong></p>
<p><strong>OverVote 1</strong></p>
<p><strong>Member of Assembly Seat C</strong></p>
<p>Marsha Johnson 9</p>
<p>Neil Pitzsimmons 9</p>
<p>Write-In 0</p>
<p><strong>Under Vote 2</strong></p>
<p><strong>OverVote 1</strong></p>
<p><strong>School Board District 21</strong></p>
<p><strong>Patricia Smallmon 18</strong></p>
<p><strong>R Nicholas Burton 12</strong></p>
<p><strong>Sam Patel 15</strong></p>
<p><strong>Tabthia Song 9</strong></p>
<p><strong>Vicent Gould 33</strong></p>
<p><strong>Write-In 18</strong></p>
<p><strong>Under Vote</strong> <strong>15</strong></p>
<p><strong>OverVote</strong> <strong>6</strong></p>
<p><strong>Recall</strong> <strong>Governor</strong></p>
<p><strong>Yes 39</strong></p>
<p><strong>No 15</strong></p>
<p><strong>Under Vote 6</strong></p>
<p><strong>OverVote 3</strong></p>
<p><strong>Governor</strong></p>
<p><strong>Ala Dee Smith 30</strong></p>
<p><strong>Ben Baker 18</strong></p>
<p><strong>Calvin Marino 9</strong></p>
<p><strong>David Cox 3</strong></p>
<p><strong>Edris Thomas 0</strong></p>
<p><strong>Under Vote 3</strong></p>
<p><strong>OverVote 0</strong></p>
<p><strong>Proposal A</strong></p>
<p><strong>Yes 24</strong></p>
<p><strong>No 27</strong></p>
<p><strong>Under Vote 9</strong></p>
<p><strong>OverVote 3</strong></p>
<p><strong>Proposal B</strong></p>
<p><strong>Yes 27</strong></p>
<p><strong>No 30</strong></p>
<p><strong>Under Vote 3</strong></p>
<p><strong>OverVote 3</strong></p></td>
</tr>
<tr class="even">
<td><p><strong>Criteria For Evaluation of Test Results:</strong></p>
<p>The results of this test will be accepted if the stated election definition can be input into the EMS, the election transferred to the voting machine, voted according to the test vote pattern, and the results reported and audited to match the expected results. During the execution of this election all errors need to be logged and analyzed by qualified personal to determine if the error is an actual error or another issue.</p></td>
</tr>
</tbody>
</table>
