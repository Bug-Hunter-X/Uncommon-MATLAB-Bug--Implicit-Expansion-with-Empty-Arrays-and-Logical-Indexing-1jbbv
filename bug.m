function result = myFunction(input)
% This function demonstrates an uncommon MATLAB bug related to implicit expansion
% with logical indexing and empty arrays.

if isempty(input)
  result = []; % Handle the empty input case explicitly
  return;
end

% Incorrect way (leads to the bug):
% logicalIndex = input > 5; 
% result = input(logicalIndex);

% Correct way: handles empty arrays and logical indexing gracefully
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