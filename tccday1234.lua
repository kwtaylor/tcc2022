t=0
w=120
h=400
s=math.sin
function TIC()
cls(10)
for i=0,4e4 do
x=i%w
z=x*2
y=i/h-2
line(z,y+1,z+1,y+1,(s(x/5)+s(y/5)+t/10)%4+8)
r=(y+y%12)/w
c=(t-i)%40/10
pix(w+(x-60)*r,y,c+5)
y=y//1-1
if(x~(y-t))%5<1then pix(z,y,12)end
end
rect(0,97,h,h,12)
t=t+1
end
