clear
for PTH = 1:1:3000
    if (PTH <= 70)
        ExpectedDMG(PTH) = PTH / 100 * (PTH / 70 * 1) + (100 - PTH) * 0;
        Threshold1 = 70;
    elseif (PTH > 70 && PTH <= 90)
        ExpectedDMG(PTH) = PTH / 100 * (1) + (100 - PTH) * 0;
    elseif (PTH > 90 && PTH <= 100)
        ExpectedDMG(PTH) = 90 / 100 * (1) + (PTH - 90) / 100 * (1.1) + (100 - PTH + 1) * 0;
        Threshold2 = 90;
    elseif (PTH > 100 && PTH <= 105)
        ExpectedDMG(PTH) = 90 / PTH * (1) + (PTH - 90) / PTH  * (1.1);
    elseif (PTH > 105 && PTH <= 120)
        ExpectedDMG(PTH) = 90 / PTH * (1) + (104 - 90) / PTH * (1.1) + (PTH - 104) / PTH * 1.2;
        Threshold3 = 105;
    elseif (PTH > 120 && PTH <= 130)
        ExpectedDMG(PTH) = 90 / PTH * (1) + (104 - 90) / PTH * (1.1) + (120 - 104) / PTH * 1.2 + (PTH - 120) / PTH * 1.3;
        Threshold4 = 120;
    elseif (PTH > 130 && PTH <= 135)
        ExpectedDMG(PTH) = 90 / PTH * (1) + (104 - 90) / PTH * (1.1) + (120 - 104) / PTH * 1.2 + (130 - 120) / PTH * 1.3 + (PTH - 130) / PTH * 1.4;
        Threshold5 = 130;
    elseif (PTH > 135)
        ExpectedDMG(PTH) = 90 / PTH * (1) + (104 - 90) / PTH * (1.1) + (120 - 104) / PTH * 1.2 + (130 - 120) / PTH * 1.3 + (135 - 130) / PTH * 1.4 + (PTH - 135) / PTH * 1.5;
        Threshold6 = 135;
    end
end

plot(ExpectedDMG);hold on
xlabel('PTH');
ylabel('E(DamageTimes)');
title('PTH vs E(DamageTimes)');
plot(Threshold1, ExpectedDMG(Threshold1), 'ro');hold on
plot(Threshold2, ExpectedDMG(Threshold2), 'ro');hold on
plot(Threshold3, ExpectedDMG(Threshold3), 'ro');hold on
plot(Threshold4, ExpectedDMG(Threshold4), 'ro');hold on
plot(Threshold5, ExpectedDMG(Threshold5), 'ro');hold on
plot(Threshold6, ExpectedDMG(Threshold6), 'ro');hold on