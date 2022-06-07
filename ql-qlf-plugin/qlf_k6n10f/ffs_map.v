// Copyright 2020-2022 F4PGA Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// SPDX-License-Identifier: Apache-2.0

// DFF, no set/reset, no enable
module \$_DFF_P_ (D, C, Q);
    input  D;
    input  C;
    output Q;
    dff _TECHMAP_REPLACE_ (.C(C), .D(D), .Q(Q));
endmodule

module \$_DFF_N_ (D, C, Q);
    input  D;
    input  C;
    output Q;
    dffn _TECHMAP_REPLACE_ (.C(C), .D(D), .Q(Q));
endmodule

// DFF, asynchronous set/reset, enable
module \$_DFFSRE_PNNP_ (C, S, R, E, D, Q);
    input  C;
    input  S;
    input  R;
    input  E;
    input  D;
    output Q;
    dffsre _TECHMAP_REPLACE_ (.Q(Q), .D(D), .C(C), .E(E), .R(R), .S(S));
endmodule

module \$_DFFSRE_NNNP_ (C, S, R, E, D, Q);
    input  C;
    input  S;
    input  R;
    input  E;
    input  D;
    output Q;
    dffnsre _TECHMAP_REPLACE_ (.Q(Q), .D(D), .C(C), .E(E), .R(R), .S(S));
endmodule

// DFF, synchronous set or reset, enable
module \$_SDFFE_PN0P_ (D, C, R, E, Q);
    input  D;
    input  C;
    input  R;
    input  E;
    output Q;
    sdffsre _TECHMAP_REPLACE_ (.Q(Q), .D(D), .C(C), .E(E), .R(R), .S(1'b1));
endmodule

module \$_SDFFE_PN1P_ (D, C, R, E, Q);
    input  D;
    input  C;
    input  R;
    input  E;
    output Q;
    sdffsre _TECHMAP_REPLACE_ (.Q(Q), .D(D), .C(C), .E(E), .R(1'b1), .S(R));
endmodule

module \$_SDFFE_NN0P_ (D, C, R, E, Q);
    input  D;
    input  C;
    input  R;
    input  E;
    output Q;
    sdffnsre _TECHMAP_REPLACE_ (.Q(Q), .D(D), .C(C), .E(E), .R(R), .S(1'b1));
endmodule

module \$_SDFFE_NN1P_ (D, C, R, E, Q);
    input  D;
    input  C;
    input  R;
    input  E;
    output Q;
    sdffnsre _TECHMAP_REPLACE_ (.Q(Q), .D(D), .C(C), .E(E), .R(1'b1), .S(R));
endmodule

// Latch, no set/reset, no enable
module  \$_DLATCH_P_ (input E, D, output Q);
    latch  _TECHMAP_REPLACE_ (.D(D), .Q(Q), .G(E));
endmodule

module  \$_DLATCH_N_ (input E, D, output Q);
    latchn _TECHMAP_REPLACE_ (.D(D), .Q(Q), .G(E));
endmodule

// Latch with async set and reset and enable
module  \$_DLATCHSR_PPP_ (input E, S, R, D, output Q);
    latchsre  _TECHMAP_REPLACE_ (.D(D), .Q(Q), .E(1'b1), .G(E),  .R(!R), .S(!S));
endmodule

module  \$_DLATCHSR_NPP_ (input E, S, R, D, output Q);
    latchnsre _TECHMAP_REPLACE_ (.D(D), .Q(Q), .E(1'b1), .G(E),  .R(!R), .S(!S));
endmodule

