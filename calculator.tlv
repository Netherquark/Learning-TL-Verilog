\m4_TLV_version 1d: tl-x.org
\m4
   
   // =================================================
   // Welcome!  New to Makerchip? Try the "Learn" menu.
   // =================================================
   
   BOGUS_USE($op[1:0]);
   
   //use(m4-1.0)   /// uncomment to use M5 macro library.
\SV
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
	/* verilator lint_on WIDTH */
\TLV
   $reset = *reset;
   
   $val1[31:0] = {26'd0, $val1_rand[5:0]};
   $val2[31:0] = {28'd0, $val2_rand[3:0]};
   
   
   $sum[31:0] = $val1[31:0] + $val2[31:0];
   $diff[31:0] = $val1[31:0] - $val2[31:0];
   $prod[31:0] = $val1[31:0] * $val2[31:0];
   $quot[31:0] = $val1[31:0] / $val2[31:0];
   
   $out[31:0] =
      $op[0]
         ? $sum :
      $op[1]
         ? $diff :
      $op[2]
         ? $prod :
      //$op[3]
         $quot;
   
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule

