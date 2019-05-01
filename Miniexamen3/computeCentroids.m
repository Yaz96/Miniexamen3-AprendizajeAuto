function centroids = computeCentroids(X, idx, K)
%Clemente Yanez Contreras A00817427
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
 


for cen = 1 :  K %iteracion atravez de cada centroide
  contador = 0;
  sumadorCentro = [0 ,0];
  for it = 1 : m % iteracion atravez de cada instancia
    
    if idx(it,1) == cen 
      contador = contador +1 ;
      sumadorCentro(1) =  sumadorCentro(1) + X(it,1) ;
      sumadorCentro(2) =  sumadorCentro(2) + X(it,2) ;
    endif
  endfor
  centroids(cen,1) = sumadorCentro(1)/contador;
  centroids(cen,2) = sumadorCentro(2)/contador;
endfor







% =============================================================


end

