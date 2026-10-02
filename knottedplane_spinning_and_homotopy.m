(* ::Package:: *)

(* ::Input:: *)
(*ClearAll;*)
(*(* Polynomial parameterization of the long knot K given by (f(t), g(t), h(t))*)*)
(*f[t_]=(t^3-3t);*)
(*g[t_]=t^5-10t;*)
(*h[t_]=-(t^4-13t^2)+20;*)
(**)
(*H[t_]:=-(t^4-4t^2)+3;*)
(*NRoots[H[t],t]*)
(*Show[ParametricPlot3D[{t^3-3t,t^5-10t,H[t] },{t,-2.1554,2.1554}],Graphics3D[InfinitePlane[{2,-2,0},{{2,2,0},{-2,2,0}}]],PlotRange->Full]*)


(* ::Input:: *)
(*(*Knotted disc D bounded by K # K^* in s in [0,Pi]*)*)
(*P1=ParametricPlot3D[{(t^3-3t),H[t]* Sin[s],H[t] *Cos[s]},{t,-2.1554,2.1554},{s,0,Pi},PlotStyle->Directive[RGBColor[1.,0.67,0.5],Opacity[0.9]],Exclusions->None,PlotRange->Full,Boxed->False,Axes->False]*)


(* ::Input:: *)
(*(*P_K* for s in [-R,0]*)P2=ParametricPlot3D[{(t^3-3t)-s,s,H[t] +s^2*t},{t,-2.1554,2.1554},{s,-3,0},PlotStyle->Directive[RGBColor[0.42,0.64,1.],Opacity[0.9]],Exclusions->None,PlotRange->Full,Boxed->False,Axes->False];*)
(**)
(*(*P_K^*  s in [-0,R]*)*)
(*P3=ParametricPlot3D[{(t^3-3t)+s-Pi,-(s-Pi),-H[t] +(s-Pi)^2*t},{t,-2.1554,2.1554},{s,Pi,Pi+3},PlotStyle->Directive[RGBColor[0.33,0.98,0.],Opacity[0.9]],Exclusions->None,PlotRange->Full,Boxed->False,Axes->False];*)
(*(*Annulus A in [*)*)
(*Show[P1,P2,P3, PlotRange->Full,ViewPoint->{0,0,\[Infinity]}]*)
(**)


(* ::Input:: *)
(*(*Knotted plane using homotopy from a long trefoil*)*)
(*ParametricPlot3D[{f[t]+s,g[t]+s,s},{t,-2.5,2.5},{s,-10,10},Mesh->15,MeshStyle->Directive[RGBColor[0.74`,0.`,0.24`],Opacity[0.464`],AbsoluteThickness[0.3]],PlotStyle->Opacity[0.8],ImageSize->Large,Boxed->False,Axes->False,PlotRange->Full]*)
(*ParametricPlot3D[{f[t]+s,g[t]+s,s},{t,-5.5,5.5},{s,-60,60},Mesh->15,MeshStyle->Directive[RGBColor[0.74`,0.`,0.24`],Opacity[0.464`],AbsoluteThickness[0.3]],PlotStyle->Opacity[0.7],ImageSize->Large,Boxed->False,Axes->False,PlotRange->Full]*)
