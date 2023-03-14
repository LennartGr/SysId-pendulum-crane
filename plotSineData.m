clear
load("tower_crane_emile_lennart_data.mat")
t=data_crane(1,:)';
y1=data_crane(2,:)';
y2=data_crane(3,:)';
u=data_crane(4,:)';
  
Ts=0.002;
N=length(t);
t=(0:Ts:(N-1)*Ts)';

subplot(3,1,1)
plot(t,y1),
grid
xlim([0 t(end)])
title('Tower crane I/O data')
ylabel('Rotary arm angle (rad)');
subplot(3,1,2)
plot(t,y2)
grid
ylabel('Pendulum angle (rad)');
xlim([0 t(end)])
subplot(3,1,3)
plot(t,u)
grid
ylabel('DC motor Voltage');
xlabel('Time in secs')
xlim([0 t(end)])
ylim([-2 2])