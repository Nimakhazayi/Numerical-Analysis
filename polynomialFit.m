function coeff = polynomialFit(x, y, m)
    % Construct the least squares polynomial of degree m
    % that fits x and y row or column vectors.

    % Perform polynomial fitting
    coeff = polyfit(x, y, m);

    % Create a polynomial function from the coefficients
    polynomialFunc = @(coeff, x) polyval(coeff, x);

    % Calculate the predicted values using the fitted polynomial
    yFit = polynomialFunc(coeff, x);

    % Display the coefficients
    disp('Polynomial coefficients:');
    disp(coeff);
end
