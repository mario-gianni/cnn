% create test-set for each component

% create data-set for each component
clear all
close all
% test
load('test_data_sim.mat')

%pwd_ = '/home/alcor/cnn/data/';
pwd_ = '/Users/Mario/github/cnn/data/';

% finestra temporale di campioni
window_size = 4;

% componente considerata
k = 1; % componente x

[componente_x,labels_x] = build_time_segments(x,window_size,k);
fulldata_componente_x = [componente_x,labels_x];

[n_samples_x,m_features_x] = size(fulldata_componente_x);
fulldata_componente_xx = zeros(1,1,m_features_x,n_samples_x);
fulldata_componente_xx(1,1,:,:) = fulldata_componente_x';
fake_labels_x = ones(n_samples_x,1);
filename_x = 'test_x.h5';
h5create(filename_x,'/fulldata_x',[1 1 m_features_x n_samples_x],'Datatype', 'double');
h5create(filename_x,'/fake_label_x',[1 n_samples_x],'Datatype', 'single');
h5write(filename_x, '/fulldata_x', fulldata_componente_xx);
h5write(filename_x, '/fake_label_x', fake_labels_x');
movefile(filename_x,pwd_);
fprintf('HDF5 file created in %s \n', pwd_);

data_file = strcat(pwd_,'test_x.txt');
FILE=fopen(data_file, 'w');
fprintf(FILE, '%s', [pwd_ filename_x]);
fclose(FILE);
fprintf('HDF5 filename listed in %s \n', data_file);


clear all
close all
% test
load('test_data_sim.mat')

%pwd_ = '/home/alcor/cnn/data/';
pwd_ = '/Users/Mario/github/cnn/data/';
% finestra temporale di campioni
window_size = 4;
% componente considerata
k = 2; % componente y

[componente_y,labels_y] = build_time_segments(x,window_size,k);
fulldata_componente_y = [componente_y,labels_y];

[n_samples_y,m_features_y] = size(fulldata_componente_y);
fulldata_componente_yy = zeros(1,1,m_features_y,n_samples_y);
fulldata_componente_yy(1,1,:,:) = fulldata_componente_y';
fake_labels_y = ones(n_samples_y,1);
filename_y = 'test_y.h5';
h5create(filename_y,'/fulldata_y',[1 1 m_features_y n_samples_y],'Datatype', 'double');
h5create(filename_y,'/fake_label_y',[1 n_samples_y],'Datatype', 'single');
h5write(filename_y, '/fulldata_y', fulldata_componente_yy);
h5write(filename_y, '/fake_label_y', fake_labels_y');
movefile(filename_y,pwd_);
fprintf('HDF5 file created in %s \n', pwd_);

data_file = strcat(pwd_,'test_y.txt');
FILE=fopen(data_file, 'w');
fprintf(FILE, '%s', [pwd_ filename_y]);
fclose(FILE);
fprintf('HDF5 filename listed in %s \n', data_file);


clear all
close all
% test
load('test_data_sim.mat')

%pwd_ = '/home/alcor/cnn/data/';
pwd_ = '/Users/Mario/github/cnn/data/';
% finestra temporale di campioni
window_size = 4;
% componente considerata
k = 3; % componente z

[componente_z,labels_z] = build_time_segments(x,window_size,k);
fulldata_componente_z = [componente_z,labels_z];

[n_samples_z,m_features_z] = size(fulldata_componente_z);
fulldata_componente_zz = zeros(1,1,m_features_z,n_samples_z);
fulldata_componente_zz(1,1,:,:) = fulldata_componente_z';
fake_labels_z = ones(n_samples_z,1);
filename_z = 'test_z.h5';
h5create(filename_z,'/fulldata_z',[1 1 m_features_z n_samples_z],'Datatype', 'double');
h5create(filename_z,'/fake_label_z',[1 n_samples_z],'Datatype', 'single');
h5write(filename_z, '/fulldata_z', fulldata_componente_zz);
h5write(filename_z, '/fake_label_z', fake_labels_z');
movefile(filename_z,pwd_);
fprintf('HDF5 file created in %s \n', pwd_);

data_file = strcat(pwd_,'test_z.txt');
FILE=fopen(data_file, 'w');
fprintf(FILE, '%s', [pwd_ filename_z]);
fclose(FILE);
fprintf('HDF5 filename listed in %s \n', data_file);

clear all
close all
% test
load('test_data_sim.mat')
%pwd_ = '/home/alcor/cnn/data/';
pwd_ = '/Users/Mario/github/cnn/data/';
window_size = 4;
% componente considerata
k = 4; % linear vel

[componente_lin_vel,labels_lin_vel] = build_time_segments(x,window_size,k);
fulldata_componente_lin_vel = [componente_lin_vel,labels_lin_vel];

%lin_vel = x(1:(end-1),k);
[n_samples_lin_vel,m_features_lin_vel] = size(fulldata_componente_lin_vel);
fulldata_lin_vel = zeros(1,1,m_features_lin_vel,n_samples_lin_vel);
fulldata_lin_vel(1,1,:,:) = fulldata_componente_lin_vel';
fake_labels_lin_vel = ones(1,n_samples_lin_vel);

filename_lin_vel = 'test_lin_vel.h5';
h5create(filename_lin_vel,'/fulldata_lin_vel',[1 1 m_features_lin_vel n_samples_lin_vel],'Datatype', 'double');
h5create(filename_lin_vel,'/fake_label_lin_vel',[1 n_samples_lin_vel],'Datatype', 'single');
h5write(filename_lin_vel, '/fulldata_lin_vel', fulldata_lin_vel);
h5write(filename_lin_vel, '/fake_label_lin_vel', fake_labels_lin_vel);
movefile(filename_lin_vel,pwd_);
fprintf('HDF5 file created in %s \n', pwd_);

data_file = strcat(pwd_,'test_lin_vel.txt');
FILE=fopen(data_file, 'w');
fprintf(FILE, '%s', [pwd_ filename_lin_vel]);
fclose(FILE);
fprintf('HDF5 filename listed in %s \n', data_file);

clear all
close all
% test
load('test_data_sim.mat')
pwd_ = '/Users/Mario/github/cnn/data/';
%pwd_ = '/home/alcor/cnn/data/';
window_size = 4;
% componente considerata
k = 5; % angular vel
[componente_ang_vel,labels_ang_vel] = build_time_segments(x,window_size,k);
fulldata_componente_ang_vel = [componente_ang_vel,labels_ang_vel];

%ang_vel = x(1:(end-1),k);

[n_samples_ang_vel,m_features_ang_vel] = size(fulldata_componente_ang_vel);
fulldata_ang_vel = zeros(1,1,m_features_ang_vel,n_samples_ang_vel);
fulldata_ang_vel(1,1,:,:) = fulldata_componente_ang_vel';

fake_labels_ang_vel = ones(1,n_samples_ang_vel);

filename_ang_vel = 'test_ang_vel.h5';
h5create(filename_ang_vel,'/fulldata_ang_vel',[1 1 m_features_ang_vel n_samples_ang_vel],'Datatype', 'double');
h5create(filename_ang_vel,'/fake_label_ang_vel',[1 n_samples_ang_vel],'Datatype', 'single');
h5write(filename_ang_vel, '/fulldata_ang_vel', fulldata_ang_vel);
h5write(filename_ang_vel, '/fake_label_ang_vel', fake_labels_ang_vel);

movefile(filename_ang_vel,pwd_);
fprintf('HDF5 file created in %s \n', pwd_);

data_file = strcat(pwd_,'test_ang_vel.txt');
FILE=fopen(data_file, 'w');
fprintf(FILE, '%s', [pwd_ filename_ang_vel]);
fclose(FILE);
fprintf('HDF5 filename listed in %s \n', data_file);
