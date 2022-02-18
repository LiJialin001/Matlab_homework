function im=displayRGB(filename)
[X,cmap] = imread(filename);
sz = size(X);
X = double(X);
X800 = zeros(800,800,3);
[X1,Y1] = meshgrid(linspace(1,sz(1),800),linspace(1,sz(2),800));
[a,b] = meshgrid(1:sz(1),1:sz(2));
X800(:,:,1) = interp2(a,b,X(:,:,1),X1,Y1);
X800(:,:,2) = interp2(a,b,X(:,:,2),X1,Y1);
X800(:,:,3) = interp2(a,b,X(:,:,3),X1,Y1);
X800 = double(X800);
r = X800;
g = X800;
b = X800;
r(:,:,2) = 0; r(:,:,3) = 0;
g(:,:,1) = 0; g(:,:,3) = 0;
b(:,:,1) = 0; b(:,:,2) = 0;
im = zeros(1600,1600,3);
im(1:800,1:800,:) = X800;
im(801:1600,1:800,:) = g;
im(801:1600,801:1600,:) = b;
im(1:800,801:1600,:) = r;
im = uint8(im);
end

