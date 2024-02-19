\m4_TLV_version 1d: tl-x.org
\m4
   
   // =================================================
   // Welcome!  New to Makerchip? Try the "Learn" menu.
   // =================================================s
   
   //use(m4-1.0)   /// uncomment to use M5 macro library.
\SV
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   $reset = *reset;
   
   $num[31:0] = $reset ? 1 : (>>1$num + >>2$num);
   
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule

