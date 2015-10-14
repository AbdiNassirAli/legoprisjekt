% beregner hvordan joystickdata skal brukes for 
% � f� motorene til � bevege seg

if online 
    % Beregner motorp�drag og lagrer i datavektor
    PowerA(k) = JoyForover(k)+JoySide(k);
    PowerC(k) = JoyForover(k)-JoySide(k);
    if PowerA(k) >= 100
        motorA.Power = 99;
        motorA.SendToNXT();
    else
        motorA.Power = PowerA(k);
        motorA.SendToNXT();
    end
    % Setter powerdata mot NXT
    if PowerA(k) >= 100
        motorC.Power = 99;
        motorC.SendToNXT();
    else
        motorC.Power = PowerC(k);
        motorC.SendToNXT();
    end
else
    pause(0.01) % simulerer NXT-Matlab kommunikasjon i online=0
end
