function [lg] = linearReg_simple(x,y)
%% [lg] = linearReg(x,y)
%
%  This function calculates the coefficients of a simple inear regression 
%  between signals x,y with
%
%  y = lg(1)*x + lg(2);
%
%  same result as polyfit(x,y,1)
%
%  This is 10x faster then polyfit 
%  but exactly same result !
%
%
%   created by: 
%        Johannes Becherer
%        Wed Nov 13 11:29:57 PST 2019

% remove nans

   ii_nnan = ~isnan(x) & ~isnan(y);
   x = x(ii_nnan);
   y = y(ii_nnan);


   N = length(x);

   % Walters Book eq. 8.6
   lg(1) =  ( N*sum(x.*y)-sum(x)*sum(y) )/( N*sum(x.*x)- sum(x)^2 );
   lg(2) =  ( sum(x.*x)*sum(y) - sum(x)*sum(x.*y) )/( N*sum(x.*x)-sum(x)^2  );

end

