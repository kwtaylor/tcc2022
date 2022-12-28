--{
t=0
C={}T={}
--}
for i=0,32639 do
 --{
 x=i%240-120
 y=i/240-68
 --}
 --{
 C[i]=80/(x*x+y*y+800)^.5
 T[i]=math.atan2(y,x)*5.1
 --}
end
function TIC()
 t=t+.05
 n=t%16
  --if n~=l and (n>8 or n&3<3) and n<13 then
  -- sfx(0,36+N[n<8 and 1 or n%4+1],10)
--{
--{!
  i=n//8*n%4//1+1
  p=t%1<.1 and
      n%4-i+n//13*3<2 and
      sfx(0,36+({4,7,0,2})[i],10)
--      sfx(0,36+({4,7,0,2})[i],10)
--}

 for i=0,32639 do
  if n<8 then
   s=3*math.sin(t+C[i])
   poke4(i,n>7.9 or 
           (s+9*C[i])//1
          ~(s+T[i])//1|4)
  else
   --{
   x=i%240-120-math.sin(t)*120
   y=i/240-68-math.sin(t*3.7)*68
   --}
   p=x*x+y*y<120 and
    poke4(i,peek4(i)+1)
  end
 end
 --}
end
