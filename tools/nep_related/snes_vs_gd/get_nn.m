function [u,v,w,a,b,c]=get_nn(N_neu,para)
u = para(1:N_neu)';
offset = N_neu;
v = reshape(para(offset+1 : offset + N_neu*N_neu), N_neu, N_neu);
offset = offset + N_neu*N_neu;
w = para(offset+1 : offset + N_neu);
offset = offset + N_neu;
a = para(offset+1 : offset + N_neu)';
offset = offset + N_neu;
b = para(offset+1 : offset + N_neu)';
c = para(end);