
memory,600,M

!file,1,frag_21588_optg.int !save integrals file
!file,2,frag_21588_optg.wfu !save wavefunctions to file, as well as geom & grad


geomtype=xyz
geometry = {
    8
 DF-KS-SCF000/VTZ,I=VTZ-PP,SN=VTZ-PP  ENERGY=-391.38068681
 C          1.0344242596       -1.4244777098        0.0142168075
 C          1.5350353608       -0.1809444415       -0.0033145211
 O          1.7599395701        0.9334304064       -0.0189406173
 N         -1.7044379311        2.6833217104       -0.0403570558
 N         -2.7909786353        2.5086054827        0.0168289835
 O         -1.0877185690       -0.6023533417       -0.0115898437
 N         -0.3862355986       -1.5951380081        0.0089454517
 H          1.6399715434       -2.3224440984        0.0342107852
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