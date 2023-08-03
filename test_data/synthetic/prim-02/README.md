# NIST Voting Common Data Format Test Method – Test Data  
Synthetic Dataset – PRIM-02

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
<th>b-1ELECTION DEFINITION: PRIM-02</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Open Primary Election</strong></p>
<p>A basic election held in 2 precincts. This election contains 13 contests compiled into 3 ballot styles. 1 contest is in all 3 ballot styles all other contests are independent. The voting variations supported by this election are as follow:</p>
<ul>
<li><p>Closed Primary: No</p></li>
<li><p>Open Primary: Yes</p></li>
<li><p>Partisan offices: Yes</p></li>
<li><p>Non-Partisan offices: Yes</p></li>
<li><p>Write-in voting: Yes</p></li>
<li><p>Primary presidential delegation nominations: Yes</p></li>
<li><p>Ballot Rotation: No</p></li>
<li><p>Straight Party voting: No</p></li>
<li><p>Cross-party endorsement: Yes</p></li>
<li><p>Split Precincts: No</p></li>
<li><p>Vote for N of M: Yes</p></li>
<li><p>Recall issues, with options: No</p></li>
<li><p>Cumulative voting: No</p></li>
<li><p>Ranked order voting: No</p></li>
<li><p>Provisional or challenged ballots: No</p></li>
<li><p>Early Voting: No</p></li>
</ul>
<p><strong>This election was designed to functionally test the handling of multiple ballot styles, support for</strong> Primary presidential delegation nominations<strong>, support for two languages, support for complex voting variations, and audio support for multiple languages. The election will be an open primary election with one machine running for each precinct. Voting options for Over-voting, Under-voting and write-in voting will be exercised. Ballots 5 and 18 were selected for Spanish based language input. Ballots 8 and 17 were selected for casting of ballot using the ADA Audio capability. Ballot 20 was selected to test Cross Overvoting functionality in systems whose Open Primaries support multiple parties on a single ballot. Cross Overvoting occurs when a voter selects candidates in a contest for one party then selects a candidate in the same contest for another party on the ballot. If this occurs, the contest is considered overvoted and does not count for any party on the ballot. If the voting system under test does not support this functionality, Ballot 20 should be removed from test deck and adjust expected results as required. NOTE: Overvotes and undervotes are listed in results based upon the “Vote For” value of the contest. For Example: If a Vote For 3 contest is undervoted, it is counted as 3 undervotes.</strong></p></td>
</tr>
<tr class="even">
<td><p><strong>Configuration:</strong></p>
<p><strong>EMS computer is used to create ballots with the following characteristics:</strong></p>
<p><strong>Election named:</strong> PRIM-02</p>
<p><strong><span class="underline">Precinct Based Testing</span></strong></p>
<p><strong>1 machines used for voting in one precinct</strong></p>
<p><strong>2 precincts</strong>: Fire station 7, Mountain Gap School</p>
<p><strong>3 parties:</strong> Democrat, Libertarian, Republican</p>
<p><strong>Languages:</strong> English, Spanish,</p>
<p><strong>Contest Totals:</strong> 13</p>
<p><strong>Contests as listed:</strong></p>
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
<td><p><strong>Delegates to the Democratic National Convention</strong></p>
<p><strong>(</strong><em>Group 1)</em></p>
<p>Micheal Fegley</p>
<p>Bliar Johnston</p>
<p>Kathy Campbell</p>
<p><em>(Group 2)</em></p>
<p>Iris N. Linares</p>
<p>Thomas A. Wallitsch</p>
<p>Joseph J. Russo</p>
<p>Vote for One</p></td>
<td><p><strong>Delegates to the Libertarian National Convention</strong></p>
<p><strong>(</strong><em>Group 1)</em></p>
<p>Dorthy Baran</p>
<p>Wendy Fuentes</p>
<p>Don Cunningham</p>
<p><strong>(</strong><em>Group 2)</em></p>
<p>Jennifer L. Mann</p>
<p>Robert McCord</p>
<p>Julius F. Cordisco</p>
<p>Vote for One</p></td>
<td><p><strong>Delegates to the Republican National Convention</strong></p>
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
<td><p><strong>Proposition 54</strong></p>
<p><strong>Classification by Race, Ethnicity, Color, or National Origin,</strong></p>
<p><strong>Initiative Constitutional Amendment</strong></p>
<p>Prohibits state and local governments from classifying any person by race, ethnicity, color, or national origin. Various exemptions apply. Fiscal Impact: The measure would not result in a significant fiscal impact on the state and local governments.</p>
<p>YES</p>
<p>NO</p>
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
<p><strong>Ballots voted or pre-marked with the following pattern. Ballots 5 and 18 will be input using the Spanish language option. Ballots 8 and 17 will be input using the ADA audio capability. The following is the test pattern to be voted for the given precinct:</strong></p>
<table>
<thead>
<tr class="header">
<th><strong>Fire station 7</strong></th>
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
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Democratic Party Ballot</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>US PRESIDENT</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Barack Obama</td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="even">
<td>Bill Richardson</td>
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
<td>Dennis Kucinich</td>
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
<td>Hillary Clinton</td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Joe Biden</td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>John Edwards</td>
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
<td></td>
</tr>
<tr class="even">
<td><strong>US SENATOR</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Cynthia Mckinney</td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>STATE REPRESENTATIVE DISTRICT 23</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Jon ErpenBach</td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>U</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Janis Ringhand</td>
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
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p><strong>Delegates to the Democratic National Convention</strong></p>
<p><em>(Grouped)</em></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>Micheal Fegley</p>
<p>Bliar Johnston</p>
<p>Kathy Campbell</p></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>U</strong></td>
<td></td>
<td></td>
<td></td>
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
<td><p>Iris N. Linares</p>
<p>Thomas A. Wallitsch</p>
<p>Joseph J. Russo</p></td>
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
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>Proposition 54</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>YES</strong></td>
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
<td><strong>NO</strong></td>
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
<tr class="even">
<td><strong>Libertarian Party Ballot</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>US PRESIDENT</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Bob Barr</td>
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
<td><strong>U</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td>Wayne A. Boot</td>
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
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Roger Calero</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Alyson Kennedy</td>
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
<td><strong>X</strong></td>
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
</tr>
<tr class="odd">
<td><strong>US SENATOR</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>Cynthia Mckinney</p>
<p><em>(Jim Doyle)</em></p></td>
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
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><strong>STATE REPRESENTATIVE DISTRICT 23</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Tim Peterson</td>
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
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
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
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td><p><strong>Delegates to the Libertarian National Convention</strong></p>
<p><em>(Grouped)</em></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>Dorthy Baran</p>
<p>Wendy Fuentes</p>
<p>Don Cunningham</p></td>
<td></td>
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
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td><p>Jennifer L. Mann</p>
<p>Robert McCord</p>
<p>Julius F. Cordisco</p></td>
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
<td><strong>X</strong></td>
<td><strong>OX</strong></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>Proposition 54</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>YES</strong></td>
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
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>NO</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
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
<td><strong>X</strong></td>
</tr>
<tr class="even">
<td><strong>Republican Party Ballot</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>US PRESIDENT</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>John McCain</td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td>Fred Thompson</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Mike Huckabee</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Ron Paul</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Mitt Romney</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Rudy Giuliani</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>US SENATOR</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Jean Hundertmark</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td>J. B. Van Hollen</td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td><strong>X</strong></td>
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
<td></td>
<td></td>
<td></td>
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
</tr>
<tr class="odd">
<td><strong>STATE REPRESENTATIVE DISTRICT 23</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Sandy Sullivan</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="odd">
<td>Jack C. Vought</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<tr class="even">
<td>Write-in</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
</tr>
<tr class="odd">
<td><p><strong>Delegates to the Republican National Convention</strong></p>
<p><em>(Grouped)</em></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>Dennis Morrison-Wesley</p>
<p>Jack Wagner</p>
<p>John M. Morganelli</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td><p>Micheal Fegley</p>
<p>Bliar Johnston</p>
<p>Kathy Campbell</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>Proposition 54</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>YES</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>NO</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
</tr>
</tbody>
</table>
<table>
<thead>
<tr class="header">
<th><strong>Mountain Gap School</strong></th>
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
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Democratic Party Ballot</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>US PRESIDENT</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Barack Obama</td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="even">
<td>Bill Richardson</td>
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
<td>Dennis Kucinich</td>
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
<td>Hillary Clinton</td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Joe Biden</td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>John Edwards</td>
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
<td></td>
</tr>
<tr class="even">
<td><strong>US SENATOR</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Cynthia Mckinney</td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>STATE REPRESENTATIVE DISTRICT 23</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Jon ErpenBach</td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td><strong>U</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Janis Ringhand</td>
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
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p><strong>Delegates to the Democratic National Convention</strong></p>
<p><em>(Grouped)</em></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>Micheal Fegley</p>
<p>Bliar Johnston</p>
<p>Kathy Campbell</p></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>U</strong></td>
<td></td>
<td></td>
<td></td>
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
<td><p>Iris N. Linares</p>
<p>Thomas A. Wallitsch</p>
<p>Joseph J. Russo</p></td>
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
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>Proposition 54</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>YES</strong></td>
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
<td><strong>NO</strong></td>
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
<tr class="even">
<td><strong>Libertarian Party Ballot</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>US PRESIDENT</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Bob Barr</td>
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
<td><strong>U</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td>Wayne A. Boot</td>
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
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Roger Calero</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Alyson Kennedy</td>
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
<td><strong>X</strong></td>
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
</tr>
<tr class="odd">
<td><strong>US SENATOR</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>Cynthia Mckinney</p>
<p><em>(Jim Doyle)</em></p></td>
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
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><strong>STATE REPRESENTATIVE DISTRICT 23</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Tim Peterson</td>
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
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
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
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td><p><strong>Delegates to the Libertarian National Convention</strong></p>
<p><em>(Grouped)</em></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>Dorthy Baran</p>
<p>Wendy Fuentes</p>
<p>Don Cunningham</p></td>
<td></td>
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
<td><strong>X</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td><p>Jennifer L. Mann</p>
<p>Robert McCord</p>
<p>Julius F. Cordisco</p></td>
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
<td><strong>X</strong></td>
<td><strong>OX</strong></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>Proposition 54</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>YES</strong></td>
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
<td><strong>X</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>NO</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
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
<td><strong>X</strong></td>
</tr>
<tr class="even">
<td><strong>Republican Party Ballot</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>US PRESIDENT</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>John McCain</td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td>Fred Thompson</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Mike Huckabee</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Ron Paul</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Mitt Romney</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Rudy Giuliani</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>US SENATOR</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Jean Hundertmark</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td>J. B. Van Hollen</td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td><strong>X</strong></td>
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
<td></td>
<td></td>
<td></td>
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
</tr>
<tr class="odd">
<td><strong>STATE REPRESENTATIVE DISTRICT 23</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Sandy Sullivan</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="odd">
<td>Jack C. Vought</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<tr class="even">
<td>Write-in</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
</tr>
<tr class="odd">
<td><p><strong>Delegates to the Republican National Convention</strong></p>
<p><em>(Grouped)</em></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>Dennis Morrison-Wesley</p>
<p>Jack Wagner</p>
<p>John M. Morganelli</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td><p>Micheal Fegley</p>
<p>Bliar Johnston</p>
<p>Kathy Campbell</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>Delegates to the Republican National Convention</strong></p>
<p><em>(N of M)</em></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td>Dennis Morrison-Wesley</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>U</strong></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="even">
<td>Jack Wagner</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="odd">
<td>John M. Morganelli</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
</tr>
<tr class="even">
<td>Micheal Fegley</td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="odd">
<td>Bliar Johnston</td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="even">
<td>Kathy Campbell</td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>Proposition 54</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>YES</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>NO</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
<td></td>
<td><strong>X</strong></td>
</tr>
</tbody>
</table></td>
</tr>
<tr class="odd">
<td><p><strong>Test Results:</strong></p>
<p><strong>Fire Station 7</strong></p>
<p><strong>DEM</strong></p>
<p><strong>US PRESIDENT</strong></p>
<p><strong>Barack Obama 1</strong></p>
<p><strong>Bill Richardson 1</strong></p>
<p><strong>Dennis Kucinich 1</strong></p>
<p><strong>Hillary Clinton 1</strong></p>
<p><strong>Joe Biden 1</strong></p>
<p><strong>John Edwards 1</strong></p>
<p><strong>Write-In 1</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES 1</strong></p>
<p><strong>US SENATOR</strong></p>
<p><strong>Cynthia Mckinney 7</strong></p>
<p><strong>Write-in 0</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES 1</strong></p>
<p><strong>STATE REPRESENTATIVE DISTRICT 23</strong></p>
<p><strong>Jon ErpenBach 5</strong></p>
<p><strong>Janis Ringhand 1</strong></p>
<p><strong>Write-in 0</strong></p>
<p><strong>UNDERVOTES 1</strong></p>
<p><strong>OVERVOTES 1</strong></p>
<p><strong>Delegates to the Democratic National Convention</strong></p>
<p><strong>(Grouped)</strong></p>
<p><strong>Micheal Fegley</strong></p>
<p><strong>Bliar Johnston</strong></p>
<p><strong>Kathy Campbell 3</strong></p>
<p><strong>Iris N. Linares</strong></p>
<p><strong>Thomas A. Wallitsch</strong></p>
<p><strong>Joseph J. Russo 3</strong></p>
<p><strong>UNDERVOTES 1</strong></p>
<p><strong>OVERVOTES 1</strong></p>
<p><strong>Proposition 54</strong></p>
<p><strong>YES 4</strong></p>
<p><strong>NO</strong> <strong>4</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES</strong> <strong>0</strong></p>
<p><strong>LIB</strong></p>
<p><strong>US PRESIDENT</strong></p>
<p><strong>Bob Barr 2</strong></p>
<p><strong>Wayne A. Boot 1</strong></p>
<p><strong>Roger Calero</strong> <strong>0</strong></p>
<p><strong>Alyson Kennedy 2</strong></p>
<p><strong>Write-In 0</strong></p>
<p><strong>UNDERVOTES 1</strong></p>
<p><strong>OVERVOTES 1</strong></p>
<p><strong>US SENATOR</strong></p>
<p><strong>Cynthia Mckinney 4</strong></p>
<p><strong>(Jim Doyle)</strong></p>
<p><strong>Write-in 1</strong></p>
<p><strong>UNDERVOTES 1</strong></p>
<p><strong>OVERVOTES 1</strong></p>
<p><strong>STATE REPRESENTATIVE DISTRICT 23</strong></p>
<p><strong>Tim Peterson 3</strong></p>
<p><strong>Write-in 1</strong></p>
<p><strong>UNDERVOTES 1</strong></p>
<p><strong>OVERVOTES 2</strong></p>
<p><strong>Delegates to the Libertarian National Convention</strong></p>
<p><strong>(Grouped)</strong></p>
<p><strong>Dorthy Baran</strong></p>
<p><strong>Wendy Fuentes</strong></p>
<p><strong>Don Cunningham 3</strong></p>
<p><strong>Jennifer L. Mann</strong></p>
<p><strong>Robert McCord</strong></p>
<p><strong>Julius F. Cordisco 2</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES 2</strong></p>
<p><strong>Proposition 54</strong></p>
<p><strong>YES 2</strong></p>
<p><strong>NO 4</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES</strong> <strong>0</strong></p>
<p><strong>REP</strong></p>
<p><strong>US PRESIDENT</strong></p>
<p><strong>John McCain 3</strong></p>
<p><strong>Fred Thompson 0</strong></p>
<p><strong>Mike Huckabee 0</strong></p>
<p><strong>Ron Paul 1</strong></p>
<p><strong>Mitt Romney 0</strong></p>
<p><strong>Rudy Giuliani 0</strong></p>
<p><strong>Write-In 1</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES 2</strong></p>
<p><strong>US SENATOR</strong></p>
<p><strong>Jean Hundertmark 1</strong></p>
<p><strong>J. B. Van Hollen 3</strong></p>
<p><strong>Write-in 0</strong></p>
<p><strong>UNDERVOTES 1</strong></p>
<p><strong>OVERVOTES 2</strong></p>
<p><strong>STATE REPRESENTATIVE DISTRICT 23</strong></p>
<p>Sandy Sullivan 4</p>
<p>Jack C. Vought 0</p>
<p><strong>Write-in 0</strong></p>
<p><strong>UNDERVOTES 1</strong></p>
<p><strong>OVERVOTES 2</strong></p>
<p><strong>Delegates to the Republican National Convention</strong></p>
<p><strong>(Grouped)</strong></p>
<p><strong>Dennis Morrison-Wesley</strong></p>
<p><strong>Jack Wagner 2</strong></p>
<p><strong>John M. Morganelli</strong></p>
<p><strong>Lilijana Xitlalli Dragović</strong></p>
<p><strong>Amaru Nehuén 3</strong></p>
<p><strong>Nita Iracema</strong> <strong><br />
UNDERVOTES 1</strong></p>
<p><strong>OVERVOTES 1</strong></p>
<p><strong>Proposition 54</strong></p>
<p><strong>YES 3</strong></p>
<p><strong>NO 3</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES</strong> <strong>0</strong></p>
<p><strong>Mountain Gap School</strong></p>
<p><strong>DEM</strong></p>
<p><strong>US PRESIDENT</strong></p>
<p><strong>Barack Obama 1</strong></p>
<p><strong>Bill Richardson 1</strong></p>
<p><strong>Dennis Kucinich 1</strong></p>
<p><strong>Hillary Clinton 1</strong></p>
<p><strong>Joe Biden 1</strong></p>
<p><strong>John Edwards 1</strong></p>
<p><strong>Write-In 1</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES 1</strong></p>
<p><strong>US SENATOR</strong></p>
<p><strong>Cynthia Mckinney 7</strong></p>
<p><strong>Write-in 0</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES 1</strong></p>
<p><strong>STATE REPRESENTATIVE DISTRICT 23</strong></p>
<p><strong>Jon ErpenBach 5</strong></p>
<p><strong>Janis Ringhand 1</strong></p>
<p><strong>Write-in 0</strong></p>
<p><strong>UNDERVOTES 1</strong></p>
<p><strong>OVERVOTES 1</strong></p>
<p><strong>Delegates to the Democratic National Convention</strong></p>
<p><strong>(Grouped)</strong></p>
<p><strong>Micheal Fegley</strong></p>
<p><strong>Bliar Johnston</strong></p>
<p><strong>Kathy Campbell 3</strong></p>
<p><strong>Iris N. Linares</strong></p>
<p><strong>Thomas A. Wallitsch</strong></p>
<p><strong>Joseph J. Russo 3</strong></p>
<p><strong>UNDERVOTES 1</strong></p>
<p><strong>OVERVOTES 1</strong></p>
<p><strong>Proposition 54</strong></p>
<p><strong>YES 4</strong></p>
<p><strong>NO</strong> <strong>4</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES</strong> <strong>0</strong></p>
<p><strong>LIB</strong></p>
<p><strong>US PRESIDENT</strong></p>
<p><strong>Bob Barr 2</strong></p>
<p><strong>Wayne A. Boot 1</strong></p>
<p><strong>Roger Calero</strong> <strong>0</strong></p>
<p><strong>Alyson Kennedy 2</strong></p>
<p><strong>Write-In 0</strong></p>
<p><strong>UNDERVOTES 1</strong></p>
<p><strong>OVERVOTES 1</strong></p>
<p><strong>US SENATOR</strong></p>
<p><strong>Cynthia Mckinney 4</strong></p>
<p><strong>(Jim Doyle)</strong></p>
<p><strong>Write-in 1</strong></p>
<p><strong>UNDERVOTES 1</strong></p>
<p><strong>OVERVOTES 1</strong></p>
<p><strong>STATE REPRESENTATIVE DISTRICT 23</strong></p>
<p><strong>Tim Peterson 3</strong></p>
<p><strong>Write-in 1</strong></p>
<p><strong>UNDERVOTES 1</strong></p>
<p><strong>OVERVOTES 2</strong></p>
<p><strong>Delegates to the Libertarian National Convention</strong></p>
<p><strong>(Grouped)</strong></p>
<p><strong>Dorthy Baran</strong></p>
<p><strong>Wendy Fuentes</strong></p>
<p><strong>Don Cunningham 3</strong></p>
<p><strong>Jennifer L. Mann</strong></p>
<p><strong>Robert McCord</strong></p>
<p><strong>Julius F. Cordisco 2</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES 2</strong></p>
<p><strong>Proposition 54</strong></p>
<p><strong>YES 2</strong></p>
<p><strong>NO 4</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES</strong> <strong>0</strong></p>
<p><strong>REP</strong></p>
<p><strong>US PRESIDENT</strong></p>
<p><strong>John McCain 3</strong></p>
<p><strong>Fred Thompson 0</strong></p>
<p><strong>Mike Huckabee 0</strong></p>
<p><strong>Ron Paul 1</strong></p>
<p><strong>Mitt Romney 0</strong></p>
<p><strong>Rudy Giuliani 0</strong></p>
<p><strong>Write-In 1</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES 2</strong></p>
<p><strong>US SENATOR</strong></p>
<p><strong>Jean Hundertmark 1</strong></p>
<p><strong>J. B. Van Hollen 3</strong></p>
<p><strong>Write-in 0</strong></p>
<p><strong>UNDERVOTES 1</strong></p>
<p><strong>OVERVOTES 2</strong></p>
<p><strong>STATE REPRESENTATIVE DISTRICT 23</strong></p>
<p>Sandy Sullivan 4</p>
<p>Jack C. Vought 0</p>
<p><strong>Write-in 0</strong></p>
<p><strong>UNDERVOTES 1</strong></p>
<p><strong>OVERVOTES 2</strong></p>
<p><strong>Delegates to the Republican National Convention</strong></p>
<p><strong>(Grouped)</strong></p>
<p><strong>Dennis Morrison-Wesley</strong></p>
<p><strong>Jack Wagner 2</strong></p>
<p><strong>John M. Morganelli</strong></p>
<p><strong>Lilijana Xitlalli Dragović</strong></p>
<p><strong>Amaru Nehuén 3</strong></p>
<p><strong>Nita Iracema</strong> <strong><br />
UNDERVOTES 1</strong></p>
<p><strong>OVERVOTES 1</strong></p>
<p><strong>Proposition 54</strong></p>
<p><strong>YES 3</strong></p>
<p><strong>NO 3</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES 1</strong></p>
<p><strong>Cumulative Totals</strong></p>
<p><strong>DEM</strong></p>
<p><strong>US PRESIDENT</strong></p>
<p><strong>Barack Obama 2</strong></p>
<p><strong>Bill Richardson 2</strong></p>
<p><strong>Dennis Kucinich 2</strong></p>
<p><strong>Hillary Clinton 2</strong></p>
<p><strong>Joe Biden 2</strong></p>
<p><strong>John Edwards 2</strong></p>
<p><strong>Write-In 2</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES 2</strong></p>
<p><strong>US SENATOR</strong></p>
<p><strong>Cynthia Mckinney 14</strong></p>
<p><strong>Write-in 0</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES 2</strong></p>
<p><strong>STATE REPRESENTATIVE DISTRICT 23</strong></p>
<p><strong>Jon ErpenBach 10</strong></p>
<p><strong>Janis Ringhand 2</strong></p>
<p><strong>Write-in 0</strong></p>
<p><strong>UNDERVOTES 2</strong></p>
<p><strong>OVERVOTES 2</strong></p>
<p><strong>Delegates to the Democratic National Convention</strong></p>
<p><strong>(Grouped)</strong></p>
<p><strong>Micheal Fegley</strong></p>
<p><strong>Bliar Johnston</strong></p>
<p><strong>Kathy Campbell 6</strong></p>
<p><strong>Iris N. Linares</strong></p>
<p><strong>Thomas A. Wallitsch</strong></p>
<p><strong>Joseph J. Russo 6</strong></p>
<p><strong>UNDERVOTES 2</strong></p>
<p><strong>OVERVOTES 2</strong></p>
<p><strong>Proposition 54</strong></p>
<p><strong>YES</strong> <strong>8</strong></p>
<p><strong>NO</strong> <strong>8</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES</strong> <strong>0</strong></p>
<p><strong>LIB</strong></p>
<p><strong>US PRESIDENT</strong></p>
<p><strong>Bob Barr 4</strong></p>
<p><strong>Wayne A. Boot 2</strong></p>
<p><strong>Roger Calero</strong> <strong>0</strong></p>
<p><strong>Alyson Kennedy 4</strong></p>
<p><strong>Write-In 0</strong></p>
<p><strong>UNDERVOTES 2</strong></p>
<p><strong>OVERVOTES 2</strong></p>
<p><strong>US SENATOR</strong></p>
<p><strong>Cynthia Mckinney 8</strong></p>
<p><strong>(Jim Doyle)</strong></p>
<p><strong>Write-in 2</strong></p>
<p><strong>UNDERVOTES 2</strong></p>
<p><strong>OVERVOTES 2</strong></p>
<p><strong>STATE REPRESENTATIVE DISTRICT 23</strong></p>
<p><strong>Tim Peterson 6</strong></p>
<p><strong>Write-in 2</strong></p>
<p><strong>UNDERVOTES 2</strong></p>
<p><strong>OVERVOTES 4</strong></p>
<p><strong>Delegates to the Libertarian National Convention</strong></p>
<p><strong>(Grouped)</strong></p>
<p><strong>Dorthy Baran</strong></p>
<p><strong>Wendy Fuentes</strong></p>
<p><strong>Don Cunningham 6</strong></p>
<p><strong>Jennifer L. Mann</strong></p>
<p><strong>Robert McCord</strong></p>
<p><strong>Julius F. Cordisco 4</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES 4</strong></p>
<p><strong>Proposition 54</strong></p>
<p><strong>YES</strong> <strong>4</strong></p>
<p><strong>NO 8</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES</strong> <strong>0</strong></p>
<p><strong>REP</strong></p>
<p><strong>US PRESIDENT</strong></p>
<p><strong>John McCain 6</strong></p>
<p><strong>Fred Thompson 0</strong></p>
<p><strong>Mike Huckabee 0</strong></p>
<p><strong>Ron Paul 2</strong></p>
<p><strong>Mitt Romney 0</strong></p>
<p><strong>Rudy Giuliani 0</strong></p>
<p><strong>Write-In 2</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES 4</strong></p>
<p><strong>US SENATOR</strong></p>
<p><strong>Jean Hundertmark 2</strong></p>
<p><strong>J. B. Van Hollen 6</strong></p>
<p><strong>Write-in 0</strong></p>
<p><strong>UNDERVOTES 2</strong></p>
<p><strong>OVERVOTES 4</strong></p>
<p><strong>STATE REPRESENTATIVE DISTRICT 23</strong></p>
<p>Sandy Sullivan 8</p>
<p>Jack C. Vought 0</p>
<p><strong>Write-in 0</strong></p>
<p><strong>UNDERVOTES 2</strong></p>
<p><strong>OVERVOTES 4</strong></p>
<p><strong>Delegates to the Republican National Convention</strong></p>
<p><strong>(Grouped)</strong></p>
<p><strong>Dennis Morrison-Wesley</strong></p>
<p><strong>Jack Wagner 4</strong></p>
<p><strong>John M. Morganelli</strong></p>
<p><strong>Lilijana Xitlalli Dragović</strong></p>
<p><strong>Amaru Nehuén 6</strong></p>
<p><strong>Nita Iracema<br />
</strong> <strong>UNDERVOTES 2</strong></p>
<p><strong>OVERVOTES 2</strong></p>
<p><strong>Proposition 54</strong></p>
<p><strong>YES 6</strong></p>
<p><strong>NO 6</strong></p>
<p><strong>UNDERVOTES 0</strong></p>
<p><strong>OVERVOTES</strong> <strong>0</strong></p></td>
</tr>
<tr class="even">
<td><p><strong>Criteria For Evaluation of Test Results:</strong></p>
<p>The results of this test will be accepted if the stated election definition can be input into the EMS, the election transferred to the voting machine, voted according to the test vote pattern, and the results reported and audited to match the expected results. During the execution of this election all errors need to be logged and analyzed by qualified personal to determine if the error is an actual error or another issue.</p></td>
</tr>
</tbody>
</table>
