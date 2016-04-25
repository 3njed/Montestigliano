function dy = ydot( t,y )
global delta om;
dy=zeros(2,1);
dy(1)=y(2);
dy(2)=-y(1)^2*y(2)-om^2*y(1)+2*delta*y(2);
end

