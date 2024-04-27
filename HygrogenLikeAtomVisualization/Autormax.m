function rmax  = Autormax(n,l,Z,threshold)

rmax = 100;

while 1
    r = 0:rmax;
    Rnl = RadialFunction(n,l,Z,r);
    Rnl = Rnl/max(Rnl);
    if abs(Rnl(end)) < threshold/2
        break
    else
        rmax = 2*rmax;
    end
end

rmax = find(abs(Rnl)>=threshold, 1, 'last');