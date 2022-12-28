s=math.sin
t=0
function TIC()
for i=0,240*136 do
x=i%240
y=i//240
j=x/10
k=y/10
c=s(j+k*s(k+s(j/3+t/3)+t/4)+t/5)+s(j*k/10+t/6)
pix(x,y,c*3)
end
t=t+.2
end
