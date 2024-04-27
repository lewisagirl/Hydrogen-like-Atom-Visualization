function Ylm = SphericalHarmonics(l,m,phi,theta)    %球谐函数

Plm = legendre(l,cos(theta));   %阶数为l的连带勒让德函数
Plm = squeeze(Plm(abs(m)+1,:,:,:));     %阶数为l，级数为m的连带勒让德函数
B = power(-1,m)*sqrt((2*l+1)*factorial(l-abs(m))/(4*pi*factorial(l+abs(m))));    %归一化常数
Ylm = B*Plm.*exp(1i*m*phi);     %球谐函数