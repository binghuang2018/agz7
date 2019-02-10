
memory,600,M

geomtype=xyz
geometry = {
...
}


basis={default=vtz

set,jkfit,context=jkfit
default=vqz
}


{df-ks,b3lyp,df_basis=jkfit}
{optg}
---
