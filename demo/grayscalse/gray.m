%Read image 
I = imread('gray.jpg');
% Vi kich thuoc la 256x256 nen ta giam moi canh di 4 lan de co anh 64x64
% Ta s nhan duoc mot ma tran co so hang la 64 va so cot la 64
I = imresize(I, 1/4);
%Tiep theo ta se tang kich thuoc hang va cot len 2 de ty chuyen sang FPGA
%ta khong can lam
[x1,y1]=size(I);
%Ta tao padded cho anh f thanh anh g de khi tich chap do bi mat thong tin
g1 = zeros(x1+2,y1+2);
%Sau do ta se luu anh f vao trung tam g
for i=1:x1
    for j=1:y1
        g1(i+1,j+1) = I(i,j);
    end 
end
% Sau do ta chuyen anh 2D ve anh anh 1-D va ghi no ra file text
% Khi do ma tran tao ra co so hang la 4096 va so cot la 1
% Trong do reshape(I,64*64,1) duoc su dung de ep kich thuoc cua no ve
% dang mang 1 chieu de lam viec voi FPGA
I2 = reshape(g1,66*66,1,1);
dlmwrite('gray.txt',I2);
%Tao 1 bo loc trung vi
w=[1/9 1/9 1/9
   1/9 1/9 1/9
   1/9 1/9 1/9]

results=myfilter(I,w);
%Sau do thay doi kich thuoc ma tran results thanh dang [64*64,1]
dlmwrite('gray_matlab.txt',reshape(results,[64*64,1]));
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
%Phan nay ta nhan theo tung phan tu tren 1 cot sau khi nhan xong 1 ma tran
%thi dich sang phai
% cycle through the array and apply the filter 
% for i=1:x
%     for j=1:y
%         img(i,j)=g(i,j)*w(1,1)+g(i+1,j)*w(2,1)+g(i+2,j)*w(3,1) ... %first column
%         + g(i,j+1)*w(1,2)+g(i+1,j+1)*w(2,2)+g(i+2,j+1)*w(3,2)... %second column
%         + g(i,j+2)*w(1,3)+g(i+1,j+2)*w(2,3)+g(i+2,j+2)*w(3,3);
%     end
% end
%Phan nay ta nhan tung phan tu tren 1 hang va dich xuong duoi truoc
for j=1:y
    for i=1:x
        img(i,j)=g(i,j)*w(1,1)+g(i,j+1)*w(1,2)+g(i,j+2)*w(1,3) ... %first row
        + g(i+1,j)*w(2,1)+g(i+1,j+1)*w(2,2)+g(i+1,j+2)*w(2,3)... %second row
        + g(i+2,j)*w(3,1)+g(i+2,j+1)*w(3,2)+g(i+2,j+2)*w(3,3);
    end
end
img=uint8(img); 
end
%Co nhieu cach nhan tich chap trong 1 ma tran
%C1 : nhan tung phan tu tren hang sau khi het thi chuyen hang tiep theo vi
%vay hang ban dau khong doi sau khi nhan het hang thi hang tang len 1 con
%cac cot trong khi nhan 1 hang se tang lien tuc
%C2: nhan tung phan tu tren 1 cot thi nguoc lai la cot chi thay doi khi da
%nhan het cac phan tu tren cot nghia la i se tang lien tuc den khi nhan het
%pahn tu tren ahng do thi bat dau chuyen sang cot moi
%Phan tren ta chi dang de cap la moi nhan 1 ma tran sau khi nhan xong ta
%can dich bo loc vay dich thang hay ngang la tuy
%Neu dich thang = sau khi nhan xong 1 ma tran ta se tang hang len 1 khi het
%hang moi chuyen cot
%Neu dich ngang= sau khi nhan xong 1 ma tran se tang cot len 1 khi het cot
%thi nhay sang hang moi hang viec ta tang hang
