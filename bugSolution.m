function result = myFunction(input)
% This function demonstrates the correct way to handle potential empty arrays
% when using logical indexing in MATLAB.

if isempty(input)
  result = []; % Handle the empty input case explicitly
  return;
end

% Correct way to handle logical indexing and empty arrays gracefully
logicalIndex = input > 5;
result = input(logicalIndex);

% Example usage
test1 = [1, 6, 2, 7, 3];
test2 = [];

result1 = myFunction(test1);
result2 = myFunction(test2);

disp(['Result 1: ', num2str(result1)]);
disp(['Result 2: ', num2str(result2)]);
end