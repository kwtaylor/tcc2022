TIC=load"t=t-.02 for i=1,14 do a=t+i/3z=3+s(t*5+a)x=8+z*s(a+8)y=4+z*s(a)print(M:sub(i,i),15*x,15*y,1,0,2)end for i=0,4e4 do x=i%w y=i/w pix(w,y,0)pix(x,y,pix(x+1,y)-1)end"M="MERRY XMAS!!!!"t=0w=239s=math.sin
for i=3,47 do
poke(16320+i,s(i*2.075+1)*255)end
