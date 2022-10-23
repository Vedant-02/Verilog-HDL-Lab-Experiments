# Priority Encoder
## Introduction
A priority encoder is a circuit or algorithm that compresses multiple binary inputs into a smaller number of outputs. The output of a priority encoder is the binary representation of the index of the most significant activated line, starting from zero. They are often used to control interrupt requests by acting on the highest priority interrupt input.

A 4 to 2 priority encoder has 4 inputs : Y3, Y2, Y1 & Y0 and 2 outputs : A1 & A0. Here, the input, Y3 has the highest priority, whereas the input, Y0 has the lowest priority. In this case, even if more than one input is ‘1’ at the same time, the output will be the (binary) code corresponding to the input, which is having higher priority.

## Truth Table

<table align="center">
<thead>
  <tr>
    <th colspan="4">Inputs</th>
    <th colspan="2">Outputs</th>
  </tr>
</thead>
<tbody align="center">
  <tr>
    <td><b>Y3</b></td>
    <td><b>Y2</b></td>
    <td><b>Y1</b></td>
    <td><b>Y0</b></td>
    <td><b>A1</b></td>
    <td><b>A0</b></td>
    
  </tr>
  <tr>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>x</td>
    <td>x</td>
    
  </tr>
  <tr>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>1</td>
    <td>0</td>
    <td>0</td>
    
  </tr>
  <tr>
    <td>0</td>
    <td>0</td>
    <td>1</td>
    <td>x</td>
    <td>0</td>
    <td>1</td>
    
  </tr>
  <tr>
    <td>0</td>
    <td>1</td>
    <td>x</td>
    <td>x</td>
    <td>1</td>
    <td>0</td>
    
  </tr>
  <tr>
    <td>1</td>
    <td>x</td>
    <td>x</td>
    <td>x</td>
    <td>1</td>
    <td>1</td>
    
  </tr>
</tbody>
</table>

From the above truth table we can infer that:


 - A0 is <br>
`assign A0 = Y2(bar).Y1+Y3;`
 - A1 is <br>
 `assign A1 = Y2+Y3;`


## Schematic of priority encoder


![Encoder-4x2](https://user-images.githubusercontent.com/106529748/197395952-67e60f22-ae06-4511-b594-e8124a1aaabf.jpg)

IMAGE SOURCE - GFG

## Realization of priority encoder

![Realization](https://user-images.githubusercontent.com/106529748/197395969-e8b5c184-3116-4f23-b20e-903256f83414.jpg)

IMAGE SOURCE - Wikipedia



