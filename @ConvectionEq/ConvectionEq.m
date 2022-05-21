% ConvectionEq.m
% 关键词classdef，后跟一个自定义类名，存放属性和方法，以end结束
classdef ConvectionEq
    %    对流方程(ConvectionEq)类
 
    % 关键词properties：用来存放类的属性（成员变量），以end结束
    properties
        alpha %对流速度
        up_x %坐标x的上限
        up_t %时间t的上限
        down_x %坐标x的下限
        down_t %时间t的下限
        w %边界条件中的角频率w
    end
 
    % 关键词methods：用来存放类的方法（成员函数），以end结束
    methods
        % 关键词function：这个见过很多遍了，就是用来定义函数的，写法和直接定义函数一样，以end结束
        % 下为构造函数，名称和类名称相同，返回值必须是stressTensor类，因此在书写时可以直接写"item.tensorMat"，即访问其作为stressTensor类具有的成员变量
        function item = ConvectionEq(alpha_1,up_x_1,up_t_1,down_x_1,down_t_1,w_1)
            %设置默认参数
            if(~exist('alpha_1','var'))
                item.alpha = 2;  % 如果未出现该变量，则对其进行赋值
            else
                item.alpha=alpha_1;
            end

            if(~exist('up_x_1','var'))
                item.up_x = 1;  % 如果未出现该变量，则对其进行赋值
            else
                item.up_x = up_x_1;
            end
            
            if(~exist('up_t_1','var'))
                item.up_t = 1;  % 如果未出现该变量，则对其进行赋值
            else
                item.up_t = up_t_1;
            end
            
            if(~exist('down_x_1','var'))
                item.down_x = 0;  % 如果未出现该变量，则对其进行赋值
            else
                item.down_x = down_x_1;
            end

            if(~exist('down_t_1','var'))
                item.down_t = 0;  % 如果未出现该变量，则对其进行赋值
            else
                item.down_t = down_t_1;
            end

            if(~exist('w','var'))
                item.w = pi;  % 如果未出现该变量，则对其进行赋值
            else
                item.w = w_1;
            end
        end
    end
end