# NIST Voting Common Data Format Test Method – Test Data  
Synthetic Dataset – GEN-03

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
<th>THESE DEFINITIONS ARE DRAFT, SUBJECT TO REVISION, AND SHOULD NOT BE USED FOR CONFORMANCE WORK.</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>ELECTION DEFINITION: GEN-03</td>
</tr>
<tr class="even">
<td><p><strong>General Election</strong></p>
<p>A basic election held in 2 precincts. This election contains 8 contests and compiled into 2 ballot styles. 4 of the contests are in both ballot styles. The other 4 contests are split between the two precincts. The voting variations supported by this election are as follows:</p>
<ul>
<li><p>Closed Primary: No</p></li>
<li><p>Open Primary: No</p></li>
<li><p>Partisan offices: Yes</p></li>
<li><p>Non-Partisan offices: Yes</p></li>
<li><p>Write-in voting: Yes</p></li>
<li><p>Primary presidential delegation nominations: No</p></li>
<li><p>Ballot Rotation: No</p></li>
<li><p>Straight Party voting: No</p></li>
<li><p>Cross-party endorsement: No</p></li>
<li><p>Split Precincts: No</p></li>
<li><p>Vote for N of M: Yes</p></li>
<li><p>Recall issues, with options: No</p></li>
<li><p>Cumulative voting: No</p></li>
<li><p>Ranked order voting: No</p></li>
<li><p>Provisional or challenged ballots: Yes</p></li>
<li><p>Early Voting: No</p></li>
</ul>
<p>This election was designed to functionally test the handling of multiple ballot styles, support for at least three languages including a character-based language, support for common voting variations, and audio support for at least three languages and an ADA binary input device. Test patterns 3 and 4 were chosen for input in the Spanish language because they are a basic voting pattern with a write-in. Test patterns 5 and 6 were chosen for audio input using the Spanish language to demonstrate support for write-in voting using an ADA device with and alternative language. Test pattern 7 was chosen for character-based language input because it is a basic vote pattern using Chinese. Test pattern 8 was chosen for character-based language using an ADA device to demonstrate support for character-based ADA device support. Test pattern 9 was chosen for binary input to show support for ADA binary input device. Test pattern 10 was chosen for binary input using ADA audio deceive to show support for binary input and ADA support.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Configuration:</strong></p>
<p><strong>EMS computer is used to create ballots with the following characteristics:</strong></p>
<p><strong>General Election named:</strong> GEN-03 General Election</p>
<p><strong><span class="underline">Precinct Based Testing</span></strong></p>
<p><strong>1 machine used for each precinct</strong></p>
<p><strong>2 precincts</strong>: Fire Station 23, Aldersgate Church</p>
<p><strong>2 parties:</strong> Democrat, Republican</p>
<p><strong>Languages:</strong> English, Spanish, Chinese</p>
<p><strong>Contest Totals:</strong> 8</p>
<p><strong>Contests as listed:</strong></p>
<table>
<thead>
<tr class="header">
<th><strong>Fire Station 23</strong></th>
<th><strong>Aldersgate Church</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>President of the United States</strong></p>
<p>Arthur Kumar REP</p>
<p>Brian Getz DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>United States Senator</strong></p>
<p>Chad Snow REP</p>
<p>Don Etler DEM</p>
<p>Write-In</p>
<p>Vote for 1</p></td>
<td></td>
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
<td><p><strong>Measure 22.6</strong></p>
<p><strong>Exchange</strong> <strong>of</strong> <strong>Certain Property</strong></p>
<p>Shall the proposed amendment to Article XIV, section 1 of the Constitution,</p>
<p>authorizing the conveyance of approximately ten acres of State Land in</p>
<p>exchange for approximately two hundred acres of wild forest land in order</p>
<p>to facilitate the preservation of certain historic buildings, be approved?</p>
<p>Yes</p>
<p>No</p>
<p>Vote for one</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>Measure 25.3</strong></p>
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
<td></td>
</tr>
</tbody>
</table></td>
</tr>
<tr class="even">
<td><p><strong>Applicable Voting Devices :</strong></p>
<p><strong>OP Scanner, DRE, Central Count, EBM, and ADA device</strong></p></td>
</tr>
<tr class="odd">
<td><p><strong>Test Deck Pattern: (**If binary input device not supported use audio input. If character based language not supported use Spanish language only**)</strong></p>
<p><strong>Ballots voted or pre-marked with the following pattern. Ballots 3 and 4 will be input utilizing the Spanish language ballot. Ballots 5 and 6 will be input utilizing the Spanish language option on the ADA audio device. Ballot 7 will be input using the Chinese language. Ballot 8 will be input using the Chinese language and the ADA audio device. Ballot 9 will be input using the binary input device. Ballot 10 will be input using both the binary input device and the ADA audio option. The following is the test pattern to be voted for the given precinct:</strong></p>
<table>
<tbody>
<tr class="odd">
<td><strong>Fire Station 23</strong></td>
<td><strong>B-1</strong></td>
<td><strong>B-2</strong></td>
<td><strong>B-3</strong></td>
<td><strong>B-4</strong></td>
<td><strong>B-5</strong></td>
<td><strong>B-6</strong></td>
<td><strong>B-7</strong></td>
<td><strong>B-8</strong></td>
<td><strong>B-9</strong></td>
<td><strong>B-10</strong></td>
</tr>
<tr class="even">
<td><strong>President of the United States</strong></td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="odd">
<td>Arthur Kumar REP</td>
<td>X </td>
<td> </td>
<td> X</td>
<td></td>
<td> X</td>
<td> </td>
<td>X </td>
<td></td>
<td>X </td>
<td> </td>
</tr>
<tr class="even">
<td>Brian Getz DEM</td>
<td> </td>
<td>X </td>
<td> </td>
<td>X </td>
<td></td>
<td></td>
<td> </td>
<td> X</td>
<td></td>
<td>X </td>
</tr>
<tr class="odd">
<td>Write-In</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td>X</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="even">
<td><strong>United States Senator</strong></td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="odd">
<td>Chad Snow REP</td>
<td>X </td>
<td> </td>
<td>X </td>
<td></td>
<td> X</td>
<td> </td>
<td> X</td>
<td></td>
<td>X </td>
<td> </td>
</tr>
<tr class="even">
<td>Don Etler DEM</td>
<td> </td>
<td>X </td>
<td> </td>
<td></td>
<td></td>
<td>X </td>
<td> </td>
<td> X</td>
<td></td>
<td>X </td>
</tr>
<tr class="odd">
<td>Write-In</td>
<td> </td>
<td> </td>
<td> </td>
<td> X</td>
<td> </td>
<td></td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="even">
<td><strong>Representative in Congress</strong></td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="odd">
<td><strong>District 1</strong></td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="even">
<td>Eric Sheehy REP</td>
<td>X </td>
<td> </td>
<td>X </td>
<td></td>
<td> </td>
<td> </td>
<td>X </td>
<td></td>
<td>X</td>
<td></td>
</tr>
<tr class="odd">
<td>Fiero Finn DEM</td>
<td> </td>
<td>X </td>
<td> </td>
<td>X </td>
<td></td>
<td>X </td>
<td> </td>
<td>X</td>
<td></td>
<td>X</td>
</tr>
<tr class="even">
<td>Write-In</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> X</td>
<td></td>
<td> </td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>State Assembly</strong></td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="even">
<td><strong>District 1</strong></td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="odd">
<td>Gloria Castle REP</td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Harry Sosses DEM</td>
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
</tr>
<tr class="odd">
<td>Write-In</td>
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
</tr>
<tr class="even">
<td><strong>Measure 22.6</strong></td>
<td></td>
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
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
</tr>
<tr class="even">
<td>No</td>
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
</tr>
<tr class="odd">
<td><strong>Measure 25.3</strong></td>
<td></td>
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
</tr>
<tr class="odd">
<td>No</td>
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
</tr>
</tbody>
</table>
<table>
<tbody>
<tr class="odd">
<td><strong>Aldersgate Church</strong></td>
<td><strong>B-1</strong></td>
<td><strong>B-2</strong></td>
<td><strong>B-3</strong></td>
<td><strong>B-4</strong></td>
<td><strong>B-5</strong></td>
<td><strong>B-6</strong></td>
<td><strong>B-7</strong></td>
<td><strong>B-8</strong></td>
<td><strong>B-9</strong></td>
<td><strong>B-10</strong></td>
</tr>
<tr class="even">
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
</tr>
<tr class="odd">
<td>Arthur Kumar REP</td>
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
</tr>
<tr class="even">
<td>Brian Getz DEM</td>
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
</tr>
<tr class="even">
<td><strong>United States Senator</strong></td>
<td></td>
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
<td>Chad Snow REP</td>
<td>X </td>
<td> </td>
<td>X </td>
<td></td>
<td> X</td>
<td> </td>
<td> X</td>
<td></td>
<td>X </td>
<td> </td>
</tr>
<tr class="even">
<td>Don Etler DEM</td>
<td> </td>
<td>X </td>
<td> </td>
<td></td>
<td></td>
<td>X </td>
<td> </td>
<td> X</td>
<td></td>
<td>X </td>
</tr>
<tr class="odd">
<td>Write-In</td>
<td> </td>
<td> </td>
<td> </td>
<td> X</td>
<td> </td>
<td></td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="even">
<td><strong>Representative in Congress District 2</strong></td>
<td></td>
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
<td>Ernest Snyder REP</td>
<td>X </td>
<td> </td>
<td>X </td>
<td></td>
<td> </td>
<td> </td>
<td>X </td>
<td></td>
<td>X</td>
<td></td>
</tr>
<tr class="even">
<td>Frank L. Matthews DEM</td>
<td> </td>
<td>X </td>
<td> </td>
<td>X </td>
<td></td>
<td>X </td>
<td> </td>
<td>X</td>
<td></td>
<td>X</td>
</tr>
<tr class="odd">
<td>Write-In</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> X</td>
<td></td>
<td> </td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><strong>State Assembly District 2</strong></td>
<td></td>
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
<td>Glenna P Cook-Lincoln REP</td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Heidi Hatzinger DEM</td>
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
</tr>
<tr class="odd">
<td>Write-In</td>
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
</tr>
<tr class="even">
<td><strong>Measure 22.6</strong></td>
<td></td>
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
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
</tr>
<tr class="even">
<td>No</td>
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
</tr>
<tr class="odd">
<td><strong>Measure 25.3</strong></td>
<td></td>
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
</tr>
<tr class="odd">
<td>No</td>
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
</tr>
</tbody>
</table></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr class="header">
<th><p><strong>Test Results:</strong></p>
<p><strong>Fire Station 23</strong></p>
<p><strong>President of the United States</strong></p>
<p>Arthur Kumar REP 5</p>
<p>Brian Getz DEM 4</p>
<p>Write-In 1</p>
<p><strong>United States Senator</strong></p>
<p>Chad Snow REP 5</p>
<p>Don Etler DEM 4</p>
<p>Write-In 1</p>
<p><strong>Representative in Congress</strong></p>
<p><strong>District 1</strong></p>
<p>Eric Sheehy REP 4</p>
<p>Fiero Finn DEM 5</p>
<p>Write-In 1</p>
<p><strong>State Assembly</strong></p>
<p><strong>District 1</strong></p>
<p>Gloria Castle REP 3</p>
<p>Harry Sosses DEM 3</p>
<p>Write-In 4</p>
<p><strong>Measure 22.6</strong></p>
<p>Yes 5</p>
<p>No 5</p>
<p><strong>Measure 25.3</strong></p>
<p>Yes 5</p>
<p>No 5</p>
<p><strong>AldersGate Church</strong></p>
<p><strong>President of the United States</strong></p>
<p>Arthur Kumar REP 5</p>
<p>Brian Getz DEM 5</p>
<p>Write-In 0</p>
<p><strong>United States Senator</strong></p>
<p>Chad Snow REP 5</p>
<p>Don Etler DEM 4</p>
<p>Write-In 1</p>
<p><strong>Representative in Congress</strong></p>
<p><strong>District 2</strong></p>
<p>Ernest Snyder REP 4</p>
<p>Frank L. Matthews DEM 5</p>
<p>Write-In 1</p>
<p><strong>State Assembly</strong></p>
<p><strong>District 2</strong></p>
<p>Glenna P Cook-Lincoln REP 3</p>
<p>Heidi Hatzinger DEM 3</p>
<p>Write-In 4</p>
<p><strong>Measure 22.6</strong></p>
<p>Yes 5</p>
<p>No 5</p>
<p><strong>Measure 25.3</strong></p>
<p>Yes 5</p>
<p>No 5</p>
<p>Cumlative Totals:</p>
<p><strong>President of the United States</strong></p>
<p>Arthur Kumar REP 10</p>
<p>Brian Getz DEM 8</p>
<p>Write-In 2</p>
<p><strong>United States Senator</strong></p>
<p>Chad Snow REP 10</p>
<p>Don Etler DEM 8</p>
<p>Write-In 2</p>
<p><strong>Representative in Congress</strong></p>
<p><strong>District 1</strong></p>
<p>Eric Sheehy REP 8</p>
<p>Fiero Finn DEM 10</p>
<p>Write-In 2</p>
<p><strong>Representative in Congress</strong></p>
<p><strong>District 2</strong></p>
<p>Ernest Snyder REP 4</p>
<p>Frank L. Matthews DEM 5</p>
<p>Write-In 1</p>
<p><strong>State Assembly</strong></p>
<p><strong>District 1</strong></p>
<p>Gloria Castle REP 6</p>
<p>Harry Sosses DEM 6</p>
<p>Write-In 8</p>
<p><strong>State Assembly</strong></p>
<p><strong>District 2</strong></p>
<p>Glenna P Cook-Lincoln REP 3</p>
<p>Heidi Hatzinger DEM 3</p>
<p>Write-In 4</p>
<p><strong>Measure 22.6</strong></p>
<p>Yes 10</p>
<p>No 10</p>
<p><strong>Measure 25.3</strong></p>
<p>Yes 10</p>
<p>No 10</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Criteria For Evaluation of Test Results:</strong></p>
<p>The results of this test will be accepted if the stated election definition can be input into the EMS, the election transferred to the voting machine, voted according to the test vote pattern, and the results reported and audited to match the expected results. During the execution of this election all errors need to be logged and analyzed by qualified personal to determine if the error is an actual error or another issue.</p></td>
</tr>
</tbody>
</table>
