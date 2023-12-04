
dataset= readtable('/Users/lynnxt/Desktop/LOB_data.csv');
dataset
% caculate mid_price
dataset.mid_price = (dataset.ask_price + dataset.bid_price) / 2;

% ask_price 和 bid_price
windowSize = 10; 
numFeatures = 2 * windowSize; 
numObservations = height(dataset) - windowSize;
features = zeros(numObservations, numFeatures);
labels = zeros(numObservations, 1);

for i = 1:numObservations
    askPrices = dataset.ask_price(i:i+windowSize-1);
    bidPrices = dataset.bid_price(i:i+windowSize-1);
    % 
    features(i, :) = [askPrices', bidPrices'];
    %
    labels(i) = dataset.mid_price(i + windowSize);
end

% train and test
cv = cvpartition(numObservations, 'HoldOut', 0.2);
X_train = features(cv.training, :);
Y_train = labels(cv.training);
X_test = features(cv.test, :);
Y_test = labels(cv.test);

% svm
svmModel = fitrsvm(X_train, Y_train, 'Standardize', true, 'KernelFunction', 'gaussian');

% test to predict
Y_pred = predict(svmModel, X_test);

% mse
mse = mean((Y_test - Y_pred).^2);
fprintf('Mean Squared Error: %.4f\n', mse);

% visualization
figure;
plot(Y_test, 'b');
hold on;
plot(Y_pred, 'r');
legend('Actual', 'Predicted');
xlabel('Observation');
ylabel('Mid Price');
title('Actual vs Predicted Mid Prices');
