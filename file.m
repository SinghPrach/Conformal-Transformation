sx = 0.028; % displacement of circle center in real axis.
sy = 0 ; % displacement of circle center in imaginary axis.
s = sx + i*sy; % resultant displacement in the z plane
r = 0.35;
b = r-s;
[x y]= meshgrid(-2:.01:2); % mesh or grid generation in the circle or complex z plane
z = x + i*y;
phi = 0:.05:2*pi; %% JOUKOWSKI MAPPING FUNCTION
for p = 1:length(phi)

 zcirc(p) = r*(cos(phi(p))+1i*sin(phi(p))) + s;
 zair(p) = -zcirc(p)+b^2./(-zcirc(p));
end
figure(1)
hold on
fill(real(zcirc),imag(zcirc),'g')
axis equal
axis(1.5*[-1 1 -1 1])
title('Cylinder.');
figure(2)
hold on
fill(real(zair),imag(zair),'g')
axis equal
axis(1.5*[-1 1 -1 1])
title('Mapped airfoil. ');