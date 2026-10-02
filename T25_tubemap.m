(* ::Package:: *)

(* ::Input:: *)
(*(* T(2,5) parametrization*)*)
(*ClearAll;*)
(*x[t_]:=2Cos[2t](3+Cos[5t]) ;*)
(*y[t_]:=2Sin[2t](3+Cos[5t]);*)
(**)
(* z[t_]:=Sin[5t];*)
(*Graphics3D[Tube[Table[{x[t],y[t],z[t]},{t,0,2Pi,0.01}],0.2],Boxed->False,Axes->False,AxesLabel->{X,Y,Z},PlotRange->{All,All,All}]*)
(*ParametricPlot3D[{x[t],y[t],z[t]},{t,0,2Pi},PlotStyle->Thickness[0.01],Axes->True]*)
(**)
(**)


(* ::Input:: *)
(**)
(**)
(*bumpFunction[x_,c_,w_]:=Piecewise[{{Exp[-1/(1-(x-c)^2/w^2)],Abs[x-c]<w}},0](*c=center,w=width*)*)
(*Plot[bumpFunction[x,0,Pi/2],{x,-Pi,Pi},PlotRange->Full,AxesLabel->{"x","B(x,0,Pi/2)"}]*)
(*Sum1[t_]:=Sum[bumpFunction[t,c,Pi/10],{c,11*Pi/10,19*Pi/10,4*Pi/10}];*)
(*Sum2[t_]:=Sum[bumpFunction[t,c,Pi/10],{c,{3*Pi/10,7*Pi/10}}]-Sum[bumpFunction[t,c,Pi/10],{c,{13*Pi/10,17*Pi/10}}];*)
(**)
(**)
(**)
(*Plot[Sum1[t],{t,0,2Pi},PlotRange->Full]*)
(*Plot[Sum2[t],{t,0,2Pi},PlotRange->All]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*(* Tube of T(2,5)*)*)
(*ParametricPlot3D[{x[t],y[t]+(1-Sum1[t])*Cos[u]+8*Sum2[t],y[t]+(1-Sum1[t])*Sin[u]-8*Sum2[t]},{t,0,2Pi},{u,0,2Pi},PlotStyle->Opacity[1],  Exclusions->None,MaxRecursion->5,Boxed->False,Axes->False,Mesh->None]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*(*Local Pictures*)*)
(*(*At welded crossings tubes dont touch*)Show[ParametricPlot3D[{x[t],y[t]+(1-Sum1[t])*Cos[u]+5*Sum2[t],y[t]+(1-Sum1[t])*Sin[u]-5*Sum2[t]},{t,Pi/5,2Pi/5},{u,0,2Pi},PlotStyle->Opacity[1],  Exclusions->None,MaxRecursion->3,Boxed->False,Axes->False,Mesh->None],ParametricPlot3D[{x[t],y[t]+(1-Sum1[t])*Cos[u]+5*Sum2[t],y[t]+(1-Sum1[t])*Sin[u]-5*Sum2[t]},{t,6Pi/5,7Pi/5},{u,0,2Pi},PlotStyle->Opacity[1], Exclusions->None,MaxRecursion->3,Boxed->False,Axes->False,Mesh->None],PlotRange->Full]*)


(* ::Input:: *)
(*(*Local Pictures*)*)
(*(*At classical crossings we will shrink the lower arc*)Show[ParametricPlot3D[{x[t],y[t]+(1-Sum1[t])*Cos[u],y[t]+(1-Sum1[t])*Sin[u]+5*Sum2[t]},{t,2Pi/5,3Pi/5},{u,0,2Pi},PlotStyle->Opacity[1], Exclusions->None,MaxRecursion->3,Boxed->False,Axes->False,Mesh->None],ParametricPlot3D[{x[t],y[t]+(1-Sum1[t])*Cos[u],y[t]+(1-Sum1[t])*Sin[u]+5*Sum2[t]},{t,7Pi/5,8Pi/5},{u,0,2Pi},PlotStyle->Opacity[1],  Exclusions->None,MaxRecursion->3,Boxed->False,Axes->False,Mesh->None],PlotRange->Full]*)
