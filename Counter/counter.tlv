\TLV_version 1d: tl-x.org
\SV

\TLV
   $reset = *reset;
   
   //$num[31:0] = $reset ? 1 : (>>1$num + >>2$num);
   
   $cnt[15:0] = $reset ? 20 : (>>1$cnt + 1);
   
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule

