function statistics = getThresholdStatistics(save_mat)

mat_dir = addPaths; 
% Simulation settings
nrn_model_ver = 'maxH';
mode = 1; % monophasic MagProX100 pulse
layer_set_num = 1;
Efield_name = 'M1_PA_MCB70';
nrn_pop = 'nrn_pop1'; % also choose this for reverse
model_prefix = sprintf('tms_%s_w%g_ls_%g_E_%s_P_%s',nrn_model_ver,mode,...
                            layer_set_num,Efield_name,nrn_pop); 
                        
%% Load data
layers = loadLayers(layer_set_num); 
data_fold = fullfile(mat_dir,'nrn_sim_data');
data_struct = load(fullfile(data_fold,model_prefix)); 
threshEs = data_struct.threshEs;


keyboard;
end