function dy = ydot_mts( t,y )
global delta om;
dy=delta*y-0.5*y^2*conj(y);
end

