function X=FTCS(obj,boundary_type,tt,xx,plot_flag)

%设置默认参数
if(~exist('tt','var'))
    tt = 0.01;% 如果未出现该变量，则对其进行赋值
    dt = tt;
else
    dt=tt;
end


if(~exist('xx','var'))
    xx = 0.01;  % 如果未出现该变量，则对其进行赋值
    dx = xx;
else
    dx=xx;
end

if(~exist('boundary_type','var'))
    b_t = 1;  % 如果未出现该变量，则对其进行赋值
else
    b_t = boundary_type;
end

if(~exist('plot_flag','var'))
    plot_flag = 1;  % 如果未出现该变量，则对其进行赋值
    plt_flag = plot_flag;
else
    plt_flag=plot_flag;
end

%定义柯朗数
r=obj.alpha*dt/dx;

xn=(obj.up_x-obj.down_x)/dx; %x向点数
tm=(obj.up_t-obj.down_t)/dt; %t向点数

u=zeros(xn+1,1);
X=zeros(xn+1,tm+1);


for j=1:tm+1
    if (b_t==1)&&(j==1) %第一题的边界条件
        for k=2:xn+1
            u(k)=sin((k-1)*dx);
        end
    end
    u0=u;
    X(:,j)=u;
   
    for i=1:xn+1

        if i==1
            if b_t==2
                u(i)=sin(obj.w*(j-1)*dt); %第二题边界条件
            else
                u(i)=u0(i);
            end
        elseif (b_t==3)&&(i==1+xn/2)&&(j==1) %第三题边界条件
           u(i)=1;
        elseif i==xn+1
            u(i)=(1-r)*u0(i)+r*u0(i-1); %边界处换用FTBS格式
        else
            u(i)=r/2*u0(i-1)-r/2*u0(i+1)+u0(i); %FTCS迭代格式
        end
    end
    
    if plt_flag==1
        plot(u,'LineWidth',1.5,'Color','c','LineStyle','-');
        pause(0.1);
    end
end
if plt_flag==1
    grid on;
    title('FTCS','FontSize',15,'FontWeight','bold');
end
end