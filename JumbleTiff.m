% Kyle Marchuk
% January 2017

% This script is used to jumble the order of a tiff stack
tic

clear all
close all
clc

pathdir = 'C:\path\to\files\';
fileName = 'MIPsROI06Synapse1.tif';

fileStack = openTIFF(pathdir,fileName);

nFrames = size(fileStack,3);

lenArray = 1:nFrames;
lenArray = randperm(length(lenArray));

shuffledTiff = zeros(size(fileStack),'uint16');
for ii=1:nFrames
    shuffledTiff(:,:,ii) = fileStack(:,:,lenArray(ii));
end

writeTiff(shuffledTiff,strcat(pathdir,'shuffled_',fileName));







toc