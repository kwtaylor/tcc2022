s=math.sin
w=240
t=0
function TIC()
for i=0,4e4 do
x=i%w
y=i//w
c=s(x/20+y/20+t/20)+s(x*y/1000+s(t/50)*6)
pix(x,y,c*2+12)
end
t=t+1
end
