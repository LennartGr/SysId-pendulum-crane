test = load("importData/squareWave.mat");
test_alt = load("importData/squareWave_alt.mat");

[t, y, u] = extractData(test, "arm");
[t2, y2, u2] = extractData(test_alt, "arm");

plot(t, y, t, y2);

rmse_arm = rmse(y, y2);
disp(rmse_arm);

[t, y, u] = extractData(test, "pendulum");
[t2, y2, u2] = extractData(test_alt, "pendulum");
rmse_pen = rmse(y, y2);
disp(rmse_pen);


function result = rmse(y, yhat)
    result = sqrt(mean((y - yhat).^2)); % Root Mean Squared Error
end

