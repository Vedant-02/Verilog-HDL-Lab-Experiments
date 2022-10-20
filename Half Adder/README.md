# Half Adder
## Introduction
Half adder is a combinational arithmetic circuit that adds two numbers ( a , b ) and produces a sum bit ( s ) and carry bit ( c ) as the output. This directory contains implementation of half adder circuit using verilog for 2 inputs a and b.

## Truth Table

<table align="center">
<thead>
  <tr>
    <th colspan="2">Inputs</th>
    <th colspan="2">Outputs</th>
  </tr>
</thead>
<tbody align="center">
  <tr>
    <td><b>a</b></td>
    <td><b>b</b></td>
    <td><b>sum bit</b></td>
    <td><b>carry bit</b></td>
  </tr>
  <tr>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
  </tr>
  <tr>
    <td>0</td>
    <td>1</td>
    <td>1</td>
    <td>0</td>
  </tr>
  <tr>
    <td>1</td>
    <td>0</td>
    <td>1</td>
    <td>0</td>
  </tr>
  <tr>
    <td>1</td>
    <td>1</td>
    <td>0</td>
    <td>1</td>
  </tr>
</tbody>
</table>

From the above table we can infer that: 

 - sum is a XOR b <br>
`assign s = a^b;`
 - carry is a AND b <br>
 `assign c = a&b;`

## Schematic and Realization of half adder

<p align="center">
<img src="https://circuitdigest.com/sites/default/files/projectimage_tut/Half-Adder-Circuit-and-Its-Construction.png"><br>
<a href="https://circuitdigest.com/sites/default/files/projectimage_tut/Half-Adder-Circuit-and-Its-Construction.png"><i>(Image Source)</i></a>
</p>
