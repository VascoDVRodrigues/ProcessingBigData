%%% This file recieves a video and an array of indexes and returns to a folder the frames with the given indexes

obj = VideoReader('girosmallveryslow2.mp4');
vid = read(obj);
frames = obj.NumberOfFrames;
ST ='.jpg';
load('matlab_matrix_farthest.mat');

for x = 1 : 100
    Sx = num2str(a(x));
    Strc = strcat(Sx, ST);
    Vid = vid(:, :, :, a(x));
    cd farthest;
    imwrite(Vid, Strc);
    cd ..;
end


