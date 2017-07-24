function [Roll, Pitch, Yaw] = quat2RPY(q1,q2,q3,q4)
R =eye(3,3);
eta = q4;
ex = q1;
ey = q2;
ez = q3;

R=[2*(eta^2+ex^2)-1 2*(ex*ey-eta*ez) 2*(ex*ez+eta*ey);
2*(ex*ey+eta*ez) 2*(eta^2+ey^2)-1 2*(ey*ez-eta*ex);
2*(ex*ez-eta*ey) 2*(ey*ez+eta*ex) 2*(eta^2+ez^2)-1]

Roll= (180/pi)*atan2(R(3,2),R(3,3));
Pitch = (180/pi)*atan2(-R(3,1),sqrt(R(3,2)^2+R(3,3)^2));
Yaw = (180/pi)*atan2(R(2,1),R(1,1));

end

