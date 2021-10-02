%Read image 
I = imread('gray.jpg');
% Vi kich thuoc la 256x256 nen ta giam moi canh di 4 lan de co anh 64x64
% Ta s nhan duoc mot ma tran co so hang la 64 va so cot la 64
I = imresize(I, 1/4);
% Sau do ta chuyen anh 2D ve anh anh 1-D va ghi no ra file text
% Khi do ma tran tao ra co so hang la 4096 va so cot la 1
% Trong do reshape(I,64*64,1) duoc su dung de ep kich thuoc cua no ve
% dang mang 1 chieu
dlmwrite('gray.txt',reshape(I,64*64,1,1));
%Tao 1 bo loc trung vi
w=[1/9 1/9 1/9
   1/9 1/9 1/9
   1/9 1/9 1/9]

gray_fil=myfilter(I,w);
imtool(gray_fil)
%Tao ra 1 ham co chuc nang loc anh co ket qua tra ve dau ra img va dau vao
%la f,w
% f la anh ban dau
% w la bo loc 3x3
% ket qua tra ve co dang ma tran va duoc luu vao bien img va khi ta goi ham
% tinh thi bien chua ham nay phai cung kieu du lieu voi img
function img = myfilter(f,w)

%kiem tra xem bo loc co phai 3x3 khong
[m,n]=size(w)
if m~=3 | n~=3 
    error('Bo loc must be 3x3')
end
[x,y]=size(f);
%Ta tao padded cho anh f thanh anh g de khi tich chap do bi mat thong tin
g = zeros(x+2,y+2);
%Sau do ta se luu anh f vao trung tam g
for i=1:x
    for j=1:y
        g(i+1,j+1) = f(i,j);
    end 
end

%cycle through the array and apply the filter 
for i=1:x
    for j=1:y
        img(i,j)=g(i,j)*w(1,1)+g(i+1,j)*w(2,1)+g(i+2,j)*w(3,1) ... %first column
        + g(i,j+1)*w(1,2)+g(i+1,j+1)*w(2,2)+g(i+2,j+1)*w(3,2)... %second column
        + g(i,j+2)*w(1,3)+g(i+1,j+2)*w(2,3)+g(i+2,j+2)*w(3,3);
    end
end


img=uint8(img); 
end

