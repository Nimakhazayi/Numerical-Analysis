function checker(x,y)
% Fit linear model
linearModel = fittype('a * x + b');
linearFit = fit(x', y', linearModel);

% Fit hyperbolic model
hyperbolicModel = fittype('a / (b + x)');
hyperbolicFit = fit(x', y', hyperbolicModel);

% Fit quadratic model
quadraticModel = fittype('a * x^2 + b * x + c');
quadraticFit = fit(x', y', quadraticModel);

% Fit polynomial model
degree = 3; % Set the degree of the polynomial model
polynomialModel = fittype(sprintf('poly%d', degree));
polynomialFit = fit(x', y', polynomialModel);

% Calculate R-squared for linear model
yFitLinear = linearFit(x);
correlationLinear = corrcoef(y, yFitLinear);
rSquaredLinear = correlationLinear(1, 2)^2;

% Calculate R-squared for linear model
ypolynomialFit = polynomialFit(x);
correlationLPolynomial = corrcoef(y, ypolynomialFit);
rSquaredPolynomial = correlationLPolynomial(1, 2)^2;

% Calculate R-squared for hyperbolic model
yFitHyperbolic = hyperbolicFit(x);
correlationHyperbolic = corrcoef(y, yFitHyperbolic);
rSquaredHyperbolic = correlationHyperbolic(1, 2)^2;

% Calculate R-squared for quadratic model
yFitQuadratic = quadraticFit(x);
correlationQuadratic = corrcoef(y, yFitQuadratic);
rSquaredQuadratic = correlationQuadratic(1, 2)^2;


disp('Goodness of Fit (R-squared):');
disp(['Linear: ' num2str(rSquaredLinear)]);
disp(['Hyperbolic: ' num2str(rSquaredHyperbolic)]);
disp(['Quadratic: ' num2str(rSquaredQuadratic)]);
disp(['Polynomial (degree ' num2str(degree) '): ' num2str(rSquaredPolynomial)]);

end