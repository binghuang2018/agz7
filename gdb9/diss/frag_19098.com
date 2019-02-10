
memory,600,M

!file,1,frag_19098_optg.int !save integrals file
!file,2,frag_19098_optg.wfu !save wavefunctions to file, as well as geom & grad


geomtype=xyz
geometry = {
   12
 DF-KS-SCF000/VTZ,I=VTZ-PP,SN=VTZ-PP  ENERGY=-356.72719938
 C         -1.7988536455       -0.3755861631       -0.2026208274
 N         -0.4043605874       -0.1416094382       -0.5050465082
 C          0.4723272782       -0.8822948982        0.0291213822
 C          1.9414308797       -0.7184892799       -0.2602636721
 O          2.4090628407        0.1771278142       -0.9137145192
 N          1.0666333021        3.3293285265        0.5446000981
 N          0.0435360974        3.0413172269        0.8011440054
 H         -2.3541127113       -0.6162304924       -1.1154778155
 H         -2.2393212971        0.5537504900        0.1763223871
 H         -1.9765976216       -1.1784863089        0.5272375060
 H          0.2367237524       -1.6956267628        0.7326962529
 H          2.6035317125       -1.4932007142        0.1860017106
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