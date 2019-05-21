u1 = input('Enter permeability of medium 1: ');
u2 = input('Enter permeability of medium 2: ');
H1 = input('Enter magnetic field in medium 1: ');
a12 = input('Enter unit vector perpendicular to interface: ');
K = input('Enter current density: ');

HN1 = dot(H1,a12) * a12
HT1 = (((1 - (dot(H1,a12)/norm(H1))^2))^0.5) * H1

HT2 = HT1;
HN2 = (u1*EN1 - K)/u2;
H2 = HN2 + HT2;
display('Electric field vector in medium 2 is : ')
H2
