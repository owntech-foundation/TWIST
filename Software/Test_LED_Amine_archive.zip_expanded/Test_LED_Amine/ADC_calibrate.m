%% All the data come from Calibration_matlab

V1 =  transpose([23.2, 13.7, 7.4, 47, 32.2]);
ADC2_CH1 = [ones(5, 1) transpose([2508, 2305, 2162, 3018, 2710]) ];

Y = [23.2, 13.7, 7.4, 47, 32.2];
Ys = sort(Y);
X = [2508, 2305, 2162, 3018, 2710];
Xs = sort(X);

V2 =  transpose([23.2, 13.7, 7.4, 47, 32.2]);
ADC2_CH2 = [ones(5, 1) transpose([2521, 2315, 2173, 3034, 2753.5]) ];

% Vh = [ones(,) transpose([51.7])];
% ADC2_CH3 = transpose([147]);

I1 =  [ones(4,1) transpose([0, 0.5, 1, 2]) / 2 ];
ADC1_CH6 =  transpose([1.016, 1.026, 1.036, 1.058]) ;

I2 =  [ones(4,1) transpose([0, 0.5, 1, 2]) / 2];
ADC1_CH7 = transpose([1.025, 1.035, 1.043, 1.063]) ;

Ih =  transpose([0, 0.52, 1.47, 1.9]);
ADC1_CH8 = [ones(4, 1) transpose([1781, 1812, 1863, 1888]) ];

% Linear regression
Coef1 = ADC2_CH1\V1;
Coef2 = ADC2_CH2\V2;

% Polynomial regression
p2 = polyfit(Xs, Ys, 2);
p3 = polyfit(Xs, Ys, 3);



% Coef3 = ADC2_CH3\Vh;
Coef4 = I1\ADC1_CH6;
Coef5 = I2\ADC1_CH7;
Coef6 = ADC1_CH8\Ih;

V1_gain = Coef1(2)
V1_offset = Coef1(1)

V2_gain = Coef2(2);
V2_offset = Coef2(1);

Vh_gain = 0;
Vh_offset = 0;

I1_gain = Coef4(2);
I1_offset = Coef4(1);

I2_gain = Coef5(2);
I2_offset = Coef5(1);

Ih_gain = Coef6(2);
Ih_offset = Coef6(1);

Z = Xs * V1_gain + V1_offset * ones(1, 5);
Yp2 = polyval(p2, Xs);
Yp3 = polyval(p3, Xs);
plot(Xs,Ys, Xs, Z)

%fprintf("V1 centré sur");
V1_offset/V1_gain;
%fprintf("V2 centré sur");
V2_offset/V2_gain;

V1min = V1_offset;
V1max = V1_offset + 4096 * V1_gain;
V2min = V2_offset;
V2max = V2_offset + 4096 * V2_gain;

%fprintf("V1 range ; [%d, %d]\n", V1min, V1max);
%fprintf("V2 range ; [%d, %d]\n", V2min, V2max);

%% Other important values

% Sample frequency
fs = 200000;

% Main inductance
L = 47e-6;


