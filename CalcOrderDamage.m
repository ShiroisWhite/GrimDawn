phyDamage = 5000; % 受到的物理直伤
missProb = 0.15;            % 1）攻击失误概率
DA = 500;                   % 2.1）防方OA
OA = 600;                   % 2.2）攻防OA => PTH   
shieldBlockProb = 0.3;      % 3.1）盾牌格挡几率
shieldBlockDamage = 1200;   % 3.2）盾牌格挡伤害 => 盾牌格挡
percentReduceFromX = 0.2;   % 4）减少来自X类型怪物的伤害百分比
resistanceReducePhy = 0.15; % 5）物理抗性百分比
armor = 3000;               % 6.1）护甲值
phyAbsorb = 0.7;            % 6.2）护甲吸收 => 护甲减伤
numberReduceFromX = 200;    % 7) 减少来自X类型怪物的伤害自然数
percentAbsorb = 0.2;        % 8) 百分比伤害吸收
numberAbsorb = 100;         % 9) 自然数伤害吸收

%% 1）攻击失误概率
if rand() > missProb
    isFumble = 1;
else
    isFumble = 0;
end

damageStage1 = isFumble * phyDamage;

%% 2）PTH计算命中、暴击
PTH = ((315 * OA) ./(DA + (OA * 3.5))) + ((OA - DA) / 43.956) + 20;
critDamage = calcCrit(PTH);

damageStage2 = damageStage1 * critDamage;

%% 盾牌格挡
if rand() > shieldBlockProb
    isBlock = 0;
else
    isBlock = 1;
end

damageStage3 = damageStage2 - isBlock * shieldBlockDamage;
if damageStage3 < 0
    damageStage3 = 0;
end
damageStage3;
%% 减少XX%来自某类怪物的伤害
damageStage4 = damageStage3 * (1 - percentReduceFromX);

%% 抗性减伤
damageStage5 = damageStage4 * (1 - resistanceReducePhy);

%% 护甲减伤
if armor < damageStage5 % 破防
    damageStage6 = damageStage5 - armor * phyAbsorb;
else                    % 不破防
    damageStage6 = damageStage5 - damageStage5 * phyAbsorb;
end
if damageStage6 < 0
    damageStage6 = 0;
end

%% 减少XX来自某类怪物的伤害
damageStage7 = damageStage6 - numberReduceFromX;
if damageStage7 < 0
    damageStage7 = 0;
end

%% 百分比伤害吸收
damageStage8 = damageStage7 * (1 - percentAbsorb);

%% 自然数伤害吸收
damageStage9 = damageStage8 - numberAbsorb;
if damageStage9 < 0
    damageStage9 = 0;
end

damageStage9

