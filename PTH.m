clear
DA = 0:1:10000;
OA = 500;

% Official = ((((OA / ((DA / 3.5) + OA)) * 300) * 0.3) + (((((OA * 3.25) + 10000) - (DA * 3.25)) / 100) * 0.7)) - 50;
% HitProbabilitDA2 = 315 ./ (DA ./ OA + 3.5) + (OA - DA) / 43.956 + 20;  % 贴吧公式
Simplified1 = ((315 * OA) ./(DA + (OA * 3.5)));
Simplified2 = ((OA - DA) / 43.956) + 20;
Simplified = ((315 * OA) ./(DA + (OA * 3.5))) + ((OA - DA) / 43.956) + 20;
% plot(HitProbabilitDA2);hold on
plot(Simplified);hold on
plot(500, Simplified(500),'ro');
text(700, Simplified(500), [ '(' num2str(500) ',' num2str(Simplified(500)) ')' ])
% ylim([0, 200])
xlabel('DA')
ylabel('PTH')
title('DA vs PTH')

