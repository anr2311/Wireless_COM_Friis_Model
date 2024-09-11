f_name = 'Received power free space propogation';

Pt = input('Enter the power transmitted (Pt) - ');
Gt = input('Enter the Transmitter Antenna Gain (Gt) - ');
Gr = input('Enter the Receiver Antenna Gain (Gr) - ');
F = input('What is the frequency (in MHz) of the transmitted signal');

PrdB = 0;
PrdB = PrdB + 10 * log10(Gt);
PrdB = PrdB + 10 * log10(Gr);
PrdB = PrdB + 10 * log10(Pt);

L = 300 / F; % wavelength = speed (in 10^6 resolution) / frequency

% Squaring the wavelength
L = L * L;

PrdB = PrdB + 10 * log10(L);

K = 16 * pi * pi;

PrdB = PrdB - 10 * log10(K);

% Distance from transmitter to receiver in KM
% How the path loss varies for every 2km T-R separation
d = 1:2:10;
%d = d';

% Converting into kilometers and squaring them
d2 = d * 1000;
d3 = d2.^2;

PrdB = PrdB - 10 * log10(d3);

plot(d,PrdB);
xlabel('T-R separation in KM');
ylabel('Received Power in dB');
grid on;
axis tight