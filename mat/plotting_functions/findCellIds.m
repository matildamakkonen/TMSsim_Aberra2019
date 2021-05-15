function findCellIds(plane)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
mat_dir = addPaths;
C6file = fullfile(mat_dir,'output_data','layer_data','layer_set_1.mat'); 
indsfile = matfile('cellplot_inds_ls_1_nrn_pop1.mat','Writable',true);
C6 = load(C6file);
inds6 = [];
inds11 = [];
inds16 = [];
cell_origins = C6.layers(2).cell_origins;
for i = 1:length(cell_origins)
    [dist,~] = point_to_plane_distance(cell_origins(i,:),plane(4:6),plane(1:3));
    %dist
    if abs(dist) <1
        inds6 = [inds6;i];
    end
end
%layer 4, cell id 11
cell_origins = C6.layers(3).cell_origins;
for i = 1:length(cell_origins)
    [dist,~] = point_to_plane_distance(cell_origins(i,:),plane(4:6),plane(1:3));
    %dist
    if abs(dist) <1
        inds11 = [inds11;i];
    end
end
%Layer 5, cell id 16
cell_origins = C6.layers(4).cell_origins;
for i = 1:length(cell_origins)
    [dist,~] = point_to_plane_distance(cell_origins(i,:),plane(4:6),plane(1:3));
    %dist
    if abs(dist) <1
        inds16 = [inds16;i];
    end
end
indsfile.inds(1,1)=num2cell(inds6,1);
indsfile.inds(2,1)=num2cell(inds11,1);
indsfile.inds(3,1)=num2cell(inds16,1);

