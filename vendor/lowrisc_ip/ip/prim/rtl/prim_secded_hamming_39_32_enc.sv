// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// SECDED Encoder generated by
// util/design/secded_gen.py -m 7 -k 32 -s 390368410 -c hamming

module prim_secded_hamming_39_32_enc (
  input        [31:0] in,
  output logic [38:0] out
);

  always_comb begin : p_encode
    out = 39'(in);
    out[32] = ^(out & 39'h0056AAAD5B);
    out[33] = ^(out & 39'h009B33366D);
    out[34] = ^(out & 39'h00E3C3C78E);
    out[35] = ^(out & 39'h0003FC07F0);
    out[36] = ^(out & 39'h0003FFF800);
    out[37] = ^(out & 39'h00FC000000);
    out[38] = ^(out & 39'h3FFFFFFFFF);
  end

endmodule : prim_secded_hamming_39_32_enc
