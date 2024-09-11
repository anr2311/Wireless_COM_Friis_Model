% file name can be expressed as below
f_name = 'Free space path loss';

F = input('Enter frequency 1');
L = 300 / F; % wavelength = speed (in 10^6 resolution) / frequency

% Squaring the wavelength
L = L * L;

% Distance from transmitter to receiver in KM
% How the path loss varies for every 10km T-R separation
d = 10:10:100;
d = d';

% Converting into kilometers and squaring them
d2 = d * 1000;
d3 = d2.^2;

% Calculating the path loss
% the denominator element first (4*pi*d)^2
K = 16 * pi * pi * d3;

% Dividing by lambda squared
Ki = K / L;

PL = 10 * log10(Ki);

subplot(2,1,1);
plot(d,PL);
xlabel('Distance in KM');
ylabel('Path loss in dB');
grid on;
axis tight

% Second Frequency
F1 = input('Enter frequency 2');
L = 300 / F1; % wavelength = speed (in 10^6 resolution) / frequency

% Squaring the wavelength
L = L * L;

% Distance from transmitter to receiver in KM
% How the path loss varies for every 10km T-R separation
d = 10:10:100;
d = d';

% Converting into kilometers and squaring them
d2 = d * 1000;
d3 = d2.^2;

% Calculating the path loss
% the denominator element first (4*pi*d)^2
K = 16 * pi * pi * d3;

% Dividing by lambda squared
Ki = K / L;

PL = 10 * log10(Ki);

subplot(2,1,2);
plot(d,PL);
xlabel('Distance in KM');
ylabel('Path loss in dB');
grid on;
axis tight