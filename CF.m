
clc
clear all

%% Export

wet = readmatrix("test5 wet 2.csv");
awet = wet(3400:5400,2)';
twet = (0:0.0025:5);


dry = readmatrix("test5 dry 4.csv");
adry = dry(6000:8000,2)';
tdry = (0:0.0025:5);

peak_amplitude_1 = max(abs(adry));
peak_amplitude_2 = max(abs(awet));

% Calculate RMS amplitude
rms_amplitude_1 = rms(adry);
rms_amplitude_2 = rms(awet);

% Calculate crest factor
crest_factor_1 = peak_amplitude_1 / rms_amplitude_1;
crest_factor_2 = peak_amplitude_2 / rms_amplitude_2;

disp(['Crest Factor of dry: ', num2str(crest_factor_1)]);
disp(['Crest Factor of wet: ', num2str(crest_factor_2)]);




