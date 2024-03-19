function y = lowpass_FIR(x)
%LOWPASS_FIR Filters input x and returns output y.

% MATLAB Code
% Generated by MATLAB(R) 8.1 and the Signal Processing Toolbox 6.19.
% Generated on: 18-Dec-2023 11:55:27

%#codegen

% To generate C/C++ code from this function use the codegen command. Type
% 'help codegen' for more information.

persistent Hd;

if isempty(Hd)
    
    % The following code was used to design the filter coefficients:
    % % FIR Window Lowpass filter designed using the FIR1 function.
    %
    % % All frequency values are in Hz.
    % Fs = 48000;  % Sampling Frequency
    %
    % Fpass = 9600;            % Passband Frequency
    % Fstop = 12000;           % Stopband Frequency
    % Dpass = 0.057501127785;  % Passband Ripple
    % Dstop = 0.0001;          % Stopband Attenuation
    % flag  = 'scale';         % Sampling Flag
    %
    % % Calculate the order from the parameters using KAISERORD.
    % [N,Wn,BETA,TYPE] = kaiserord([Fpass Fstop]/(Fs/2), [1 0], [Dstop Dpass]);
    %
    % % Calculate the coefficients using the FIR1 function.
    % b  = fir1(N, Wn, TYPE, kaiser(N+1, BETA), flag);
    
    Hd = dsp.FIRFilter( ...
        'Numerator', [1.28095888084841e-05 2.22575723961909e-05 ...
        -2.39094829859133e-05 -6.19816178820203e-05 2.19709375418733e-05 ...
        0.000127396713894963 1.3271521943359e-05 -0.000213274463968118 ...
        -0.000106986952535032 0.000299440156648064 0.000282922176996965 ...
        -0.000347092678311239 -0.000553592106421449 0.000299212229550625 ...
        0.000908351903565758 -8.69430260054681e-05 -0.00130190666047566 ...
        -0.000357137344329074 0.00164666990393341 0.00107949055529583 ...
        -0.001812569433952 -0.00208228404624763 0.00163719509508314 ...
        0.00330037907630074 -0.000947565353124688 -0.00458380529790458 ...
        -0.000407515065922468 0.00569085104879121 0.00251805610046447 ...
        -0.00629552626680195 -0.00537208278543857 0.0060104239738092 ...
        0.00882000845158656 -0.00442211241392894 -0.0125497865780449 ...
        0.00113135556227939 0.0160747245614122 0.00421560887986895 ...
        -0.0187277319201821 -0.0119281629078407 0.0196382664984678 ...
        0.022351180888066 -0.0176222900742693 -0.0361465682578888 ...
        0.0107550515452356 0.0552313228132229 0.00539010708441565 ...
        -0.0868848209034993 -0.048287604644234 0.180348267142795 ...
        0.41329665829982 0.41329665829982 0.180348267142795 -0.048287604644234 ...
        -0.0868848209034993 0.00539010708441565 0.0552313228132229 ...
        0.0107550515452356 -0.0361465682578888 -0.0176222900742693 ...
        0.022351180888066 0.0196382664984678 -0.0119281629078407 ...
        -0.0187277319201821 0.00421560887986895 0.0160747245614122 ...
        0.00113135556227939 -0.0125497865780449 -0.00442211241392894 ...
        0.00882000845158656 0.0060104239738092 -0.00537208278543857 ...
        -0.00629552626680195 0.00251805610046447 0.00569085104879121 ...
        -0.000407515065922468 -0.00458380529790458 -0.000947565353124688 ...
        0.00330037907630074 0.00163719509508314 -0.00208228404624763 ...
        -0.001812569433952 0.00107949055529583 0.00164666990393341 ...
        -0.000357137344329074 -0.00130190666047566 -8.69430260054681e-05 ...
        0.000908351903565758 0.000299212229550625 -0.000553592106421449 ...
        -0.000347092678311239 0.000282922176996965 0.000299440156648064 ...
        -0.000106986952535032 -0.000213274463968118 1.3271521943359e-05 ...
        0.000127396713894963 2.19709375418733e-05 -6.19816178820203e-05 ...
        -2.39094829859133e-05 2.22575723961909e-05 1.28095888084841e-05]);
end

y = step(Hd,x);


% [EOF]