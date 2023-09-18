function critDamage = calcCrit(PTH)
    if (PTH <= 70)
        x = randi([1, 100]);
        if (x <= PTH)
            critDamage = PTH / 70 * 1;
        elseif (x > PTH && x < 100)
            critDamage = 0;
        end
    elseif (PTH > 70 && PTH <= 90)
        x = randi([1, 100]);
        if (x <= PTH)
            critDamage = 1;
        elseif (x > PTH && x < 100)
            critDamage = 0;
        end
    elseif (PTH > 90 && PTH <= 100)
        x = randi([1, 100]);
        if (x < 90)
            critDamage = 1;
        elseif (x >= 90 && x<= PTH)
            critDamage = 1.1;
        elseif (x > PTH && x <= 100)
            critDamage = 0;
        end
    elseif (PTH > 100 && PTH <= 105)
        x = randi([1, 105]);
        if (x < 90)
            critDamage = 1;
        elseif (x >= 90 && x <= 104)
            critDamage = 1.1;
        elseif (x > 104  && x <= PTH)
            critDamage = 1.2;
        end
    elseif (PTH > 105 && PTH <= 120)
        x = randi([1, 120]);
        if (x < 90)
            critDamage = 1;
        elseif (x >= 90 && x <= 104)
            critDamage = 1.1;
        elseif (x > 104 && x < 120)
            critDamage = 1.2;
        elseif (x >= 120 && x <= PTH)
            critDamage = 1.3;
        end
    elseif (PTH > 120 && PTH <= 130)
        x = randi([1, 130]);
        if (x < 90)
            critDamage = 1;
        elseif (x >= 90 && x <= 104)
            critDamage = 1.1;
        elseif (x > 104 && x < 120)
            critDamage = 1.2;
        elseif (x >= 120 && x < 130)
            critDamage = 1.3;
        elseif (x >= 130 && x < PTH)
            critDamage = 1.4;
        end
    elseif (PTH > 130 && PTH <= 135)
        x = randi([1, 135]);
        if (x < 90)
            critDamage = 1;
        elseif (x >= 90 && x <= 104)
            critDamage = 1.1;
        elseif (x > 104 && x < 120)
            critDamage = 1.2;
        elseif (x >= 120 && x < 130)
            critDamage = 1.3;
        elseif (x >= 130 && x < 135)
            critDamage = 1.4;
        elseif (x >= 135 && x < PTH)
            critDamage = 1.5;
        end
    end
end

