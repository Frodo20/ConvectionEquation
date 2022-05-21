import ConvectionEq.*; %导入类模块
C1=ConvectionEq(2,1,1,0,0);
C2=ConvectionEq(1,1,1,0,0);
C3=ConvectionEq(0.1,1,1,0,0);
%Question 1
figure(1)
C1.FTFS(1);
pause(2);
%C1.FTBS(1);
%pause(2);
%C1.FTCS(1);
%pause(2);
%C1.FTFS(1,0.1,0.1);
%pause(2);
%C1.FTBS(1,0.1,0.1);
%pause(2);
%C1.FTCS(1,0.1,0.1);
%pause(2);
%C2.FTFS(1);
%pause(2);
%C2.FTBS(1);
%pause(2);
%C2.FTCS(1);



%Question 2
figure(2)
C2.FTBS(2);


%Question 3
figure(3)
C3.FTFS(3);
pause(2);
C3.FTBS(3);
pause(2);
C3.FTCS(3);
pause(2);



