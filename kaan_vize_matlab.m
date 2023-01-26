clear all
diary kaan_vize
%% 1
x = 0:0.2:50;
f1 = sin(x);
f2 = 2*sin(x);
f3 = sin(2*x);
plot(x,f1,x,f2,x,f3)
%%
xlabel('x ekseni');
ylabel('y ekseni');
legend ('f1 grafigi ','f2 grafigi ','f3 grafigi')
title ('Ses Dalgaları')
%%
plot (x , f1 ,'ro ', x , f2 ,'b--',x , f3 ,'g ^')
xlabel('x ekseni');
ylabel('y ekseni');
legend ('f1 grafigi ','f2 grafigi ','f3 grafigi')
title ('Ses Dalgaları')
axis padded
%matlab works sayfasından yararlanarak marjin boşluklarının nasıl
%yapıldığını buldum.
%%
% f1 grafiğinin periyodu 2 pi , f2 grafiğinin periyodu 2 pi ve f3
% fonksiyonun periyodu pi.
%%
figure
x = 0:0.2:10000;
f1 = sin(x);
f2 = 2*sin(x);
f3 = sin(2*x);
plot(x,f1,x,f2,x,f3)
legend ('f1 grafigi ','f2 grafigi ','f3 grafigi')
%Ses aralığını arttırdıkça ses kalitesi tiz ses olmaya başladı her aralığı
%denedim sentetik güzel sanatlar ortaya koyulabilir ancak bu adım aralığını
%küçülttükçe daha net ve kalın sesler çıkartabiliriz. 0.1 adım aralığı
%benim için çok uygun bu adım aralığını saklayabilirdim.
%%
sound(f1)
sound(f2)
sound(f3)
%% 2a
figure
imread('C:\Users\Kaan\Desktop\barbara.jpg.jpg');
img=imread('C:\Users\Kaan\Desktop\barbara.jpg.jpg');
imshow(img)
figure
imread('C:\Users\Kaan\Desktop\goldhill.jpg.jpg');
img2=imread('C:\Users\Kaan\Desktop\goldhill.jpg.jpg');
imshow(img2)
h=fspecial('average', [3 3]);
g= imfilter(img, h);
imshow(g);
h2=fspecial('average', [3 3]);
g2= imfilter(img2, h2);
imshow(g2);
toplam = g+g2;
imshow(toplam)
%yeni resim iç içe geçmiş ve daha çok barbaraya benziyor.
%% b
%% c
figure
barbara2 = imread('C:\Users\Kaan\Desktop\barbara.jpg.jpg')*1/20;
imshow(barbara2)
%resim karardı ve böldüğümüz sayı arttıkça kararma artmaya başladı nedenini
%araştırdım ama bulamadım.
%% d
%% e
imread('C:\Users\Kaan\Desktop\barbara.jpg.jpg');
img=imread('C:\Users\Kaan\Desktop\barbara.jpg.jpg');
imagesc(img)
%imagesc komutunu kullanınca resim 512 ye 512 lik aralıklara bölündü.
%% f
barbara_kucuk=imresize(img,0.25);
imshow(barbara_kucuk)
%sınıfta yazdığımız kodu deneyerek yaptım il başta fakat hata aldığım için
%internette araştırmalara başladım,
%https://osmansatik.wordpress.com/2012/04/22/matlabda-resim-olceklendirme-imresize/
%bulduğum bu siteden yardım alarak yaptım.
%% g
%% h
fark = img - img2;
maxdeger=max(fark);
mindeger=min(fark);
%% i
figure
imhist(img)
figure
imhist(img2)
%% j
I = im2double(img);
s = skewness(I(:))
I2 = im2double(img2);
s2 = skewness(I2(:))
k = kurtosis(double(img(:)))
k2 = kurtosis(double(img2(:)))
%Skewness bir dağılımın simetrik olmama derecesini ölçerken; kurtosis dağılımın ortasında çok fazla veya çok az örneğin bulunma derecesini gösteren bir indekstir.
%% k
ortalama = mean(img(:))
ortalama2 = mean(img2(:))
%bu değer 8.6360* 10üzeri 4 e tekabül eder.
%% l
V=var(size(img))
V2=var(size(img2))