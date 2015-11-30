



function FS_tiff(videodata)

% Convert FS to tiff- for FreedomScope Movies




files2 = videodata(:,:,:,:);

imwrite(uint8(rgb2gray(files2(:,:,:,1))),'G.tif');


for i=2:size(files2,4) %number of images to be read

imwrite(uint8(rgb2gray(files2(:,:,:,i))),'G.tif','WriteMode','append');
imwrite(uint8(files2(:,:,:,i)),'RGB.tif','WriteMode','append');
end

end


