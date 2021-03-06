function [l, r] = binSearch(as, c)
% Binary search in an increasing array.
%
% Remark
%   The array could contain duplicated elements.
%
% Example 1 (Found)
%   Input:  as = [1 1 3 4 4 10 19], c = 4
%   Call:   [l, r] = binSearch(as, c)
%   Output: l = 4, r = 5
%
% Example 2 (Not found)
%   Input:  as = [1 1 3 4 4 10 19], c = 100
%   Call:   [l, r] = binSearch(as, c)
%   Output: l = 0, r = 0
%
% Input
%   as      -  increasing array, 1 x n
%   c       -  value to match
%
% Output
%   l       -  left boundary
%   r       -  right boundary
%
% History
%   create  -  Feng Zhou (zhfe99@gmail.com), 07-15-2014
%   modify  -  Feng Zhou (zhfe99@gmail.com), 07-15-2014

% dimension
n = length(as);

% search for the left boundary
i = 1;
j = n;
while i < j
    k = floor((i + j) / 2);
    if as(k) < c
        i = k + 1;
    else
        j = k;
    end
end
if as(i) == c
    l = i;
else
    l = 0;
    r = 0;
    return;
end

% search for the right boundary
i = l;
j = n - 1;
while i < j
    k = floor((i + j) / 2);
    if as(k) <= c
        i = k + 1;
    else
        j = k;
    end
end
if as(i) == c
    r = i;
else
    r = i - 1;
end
