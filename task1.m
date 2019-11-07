function task1()
load Countnumberofpulses.mat;

num_pulses_ain1 = pulsecounter(ain1)
num_pulses_ain5 = pulsecounter(ain5)

figure1 = figure

plot(timeAx, ain1, 'DisplayName','Ain1','Color',[1,0,0],'LineWidth',1);
hold on
plot(timeAx, ain5, 'DisplayName','Ain5','Color',[0,0,1],'LineWidth',1);
grid('on');
xlabel('Time (s)','FontAngle','italic','FontSize',16,'FontName','Times New Roman');
ylabel('Signal','FontAngle','italic','FontSize',16,'FontName','Times New Roman');
title('Channels Ain1 & Ain5','FontSize',20,'FontName','Times New Roman');
legend('show');
set(legend,...
        'Position',[0.622544642857142 0.459523809523811 0.255357142857143 0.136743935212109],...
        'FontSize',10);
end
function num_peaks = pulsecounter(a)

num_peaks = 0;

for n=2:length(a)-1
    if a(n-1)<a(n) && a(n)>a(n+1)
        num_peaks = num_peaks + 1;
    end
end

end

