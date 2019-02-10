
memory,600,M

!file,1,frag_08574_optg.int !save integrals file
!file,2,frag_08574_optg.wfu !save wavefunctions to file, as well as geom & grad


geomtype=xyz
geometry = {
   10
 DF-KS-SCF000/VTZ,I=VTZ-PP,SN=VTZ-PP  ENERGY=-355.51071465
 C          2.1208327561       -0.6839428378        0.0440117216
 C          0.8209179644       -0.7844980511       -0.0991459852
 N         -0.3610816542       -0.8953242009       -0.2498034672
 C         -1.7120698078       -0.9162299227       -0.1275800468
 O         -2.4293243722        0.0529943949       -0.1118514298
 N         -1.2323565815        3.5892616902        0.2817784124
 N         -0.4221017768        2.8610572280        0.1262967375
 H          2.7250339760       -1.5440818885        0.2371888466
 H          2.5851777497        0.2710371823       -0.0253048234
 H         -2.0950282237       -1.9502736045       -0.0755899756
}


basis={default=vtz
I=vtz-pp
Sn=vtz-pp

set,jkfit,context=jkfit
default=vqz
I=def2-qzvpp
Sn=def2-qzvpp

}

{df-ks,b3lyp,df_basis=jkfit}
{optg;hessian,numerical=0}
---