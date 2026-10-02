(* ::Package:: *)

(* ::Input::Initialization:: *)
Z[t_]:= -3+13 t^2-7 t^4+t^6; (* Z corodinate of the trefoil knot*)
NRoots[-3+13 t^2-7 t^4+t^6,t]
Plot[Z[x],{x,-3,2.2}] 


(* ::Input::Initialization:: *)


G1[t_]:=-(t+2)(t+1.8)(t+1)t(t-1)(t-1.8)(t-2)+10; (* changing Z[t] to a G[t] that keps the knot in the upper half pace*)
NRoots[G1[t],t]
Plot[G1[x],{x,-3,2.2}]


(* ::Input::Initialization:: *)
(*trefoil knot in upper half space with one end goig to infinity and other end on the boundary plane*)Show[Graphics3D[Tube[Table[{t^3-3t,t^4-4t^2,G1[t]},{t,-2.2,2.19,0.01}],0.1],Boxed->True,Axes->False,AxesLabel->{X,Y,Z},PlotRange->{All,All,All}],Graphics3D[InfinitePlane[{2,-2,0},{{2,2,0},{-2,2,0}}]]]



(* ::Input::Initialization:: *)
(*knotted plane in the interval [\[Minus]2.27,2.18705]*)ParametricPlot3D[{(t^3-3t),G1[t]Cos[s],G1[t]Sin[s]},{t,\[Minus]2.27,2.18705},{s,0, 2Pi},PlotStyle->Opacity[1],ColorFunction->"Monochrome",Mesh->Full,MeshStyle->{Black},PlotRange->Full,AxesLabel->{x,y,z},Boxed->False,Axes->False]
ParametricPlot3D[{(t^3-3t),G1[t]Cos[s],G1[t]Sin[s]},{t,\[Minus]2.27,2.18705},{s,0, 3Pi/2},PlotStyle->Opacity[1],ColorFunction->"Monochrome",Mesh->Full,MeshStyle->{Black},PlotRange->Full,AxesLabel->{x,y,z},Boxed->False,Axes->False]



(* ::Input:: *)
(**)
