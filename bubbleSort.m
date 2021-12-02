function vout = bubbleSort(v)
% Jonathon Vasilak
% This function will take a previously determined vector and then
% reorganized the vector so the numbers are listed in ascending order.

% Defines the parameters necessary to organize the vector
vout = v;
lth = length(vout);

% This part of the program utilizes two for loops to organize the numbers,
% the inner loop goes through the entire vector once and reorganizes
% numbers that are next to one another, to ensure numbers can be moved
% across the entire vector, the outer for loop will run the inner loop the
% minimum number of times for the far left value to move to the far right side
% of the vector
for iN = 1:lth
    for i = 1:lth-1
        if vout(i) > vout(i+1)
           placeholder = vout(i+1);
           vout(i+1) = vout(i); 
           vout(i) = placeholder;
        end
    end
end
