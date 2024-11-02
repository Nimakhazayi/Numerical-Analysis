x = [1365 1375 1385 1395];
y = [49445010 60055488 70495782 79926270];

checker(x,y);

coeff = polynomialFit(x,y,3);
for t= 1365:1415
p = (coeff(1) * (t^3)) + (coeff(2) * (t^2)) + (coeff(3) *(t^1)) + (coeff(4));
disp(['Predicted population in ' num2str(t) ' : ' num2str(p)]);
end