(* ::Package:: *)

(* ::Input:: *)
(*ClearAll;*)
(*f[t_]:=2(t^2-7)(t^2-10)t/5;*)
(*g[t_]:=t(t^2-4)(t^2-9)(t^2-12)/10;*)
(*h[t_]:=-(t^4-13t^2)+50;*)
(*NRoots[h[t],t]*)
(*Plot[h[t],{t,-4.19,4.19}]*)
(**)


(* ::Input:: *)
(*Graphics3D[Tube[Table[{f[t],g[t],h[t]},{t,-4.01306,4.01306,0.05}],0.2],Boxed->True,Axes->True,AxesLabel->{X,Y,Z},PlotRange->{All,All,All}]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*Show[Graphics3D[Tube[Table[{f[t],g[t],h[t]},{t,-4.01306,4.01306,0.005}],0.2],Axes->True,AxesLabel->{X,Y,Z}],Graphics3D[{Thickness[0.007],Line[{{f[-3.7],g[-3.7],h[-3.7]},{f[3.7],g[3.7],h[3.7]}}]}],Graphics3D[InfinitePlane[{2,-2,0},{{2,2,0},{f[4.01306],g[4.01306],0}}]],ViewPoint->Front]*)
(**)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*(*Rotating about the line L joining the points (f[-3.7],g[-3.7],h[-3.7]) and (f[3.7],g[3.7],h[3.7]) on the knotted arc ,using Rodrigue's formula*)*)
(*Clear[t,s];*)
(*L=Graphics3D[{Thickness[0.001],InfiniteLine[{{f[-3.7],g[-3.7],h[-3.7]},{f[3.7],g[3.7],h[3.7]}}]}];(*axis of rotation*)*)
(*P=Graphics3D[InfinitePlane[{f[-2],g[-2],0},{{f[2],g[2],0},{f[4.01306],g[4.01306],0}}]];(*xy plane *)*)
(**)
(*Nr=Sqrt[g[3.7]^2+f[3.7]^2];*)
(*f1[t_,s_]=(1-(1-Cos[s])g[3.7]^2/Nr^2)f[t]+(1-Cos[s])f[3.7]g[3.7]g[t]/Nr^2+(h[t]-h[3.7])Sin[s]g[3.7]/Nr;*)
(*g1[t_,s_]=(1-Cos[s])f[3.7]g[3.7]f[t]/Nr^2+(1-(1-Cos[s])f[3.7]^2/Nr^2)g[t]-(h[t]-h[3.7])Sin[s]f[3.7]/Nr;*)
(*h1[t_,s_]=-Sin[s]g[3.7]h[3.7]f[t]/Nr+Sin[s]f[3.7]h[3.7]g[t]/Nr+h[3.7](1-Cos[s])+Cos[s]h[t];*)
(**)
(*Show[Graphics3D[{Black,Tube[Table[{f[t],g[t],h[t]},{t,-4.01306,4.01306,0.005}],0.3]},Axes->False,Boxed->False,AxesLabel->{X,Y,Z}],ParametricPlot3D[{f1[t,s],g1[t,s],h1[t,s]},{t,-4.01306,4.01306},{s,0,2Pi},Axes->False,AxesLabel->{X,Y,Z},ViewPoint->Left,MeshStyle->None,Exclusions->None,MaxRecursion->6,PlotStyle->Opacity[0.6],Boxed->False,ImageSize->Large],L,P,PlotRange->Full]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*(*Constructing Bump Function : 1 in [-3.6,3.6], 0 in [-4.01306,-3.7] and [3.7,4.01306] and in (0,1) otherwise*)*)
(*F1[t_]=Piecewise[{{Exp[-1/t],t>=0},{0,t<=0}}];*)
(*B[t_]=F1[12-t^2]/(F1[12-t^2]+F1[t^2-10]);*)
(*Plot[{B[t]},{t,-4.01306,4.01306}]*)


(* ::Input:: *)
(*(*Using Bump function to restrict the rotation in [-2.19,2.19] *)*)
(*f2[t_,s_]=f1[t,s]B[t]+f[t](1-B[t]);*)
(*g2[t_,s_]=g1[t,s]B[t]+g[t](1-B[t]);*)
(*h2[t_,s_]=h1[t,s]B[t]+h[t](1-B[t]);*)
(*Show[ParametricPlot3D[{f2[t,s],g2[t,s],h2[t,s]},{t,-4.01306,4.01306},{s,0,2Pi},Exclusions->None,MaxRecursion->6,PlotRange->Full,Boxed->False,Axes->False],P,ViewPoint->Right,ImageSize->Full]*)


(* ::Input:: *)
(*(*Spinning about xy plane*)*)
(*k=2;(*twisting k times*)*)
(**)
(*ParametricPlot3D[{f2[t,k*s],h2[t,k*s]Cos[s],h2[t,k*s]Sin[s]},{t,-4.01306,4.01306},{s,0,2Pi},ViewPoint->Top,MeshStyle->Red,Exclusions->None,MaxRecursion->6,PlotStyle->Opacity[0.7],ImageSize->Large,Boxed->False,Axes->False,PlotRange->Full]*)
(**)


(* ::Input:: *)
(*s1=0;s2=5Pi/4;(*angle of spinning from s1 to s2*)Show[ParametricPlot3D[{f2[t,k*s],h2[t,k*s]Cos[s],h2[t,k*s]Sin[s]},{t,-4.01306,4.01306},{s,s1,s2},ViewPoint->Left,Exclusions->None,MaxRecursion->6,PlotStyle->Opacity[0.7],MeshStyle->Red,ImageSize->Large,Boxed->False,Axes->False,PlotTheme->"Minimal"],ParametricPlot3D[{f2[t,k*s1 ],h2[t,k*s1]Cos[s1],h2[t,k*s1]Sin[s1]},{t,-4.01306,4.01306},ViewPoint->Left,Exclusions->None,MaxRecursion->6,PlotStyle->Opacity[0.6],ImageSize->Large,Boxed->False,Axes->False,PlotTheme->"Monochrome"],ParametricPlot3D[{f2[t,k*s2 ],h2[t,k*s2]Cos[s2],h2[t,k*s2]Sin[s2]},{t,-4.01306,4.01306},ViewPoint->Left,Exclusions->None,MaxRecursion->6,ImageSize->Large,Boxed->False,Axes->False,PlotTheme->"Monochrome"]]*)
(**)
