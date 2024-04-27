function Psi= WaveFunction(n,l,m,Z,r,phi,theta)     %类氢原子波函数

Rnl  = RadialFunction(n,l,Z,r);     %径向波函数
Ylm = SphericalHarmonics(l,m,phi,theta);    %球谐函数
Psi = Rnl.*Ylm;     %氢原子波函数