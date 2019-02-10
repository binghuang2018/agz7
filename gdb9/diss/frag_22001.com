
memory,600,M

!file,1,frag_22001_optg.int !save integrals file
!file,2,frag_22001_optg.wfu !save wavefunctions to file, as well as geom & grad


geomtype=xyz
geometry = {
    9
 DF-KS-SCF000/VTZ,I=VTZ-PP,SN=VTZ-PP  ENERGY=-375.41469277
 C         -0.1294525832        1.4966434937        0.0346226964
 C         -1.1823760751        0.6082722444       -0.4259691424
 O         -1.0152502515       -0.5556459656       -0.6982666333
 N          0.3758507443       -3.8093735222       -0.9495048087
 N          1.1382069853       -3.0329966645       -0.8555110338
 C          1.1041659826        1.0308739068        0.1834234571
 O          2.1704657628        0.6231814551        0.3095130152
 H         -0.3003040669        2.5363688112        0.2651363951
 H         -2.1613064982        1.1026762409       -0.5093624256
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