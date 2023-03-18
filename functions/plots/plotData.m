    clear
    Ts=0.002;
    n = 5.5/Ts;
    load tower_crane_square_test_data.mat

    t=data_crane(1, 1:n)';
    y1=data_crane(2, 1:n)';
    y2=data_crane(3, 1:n)';
    u=data_crane(4, 1:n)';
    
    
    N=length(t);
    t=(0:Ts:(N-1)*Ts)';
 	
    load tower_crane_sine_test_data.mat

    t=data_crane(1, 1:n)';
    sy1=data_crane(2, 1:n)';
    sy2=data_crane(3, 1:n)';
    su=data_crane(4, 1:n)';

    figure
    tiledlayout(3, 2, "Padding", "compact");
    set(0,'DefaultFigureColor','w')
    
    % first row

    nexttile
    plot(t,y1),
    xlim([0 t(end)])
    ylabel('arm TODO (rad)');
    ylim([-1.6 0.2])
    box off

    nexttile
    plot(t,sy1),
    xlim([0 t(end)])
    ylabel('arm TODO (rad)');
    ylim([-1.6 1])
    box off

    % second row

    nexttile
    plot(t,y2)
    ylabel('pen TODO (rad)');
    xlim([0 t(end)])
    box off

    nexttile
    plot(t,sy2)
    ylabel('pen TODO (rad)');
    xlim([0 t(end)])
    box off

    % third row
    
    nexttile
    plot(t,u)
    ylabel('u (V) TODO');
    xlabel('Time (secs)')
    xlim([0 t(end)])
    ylim([-1.1 1.1])
    yticks([-1 0 1])
    box off

    nexttile
    plot(t,su)
    ylabel('u (V) TODO');
    xlabel('Time (secs)')
    xlim([0 t(end)])
    ylim([-1.1 1.1])
    yticks([-1 0 1])
    box off
    
    % matlab2tikz('./material/data_square.tex')
