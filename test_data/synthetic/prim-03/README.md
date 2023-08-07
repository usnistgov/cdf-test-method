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

<table>
<thead>
<tr class="header">
<th>ELECTION DEFINITION: PRIM-03</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Primary Election</strong></p>
<p>A basic election held in 2 precincts. This election contains 10 contests and is compiled into 2 ballot styles. 2 of the contests are in both ballot styles. The other 8 contests are split between the two parties’ ballots. The voting variations supported by this election are as follows:</p>
<ul>
<li><p>Closed Primary: Yes</p></li>
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
<li><p>Ranked choice voting: No</p></li>
</ul>
<p>This election was designed to functionally test the handling of multiple ballot styles, and support for common voting variations.</p></td>
</tr>
<tr class="even">
<td><p><strong>Configuration:</strong></p>
<p><strong>EMS computer is used to create ballots with the following characteristics:</strong></p>
<p><strong>General Election named:</strong> PRIM-03 Primary Election</p>
<p><strong><span class="underline">Precinct Based Testing</span></strong></p>
<p><strong>1 machine used for each precinct</strong></p>
<p><strong>2 precincts</strong>: Middleton Community Center, First Baptist Church</p>
<p><strong>2 parties:</strong> Democrat, Republican</p>
<p><strong>Contest Totals:</strong> 8</p>
<p><strong>Contests as listed:</strong></p>
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
</table></td>
</tr>
<tr class="odd">
<td><p><strong>Applicable Voting Devices :</strong></p>
<p><strong>OP Scanner, DRE, Central Count, EBM, and ADA device</strong></p></td>
</tr>
<tr class="even">
<td><p><strong>Test Deck Pattern:</strong></p>
<p><strong>The following is the test pattern to be voted for the given precinct:</strong></p>
<table>
<tbody>
<tr class="odd">
<td><strong>Middleton Community Center</strong></td>
<td><p><strong>B-1</strong></p>
<p><strong>D</strong></p></td>
<td><p><strong>B-2</strong></p>
<p><strong>R</strong></p></td>
<td><p><strong>B-3</strong></p>
<p><strong>D</strong></p></td>
<td><p><strong>B-4</strong></p>
<p><strong>R</strong></p></td>
<td><p><strong>B-5</strong></p>
<p><strong>D</strong></p></td>
<td><p><strong>B-6</strong></p>
<p><strong>R</strong></p></td>
<td><p><strong>B-7</strong></p>
<p><strong>D</strong></p></td>
<td><p><strong>B-8</strong></p>
<p><strong>R</strong></p></td>
<td><p><strong>B-9</strong></p>
<p><strong>D</strong></p></td>
<td><p><strong>B-10</strong></p>
<p><strong>R</strong></p></td>
</tr>
<tr class="even">
<td><strong>DEM</strong></td>
<td></td>
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
<tr class="even">
<td>Anne Neet</td>
<td>X </td>
<td> </td>
<td> X</td>
<td></td>
<td> </td>
<td> </td>
<td></td>
<td></td>
<td>X </td>
<td> </td>
</tr>
<tr class="odd">
<td>Ben Baker</td>
<td> </td>
<td></td>
<td> </td>
<td></td>
<td>X</td>
<td></td>
<td>X </td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td></td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="odd">
<td><strong>United States Senator</strong> </td>
<td></td>
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
<td>Chad Snow</td>
<td>X </td>
<td> </td>
<td>X </td>
<td></td>
<td></td>
<td> </td>
<td> X</td>
<td></td>
<td>X</td>
<td> </td>
</tr>
<tr class="odd">
<td>Don Etler</td>
<td> </td>
<td></td>
<td> </td>
<td></td>
<td>X</td>
<td></td>
<td> </td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td> </td>
<td> </td>
<td> </td>
<td></td>
<td> </td>
<td></td>
<td> </td>
<td> </td>
<td></td>
<td> </td>
</tr>
<tr class="odd">
<td><strong>Representative in Congress District 12</strong> </td>
<td></td>
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
<td>Eric Sheehy</td>
<td>X </td>
<td> </td>
<td>X </td>
<td></td>
<td> </td>
<td> </td>
<td>X </td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Fiero Finn</td>
<td> </td>
<td></td>
<td> </td>
<td></td>
<td></td>
<td> </td>
<td> </td>
<td></td>
<td>X</td>
<td></td>
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
<td><strong>State Assembly District 26</strong></td>
<td></td>
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
<td>Shlomo Archibald</td>
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
<tr class="odd">
<td>Write-In</td>
<td></td>
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
<td> </td>
<td></td>
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
<td><strong>Referendum A</strong></td>
<td></td>
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
<td>For</td>
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
</tr>
<tr class="odd">
<td>Against</td>
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
<tr class="even">
<td><strong>Referendum B</strong></td>
<td></td>
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
<td>For</td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
</tr>
<tr class="even">
<td>Against</td>
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
<td></td>
<td></td>
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
<td><strong>REP</strong></td>
<td></td>
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
<tr class="even">
<td>Andre Nina</td>
<td></td>
<td>X </td>
<td></td>
<td></td>
<td> </td>
<td>X </td>
<td></td>
<td></td>
<td> </td>
<td>X </td>
</tr>
<tr class="odd">
<td>Brent Gilley</td>
<td> </td>
<td></td>
<td> </td>
<td>X</td>
<td></td>
<td></td>
<td> </td>
<td>X</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td></td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="odd">
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
<tr class="even">
<td>Carol Cross</td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td> X</td>
</tr>
<tr class="odd">
<td>David Cox</td>
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
</tr>
<tr class="even">
<td>Write-in</td>
<td> </td>
<td> </td>
<td> </td>
<td></td>
<td> </td>
<td></td>
<td> </td>
<td> </td>
<td></td>
<td> </td>
</tr>
<tr class="odd">
<td><strong>Representative in Congress District 12</strong></td>
<td></td>
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
<td>Ernest Snyder</td>
<td></td>
<td>X  </td>
<td></td>
<td></td>
<td> </td>
<td> </td>
<td></td>
<td></td>
<td></td>
<td>X </td>
</tr>
<tr class="odd">
<td>Frank L. Matthews</td>
<td> </td>
<td></td>
<td> </td>
<td>X </td>
<td></td>
<td>X  </td>
<td> </td>
<td>X </td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td></td>
<td></td>
<td> </td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>State Assembly District 26</strong></td>
<td></td>
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
<td>Glenna P Cook-Lincoln</td>
<td></td>
<td></td>
<td></td>
<td>X </td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Heidi Hatzinger</td>
<td></td>
<td>X </td>
<td></td>
<td></td>
<td></td>
<td>X </td>
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
<td>X </td>
<td></td>
<td>X </td>
</tr>
<tr class="odd">
<td><strong>Referendum A</strong></td>
<td></td>
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
<td>For</td>
<td></td>
<td>X </td>
<td></td>
<td>X </td>
<td></td>
<td>X </td>
<td></td>
<td>X </td>
<td></td>
<td>X </td>
</tr>
<tr class="odd">
<td>Against</td>
<td></td>
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
<td><strong>Referendum B</strong></td>
<td></td>
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
<td>For</td>
<td></td>
<td>X </td>
<td></td>
<td>X </td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Against</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X </td>
<td></td>
<td>X </td>
<td></td>
<td>X</td>
</tr>
</tbody>
</table>
<table>
<tbody>
<tr class="odd">
<td><strong>First Baptist Church</strong></td>
<td><p><strong>B-1</strong></p>
<p><strong>D</strong></p></td>
<td><p><strong>B-2</strong></p>
<p><strong>R</strong></p></td>
<td><p><strong>B-3</strong></p>
<p><strong>D</strong></p></td>
<td><p><strong>B-4</strong></p>
<p><strong>R</strong></p></td>
<td><p><strong>B-5</strong></p>
<p><strong>D</strong></p></td>
<td><p><strong>B-6</strong></p>
<p><strong>R</strong></p></td>
<td><p><strong>B-7</strong></p>
<p><strong>D</strong></p></td>
<td><p><strong>B-8</strong></p>
<p><strong>R</strong></p></td>
<td><p><strong>B-9</strong></p>
<p><strong>D</strong></p></td>
<td><p><strong>B-10</strong></p>
<p><strong>R</strong></p></td>
</tr>
<tr class="even">
<td><strong>DEM</strong></td>
<td></td>
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
<tr class="even">
<td>Anne Neet</td>
<td>X </td>
<td> </td>
<td> X</td>
<td></td>
<td> </td>
<td> </td>
<td></td>
<td></td>
<td>X </td>
<td> </td>
</tr>
<tr class="odd">
<td>Ben Baker</td>
<td> </td>
<td></td>
<td> </td>
<td></td>
<td>X</td>
<td></td>
<td>X </td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td></td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="odd">
<td><strong>United States Senator</strong> </td>
<td></td>
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
<td>Chad Snow</td>
<td>X </td>
<td> </td>
<td>X </td>
<td></td>
<td></td>
<td> </td>
<td> X</td>
<td></td>
<td>X</td>
<td> </td>
</tr>
<tr class="odd">
<td>Don Etler</td>
<td> </td>
<td></td>
<td> </td>
<td></td>
<td>X</td>
<td></td>
<td> </td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td> </td>
<td> </td>
<td> </td>
<td></td>
<td> </td>
<td></td>
<td> </td>
<td> </td>
<td></td>
<td> </td>
</tr>
<tr class="odd">
<td><strong>Representative in Congress District 12</strong> </td>
<td></td>
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
<td>Eric Sheehy</td>
<td>X </td>
<td> </td>
<td>X </td>
<td></td>
<td> </td>
<td> </td>
<td>X </td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Fiero Finn</td>
<td> </td>
<td></td>
<td> </td>
<td></td>
<td></td>
<td> </td>
<td> </td>
<td></td>
<td>X</td>
<td></td>
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
<td><strong>State Assembly District 26</strong></td>
<td></td>
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
<td>Shlomo Archibald</td>
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
<tr class="odd">
<td>Write-In</td>
<td></td>
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
<td> </td>
<td></td>
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
<td><strong>Referendum A</strong></td>
<td></td>
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
<td>For</td>
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
</tr>
<tr class="odd">
<td>Against</td>
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
<tr class="even">
<td><strong>Referendum B</strong></td>
<td></td>
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
<td>For</td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
</tr>
<tr class="even">
<td>Against</td>
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
<td></td>
<td></td>
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
<td><strong>REP</strong></td>
<td></td>
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
<tr class="even">
<td>Andre Nina</td>
<td></td>
<td>X </td>
<td></td>
<td></td>
<td> </td>
<td>X </td>
<td></td>
<td></td>
<td> </td>
<td>X </td>
</tr>
<tr class="odd">
<td>Brent Gilley</td>
<td> </td>
<td></td>
<td> </td>
<td>X</td>
<td></td>
<td></td>
<td> </td>
<td>X</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td></td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="odd">
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
<tr class="even">
<td>Carol Cross</td>
<td></td>
<td>X</td>
<td></td>
<td></td>
<td></td>
<td>X</td>
<td></td>
<td>X</td>
<td></td>
<td> X</td>
</tr>
<tr class="odd">
<td>David Cox</td>
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
</tr>
<tr class="even">
<td>Write-in</td>
<td> </td>
<td> </td>
<td> </td>
<td></td>
<td> </td>
<td></td>
<td> </td>
<td> </td>
<td></td>
<td> </td>
</tr>
<tr class="odd">
<td><strong>Representative in Congress District 12</strong></td>
<td></td>
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
<td>Ernest Snyder</td>
<td></td>
<td>X  </td>
<td></td>
<td></td>
<td> </td>
<td> </td>
<td></td>
<td></td>
<td></td>
<td>X </td>
</tr>
<tr class="odd">
<td>Frank L. Matthews</td>
<td> </td>
<td></td>
<td> </td>
<td>X </td>
<td></td>
<td>X  </td>
<td> </td>
<td>X </td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Write-In</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td></td>
<td></td>
<td> </td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>State Assembly District 26</strong></td>
<td></td>
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
<td>Glenna P Cook-Lincoln</td>
<td></td>
<td></td>
<td></td>
<td>X </td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Heidi Hatzinger</td>
<td></td>
<td>X </td>
<td></td>
<td></td>
<td></td>
<td>X </td>
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
<td>X </td>
<td></td>
<td>X </td>
</tr>
<tr class="odd">
<td><strong>Referendum A</strong></td>
<td></td>
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
<td>For</td>
<td></td>
<td>X </td>
<td></td>
<td>X </td>
<td></td>
<td>X </td>
<td></td>
<td>X </td>
<td></td>
<td>X </td>
</tr>
<tr class="odd">
<td>Against</td>
<td></td>
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
<td><strong>Referendum B</strong></td>
<td></td>
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
<td>For</td>
<td></td>
<td>X </td>
<td></td>
<td>X </td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Against</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>X </td>
<td></td>
<td>X </td>
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
<p><strong>Middleton Community Center</strong></p>
<p><strong>DEM</strong></p>
<p><strong>President of the United States</strong></p>
<p>Anne Neet 3</p>
<p>Ben Baker 2</p>
<p>Write-In 0</p>
<p><strong>United States Senator</strong></p>
<p>Chad Snow 4</p>
<p>Don Etler 1</p>
<p>Write-In 0</p>
<p><strong>Representative in Congress District 12</strong></p>
<p>Eric Sheehy 3</p>
<p>Fiero Finn 1</p>
<p>Write-In 1</p>
<p><strong>State Assembly District 26</strong></p>
<p>Shlomo Archibald 1</p>
<p>Write-In 4</p>
<p><strong>Referendum A</strong></p>
<p>For 4</p>
<p>Against 1</p>
<p><strong>Referendum B</strong></p>
<p>For 4</p>
<p>Against 1</p>
<p><strong>REP</strong></p>
<p><strong>President of the United States</strong></p>
<p>Andre Nina 3</p>
<p>Brent Gilley 2</p>
<p>Write-In 0</p>
<p><strong>United States Senator</strong></p>
<p>Carol Cross 4</p>
<p>David Cox 1</p>
<p>Write-in 0</p>
<p><strong>Representative in Congress District 12</strong></p>
<p>Ernest Snyder 2</p>
<p>Frank L. Matthews 3</p>
<p>Write-In 0</p>
<p><strong>State Assembly District 26</strong></p>
<p>Glenna P Cook-Lincoln 1</p>
<p>Heidi Hatzinger 2</p>
<p>Write-In 2</p>
<p><strong>Referendum A</strong></p>
<p>For 5</p>
<p>Against 0</p>
<p><strong>Referendum B</strong></p>
<p>For 2</p>
<p>Against 3</p>
<p><strong>First Baptist Church</strong></p>
<p><strong>DEM</strong></p>
<p><strong>President of the United States</strong></p>
<p>Anne Neet 3</p>
<p>Ben Baker 2</p>
<p>Write-In 0</p>
<p><strong>United States Senator</strong></p>
<p>Chad Snow 4</p>
<p>Don Etler 1</p>
<p>Write-In 0</p>
<p><strong>Representative in Congress District 12</strong></p>
<p>Eric Sheehy 3</p>
<p>Fiero Finn 1</p>
<p>Write-In 1</p>
<p><strong>State Assembly District 26</strong></p>
<p>Shlomo Archibald 1</p>
<p>Write-In 4</p>
<p><strong>Referendum A</strong></p>
<p>For 4</p>
<p>Against 1</p>
<p><strong>Referendum B</strong></p>
<p>For 4</p>
<p>Against 1</p>
<p><strong>REP</strong></p>
<p><strong>President of the United States</strong></p>
<p>Andre Nina 3</p>
<p>Brent Gilley 2</p>
<p>Write-In 0</p>
<p><strong>United States Senator</strong></p>
<p>Carol Cross 4</p>
<p>David Cox 1</p>
<p>Write-in 0</p>
<p><strong>Representative in Congress District 12</strong></p>
<p>Ernest Snyder 2</p>
<p>Frank L. Matthews 3</p>
<p>Write-In 0</p>
<p><strong>State Assembly District 26</strong></p>
<p>Glenna P Cook-Lincoln 1</p>
<p>Heidi Hatzinger 2</p>
<p>Write-In 2</p>
<p><strong>Referendum A</strong></p>
<p>For 5</p>
<p>Against 0</p>
<p><strong>Referendum B</strong></p>
<p>For 2</p>
<p>Against 3</p>
<p><strong>Cumlative Totals:</strong></p>
<p><strong>DEM</strong></p>
<p><strong>President of the United States</strong></p>
<p>Anne Neet 6</p>
<p>Ben Baker 4</p>
<p>Write-In 0</p>
<p><strong>United States Senator</strong></p>
<p>Chad Snow 8</p>
<p>Don Etler 2</p>
<p>Write-In 0</p>
<p><strong>Representative in Congress District 12</strong></p>
<p>Eric Sheehy 6</p>
<p>Fiero Finn 2</p>
<p>Write-In 2</p>
<p><strong>State Assembly District 26</strong></p>
<p>Shlomo Archibald 2</p>
<p>Write-In 8</p>
<p><strong>Referendum A</strong></p>
<p>For 8</p>
<p>Against 2</p>
<p><strong>Referendum B</strong></p>
<p>For 8</p>
<p>Against 2</p>
<p><strong>REP</strong></p>
<p><strong>President of the United States</strong></p>
<p>Andre Nina 6</p>
<p>Brent Gilley 4</p>
<p>Write-In 0</p>
<p><strong>United States Senator</strong></p>
<p>Carol Cross 8</p>
<p>David Cox 2</p>
<p>Write-in 0</p>
<p><strong>Representative in Congress District 12</strong></p>
<p>Ernest Snyder 4</p>
<p>Frank L. Matthews 6</p>
<p>Write-In 0</p>
<p><strong>State Assembly District 26</strong></p>
<p>Glenna P Cook-Lincoln 2</p>
<p>Heidi Hatzinger 4</p>
<p>Write-In 4</p>
<p><strong>Referendum A</strong></p>
<p>For 18</p>
<p>Against 2</p>
<p><strong>Referendum B</strong></p>
<p>For 12</p>
<p>Against 8</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Criteria For Evaluation of Test Results:</strong></p>
<p>The results of this test will be accepted if the stated election definition can be input into the EMS, the election transferred to the voting machine, voted according to the test vote pattern, and the results reported and audited to match the expected results. During the execution of this election all errors need to be logged and analyzed by qualified personal to determine if the error is an actual error or another issue.</p></td>
</tr>
</tbody>
</table>
