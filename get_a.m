function A = get_a(A_type)
    % get_a contains stored matrices A.
    % 
    % Inputs:
    % A_type (scalar): specifies the saved instance number.
    %
    % Outputs:
    % A (matrix): stored matrix A.
    
    phi3 = 2/3*pi;
    phi5 = 2/5*pi;
    phi7 = 2/7*pi;
    
    switch A_type
        case 1
            % 3-phase 1 DOF
            A = 2/3*[1, cos(phi3), cos(-phi3);...
                0, sin(phi3), sin(-phi3);];
        case 2
            % 5-phase 3 DOFs
            A = 2/5*[1, cos(phi5), cos(2*phi5), cos(-2*phi5), cos(-phi5); ...
                0, sin(phi5), sin(2*phi5), sin(-2*phi5), sin(-phi5);];
        case 3
            % 5-phase 1 DOF
            A = 2/5*[1, cos(phi5), cos(2*phi5), cos(-2*phi5), cos(-phi5); ...
                0, sin(phi5), sin(2*phi5), sin(-2*phi5), sin(-phi5); ...
                1, cos(2*phi5), cos(-phi5), cos(phi5), cos(-2*phi5); ...
                0, sin(2*phi5), sin(-phi5), sin(phi5), sin(-2*phi5)];
        case 4
            % 7-phase 5 DOFs
            A = 2/7*[1, cos(phi7), cos(2*phi7), cos(3*phi7), cos(4*phi7), cos(5*phi7), cos(6*phi7); ...
                0, sin(phi7), sin(2*phi7), sin(3*phi7), sin(4*phi7), sin(5*phi7), sin(6*phi7);];
        case 5
            % 7-phase 1 DOFs
            A = 2/7*[1, cos(phi7), cos(2*phi7), cos(3*phi7), cos(4*phi7), cos(5*phi7), cos(6*phi7);...
                0, sin(phi7), sin(2*phi7), sin(3*phi7), sin(4*phi7), sin(5*phi7), sin(6*phi7);...
                1, cos(2*phi7), cos(4*phi7), cos(6*phi7), cos(8*phi7), cos(10*phi7), cos(12*phi7);...
                0, sin(2*phi7), sin(4*phi7), sin(6*phi7), sin(8*phi7), sin(10*phi7), sin(12*phi7);...
                1, cos(3*phi7), cos(6*phi7), cos(9*phi7), cos(12*phi7), cos(15*phi7), cos(18*phi7);...
                0, sin(3*phi7), sin(6*phi7), sin(9*phi7), sin(12*phi7), sin(15*phi7), sin(18*phi7);];
        case 6
            % 4-phase 1 DOF
            A1 = 2/3*[1, cos(phi3), cos(-phi3);...
                0, sin(phi3), sin(-phi3);...
                1/2, 1/2, 1/2;];
            
            A2 = [1, 0, 0, -1;...
                0, 1, 0, -1;...
                0, 0, 1, -1;];
            A = A1*A2;
        case 7
            % 4-phase 1 DOF
            A = 2/3*[1, 0, 2*cos(2*pi/3), 2*cos(4*pi/3); ...
                0, 0, 2*sin(2*pi/3), 2*sin(4*pi/3); ...
                0, 3/2, 0, 0];
        otherwise
            error("Matrix not defined");
    end
end


