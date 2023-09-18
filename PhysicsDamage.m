% Armor = 500;
% DmgReduct = 0.7;
% for DirectDamage = 1 : 1000
%     if DirectDamage <= Armor
%         FinalDamage(DirectDamage) = DirectDamage - DmgReduct * DirectDamage;
%     else
%         FinalDamage(DirectDamage) = DirectDamage - DmgReduct * Armor;
%     end
% end
% plot(FinalDamage)
% xlabel('物理直伤')
% ylabel('最终伤害')
% title('物理直伤 vs 最终伤害')


DirectDamage = 500;
DmgReduct = 0.7;
for Armor = 1 : 1000
    if Armor < DirectDamage % 破防
        FinalDamage(Armor) = DirectDamage - Armor * DmgReduct;
    else % 不破防
        FinalDamage(Armor) = DirectDamage - DmgReduct * DirectDamage;
    end
end

plot(FinalDamage)
ylim([0 1000])
xlabel('护甲值')
ylabel('最终伤害')
title('护甲 vs 最终伤害')