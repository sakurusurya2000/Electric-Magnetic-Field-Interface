e1 = input('Enter permittivity of medium 1: ');
e2 = input('Enter permittivity of medium 2: ');
E1 = input('Enter electric field in medium 1: ');
a12 = input('Enter unit vector perpendicular to interface: ');
ps = input('Enter charge density: ');

EN1 = dot(E1,a12) * a12
ET1 = (((1 - (dot(E1,a12)/norm(E1))^2))^0.5) * E1

ET2 = ET1;
EN2 = (e1*EN1 - ps)/e2;
E2 = EN2 + ET2;
display('Electric field vector in medium 2 is :')
E2
