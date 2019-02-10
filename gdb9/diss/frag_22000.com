
memory,600,M

!file,1,frag_22000_optg.int !save integrals file
!file,2,frag_22000_optg.wfu !save wavefunctions to file, as well as geom & grad


geomtype=xyz
geometry = {
   10
 DF-KS-SCF000/VTZ,I=VTZ-PP,SN=VTZ-PP  ENERGY=-355.51617783
 C         -0.2537326406        1.4053934227        0.3470954184
 C         -1.4706671416        0.6396705614        0.5562324261
 O         -1.5313323659       -0.5538821847        0.5827163298
 N          0.0197622790       -3.4921905474       -1.0061738735
 N          0.6359174774       -2.6228107917       -1.2370768408
 C          0.8883179681        0.7781948868        0.1732418525
 N          1.9778282933        0.2120278371        0.2014276318
 H         -0.2771719445        2.4853375752        0.3147434642
 H         -2.3653517473        1.2570017673        0.6770350531
 H          2.3764298122       -0.1087425267       -0.6092414516
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