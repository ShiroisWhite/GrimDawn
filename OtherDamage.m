clear
% XResist1 = 0.8
% for XDamage = 1:1000
%     FinalDamage1(XDamage) = XDamage * (1 - XResist1);
% end
% 
% plot(FinalDamage1);
% ylim([0 500])
% hold on 
% xlabel('原始伤害')
% ylabel('最终伤害')
% title('原始伤害 vs 最终伤害')

XDamage = 1000;
XResist = 0:0.1:1.5; 
FinalDamage = zeros(size(XResist));

for i = 1:length(XResist)
    if (XResist(i) <= 0.8)
        FinalDamage(i) = XDamage * (1 - XResist(i));
    else
        FinalDamage(i) = XDamage * (1 - 0.8);
    end
end

plot(XResist, FinalDamage);
xlabel('抗性')
ylabel('最终伤害')
title('抗性 vs 最终伤害')