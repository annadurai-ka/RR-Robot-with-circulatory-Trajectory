open_system('RR');
set_param('RR/To Workspace',...
    'VariableName','simoutToWorkspace')

set_param('RR/To File',...
    'FileName','simoutToFile.mat',...
    'MatrixName','simoutToFileVariable')

out= sim('RR');
load('simoutToFile.mat')
subplot(2,1,1)
plot(out.simoutToWorkspace,'-o')
legend('Joint torque 1')

load('simoutToFile3.mat')
subplot(2,1,2)
plot(out.simoutToWorkspace1,'-o')
legend('Joint torque 2')