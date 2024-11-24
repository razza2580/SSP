%plot of sinusoidal signal
clc;
clear all;
t=-pi:0.01:pi;
subplot(3,3,1);
x=sin(t);y=cos(t);
plot(t,x,'r',t,y,'g');
xlabel('Time............,');
ylabel('Amplitude............,');
title('Sinusoidal signal');
grid on;
%unit step signal-continuous
subplot(3,3,2);
hold on;
for(t=-10:0.01:10);
    if(t<0)
        plot(t,0,'d');
    else
        plot(t,1,'d');
    end;
end;
    xlabel('Time............,');
    ylabel('Amplitude............,');
    title('unit signal');
    grid on;
    hold off;
    
    %unit step signal-discrete
subplot(3,3,3);
hold on;
for(n=-10:1:10);
    if(n<0)
        stem(n,0,'d');
    else
        stem(n,1,'d');
    end;
end;
    xlabel('Time............,');
    ylabel('Amplitude............,');
    title('unit signal');
    grid on;
    hold off;
    
      %unit step signal-impulse
    subplot(3,3,4);
hold on;
for n = -10:1:10
    if n == 0
        stem(n, 1, 'd'); 
    else
        stem(n, 0, 'd');
    end;
end;
xlabel('Time');
ylabel('Amplitude');
title('Unit Impulse Signal');
grid on;
hold off;

%unit step signal-ramp
subplot(3,3,5);
hold on;
for n = -10:0.01:10
    if n >= 0
        plot(n, n, 'd');
    else
        plot(n, 0, 'd');
    end;
end;
xlabel('Time');
ylabel('Amplitude');
title('Ramp Signal');
grid on;
hold off;
%unit step signal-ramp discrete
subplot(3,3,6);
hold on;
for n = -10:1:10
    if n >= 0
        stem(n, n, 'd');
    else
        stem(n, 0, 'd'); 
    end
end
xlabel('Time');
ylabel('Amplitude');
title('Discrete Ramp Signal');
grid on;
hold off;



