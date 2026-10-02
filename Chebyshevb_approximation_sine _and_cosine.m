(* ::Package:: *)

(* ::Input:: *)
(*ClearAll;*)
(*d=1; *)
(*n1=8;(* degree of chebyshev polynomial for cos[du]*)*)
(*n2=8; (* degree of chebyshev polynomial for sin[du]*)*)
(*a=0;b=2Pi; (*Interval for approximation*)*)
(*nd[k_]:=N[(a+b)/2+(b-a)/2*Cos[(2 k-1) Pi/(2 n1+2)]];*)
(*nd2[k_]:=N[(a+b)/2+(b-a)/2*Cos[(2 k-1) Pi/(2 n2+2)]];*)
(*xk=Array[nd,n1+1];*)
(**)
(*g[u_]:=Cos[d*u];*)
(*h[u_]:=Sin[d*u];*)
(*yk1=g[xk];*)
(*yk2=h[xk];*)


(* ::Input:: *)
(*cof1[j_]:=2*Sum[yk1[[k]]*Cos[j*(2 k-1) Pi/(2 n1+2)],{k,1,n1+1}]/(n1+1);*)
(*cof2[j_]:=2*Sum[yk2[[k]]*Cos[j*(2 k-1) Pi/(2 n1+2)],{k,1,n1+1}]/(n1+1);*)
(*Co1=(Sum[yk1[[k]],{k,1,n1+1}])/(n1+1);*)
(*Co2=(Sum[yk2[[k]],{k,1,n1+1}])/(n1+1);*)
(**)


(* ::PageBreak:: *)
(**)


(* ::Input:: *)
(*cappx[x_]:=Co1+Sum[cof1[k]*ChebyshevT[k,x],{k,1,n1}];*)
(*Sappx[x_]:=Co2+Sum[cof2[k]*ChebyshevT[k,x],{k,1,n1}];*)
(**)
(*Plot[{g[s],cappx[(s-(a+b)/2)/((b-a)/2)]},{s,-2,2Pi+2},PlotLegends->{g[s],"C(s)"}]*)
(*Plot[{h[s],Sappx[(s-(a+b)/2)/((b-a)/2)]},{s,-2,2Pi+2},PlotLegends->{h[s],"S(s)"}]*)
