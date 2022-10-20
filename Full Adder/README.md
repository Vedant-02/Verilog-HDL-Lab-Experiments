# Full Adder
## Introduction
The full adder can perform addition of 3 single binary digits and give sum and carry as output. A full adder can be constructed with the help of 2 half adders and 1 OR gate.

## Truth table

<table class="tg" align="center">
<thead>
  <tr>
    <th class="tg-0lax" colspan="3">Inputs </th>
    <th class="tg-baqh" colspan="2">Outputs</th>
  </tr>
</thead>
<tbody align="center">
  <tr>
    <td class="tg-0lax">x</td>
    <td class="tg-baqh">y</td>
    <td class="tg-baqh">z</td>
    <td class="tg-baqh">sum bit</td>
    <td class="tg-baqh">carry bit</td>
  </tr>
  <tr>
    <td class="tg-0lax">0</td>
    <td class="tg-baqh">0</td>
    <td class="tg-baqh">0</td>
    <td class="tg-baqh">0</td>
    <td class="tg-baqh">0</td>
  </tr>
  <tr>
    <td class="tg-0lax">0</td>
    <td class="tg-baqh">0</td>
    <td class="tg-baqh">1</td>
    <td class="tg-baqh">1</td>
    <td class="tg-baqh">0</td>
  </tr>
  <tr>
    <td class="tg-0lax">0</td>
    <td class="tg-baqh">1</td>
    <td class="tg-baqh">0</td>
    <td class="tg-baqh">1</td>
    <td class="tg-baqh">0</td>
  </tr>
  <tr>
    <td class="tg-0lax">0</td>
    <td class="tg-baqh">1</td>
    <td class="tg-baqh">1</td>
    <td class="tg-baqh">0</td>
    <td class="tg-baqh">1</td>
  </tr>
  <tr>
    <td class="tg-0lax">1</td>
    <td class="tg-baqh">0</td>
    <td class="tg-baqh">0</td>
    <td class="tg-baqh">1</td>
    <td class="tg-baqh">0</td>
  </tr>
  <tr>
    <td class="tg-0lax">1</td>
    <td class="tg-baqh">0</td>
    <td class="tg-baqh">1</td>
    <td class="tg-baqh">0</td>
    <td class="tg-baqh">1</td>
  </tr>
  <tr>
    <td class="tg-0lax">1</td>
    <td class="tg-baqh">1</td>
    <td class="tg-baqh">0</td>
    <td class="tg-baqh">0</td>
    <td class="tg-baqh">1</td>
  </tr>
  <tr>
    <td class="tg-0lax">1</td>
    <td class="tg-baqh">1</td>
    <td class="tg-baqh">1</td>
    <td class="tg-baqh">1</td>
    <td class="tg-baqh">1</td>
  </tr>
</tbody>
</table>

## Schematic and Realization of full adder

<p align="center">
<img src="https://circuitdigest.com/sites/default/files/projectimage_tut/Full-Adder-Circuit.png"><br>
<a href="https://circuitdigest.com/sites/default/files/projectimage_tut/Full-Adder-Circuit.png"><i>(Image Source)</i></a>
</p>
