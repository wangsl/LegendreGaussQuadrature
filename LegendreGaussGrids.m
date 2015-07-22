
function [ x, w ] = LegendreGaussGrids(n)

grids_file = strcat('/home/wang/matlab/LegendreGaussQuadrature/', int2str(n), ...
		    '-LegendreGauss.grids');

if ~exist(grids_file, 'file'); 
  error(' Grids file %s does not exist', grids_file);
end

xw = load(grids_file, '-ascii');

x = zeros(n, 1);
w = zeros(n, 1);

m = floor(n/2);

if m+m == n 
  x(1:m) = -xw(end:-1:1, 1);
  w(1:m) = xw(end:-1:1, 2);
else
  x(1:m) = -xw(end:-1:2, 1);
  w(1:m) = xw(end:-1:2, 2);
end

x(m+1:n) = xw(:, 1);
w(m+1:n) = xw(:, 2);

