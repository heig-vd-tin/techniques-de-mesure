x=intx(1000,-1,1)
y=atan(x)
w=where(abs((y-x)/x) le 0.01)
xmin=min(x[w])
xmax=max(x[w])
hardcopy,/open,filename='nonlinearity.ps',/color,bits=2
plot,x,y,/iso,thick=4,xthick=4,ythick=4,charthick=4,charsize=2,xtitle='valeur du mesurande',ytitle='mesure'
oplot,x,y,color=16,thick=8
oplot,x,x,thick=2
oplot,[1,1]*xmin,[-1,1],thick=4,line=2
oplot,[1,1]*xmax,[-1,1],thick=4,line=2
grille,-1,1,3,-1,1,3
hardcopy,/close
$open nonlinearity.ps
