\TLV_version 1d: tl-x.org
\SV

\TLV
   $reset = *reset;
   
   $val1[31:0] = {30'b0, $random1[3:0]};
   $val2[31:0] = {30'b0, $random2[3:0]};
   $sum[31:0] = $val1[31:0] + $val2[31:0];
   $diff[31:0] = $val1 - $val2;
   $prod[31:0] = $val1 * $val2;
   $quot[31:0] = $val1 / $val2;
   
   $out[31:0] =
      $op == 2'b00 ? $sum :
      $op == 2'b01 ? $diff :
      $op == 2'b10 ? $prod :
                     $quot;
   
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
