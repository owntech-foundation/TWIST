%% All the data come from Calibration_matlab



peak_analog1 =  [ones(5, 1) transpose([0.966, 0.989, 1.016, 1.04, 1.062])];
peak_digital1 =  transpose([1900, 1950, 2000, 2048, 2100]);


Coef9 = peak_digital1\peak_analog1;


peak_gain1 = Coef9(2)
peak_offset1 = Coef9(1)





