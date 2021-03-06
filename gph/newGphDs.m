function gphs = newGphDs(Pts, parGph)
% Connect nodes to generate edges.
%
% Input
%   Pts     -  graph node, 1 x mG (cell), d x ni
%   parGph  -  parameter for computing the adjacency matrix
%              see gphEg.m for more details
%
% Output
%   gphs    -  graph, 1 x mG (cell)
%
% History
%   create  -  Feng Zhou (zhfe99@gmail.com), 08-11-2011
%   modify  -  Feng Zhou (zhfe99@gmail.com), 05-10-2013

% dimension
mG = length(Pts);

% per graph
gphs = cell(1, mG);
for iG = 1 : mG
    gphs{iG} = newGphD(Pts{iG}, parGph);
end
