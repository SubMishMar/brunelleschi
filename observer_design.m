% A = [zeros(3, 3) eye(3, 3); zeros(3, 3) zeros(3, 3)];
% B = [zeros(3, 3); eye(3, 3)];
% C = [eye(3, 3) zeros(3, 3)];
% ctrb_rank = rank(ctrb(A, B))
% obsv_rank = rank(obsv(A, C))
% p = [-10, -10, -10, 0, 0, 0];
% L = place(A', C', p)
% 
% eig(A-L'*C)

A = [0 1;0 0]; B = [0; 1];
C = [1 0];

p = [-10 0];

L = place(A', C', p)'

eig(A-L*C)
