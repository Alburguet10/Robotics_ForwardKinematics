%Symbolic Variables for Teta (Angles)
syms t1 t2 t3 t4 t5;
syms l1 l2;
contador = 1;
NumMatrices = input("Inserte numero de matrices");

%Identity Matrix to keep the first matrix value after the multiplication
TotalAnswer = [1 0 0 0;
               0 1 0 0;
               0 0 1 0;
               0 0 0 1];

%Loop that multiplies all the matrices the user needs
while(contador <= NumMatrices)
    alpha = input("Place alpha: ");
    a = input("Place a: ");
    d = input("Place d: ");
    theta = input("Place theta: ");
    
    m1 = [cosd(theta) -sind(theta) 0 0;
          sind(theta) cosd(theta) 0 0;
          0 0 1 0;
          0 0 0 1];
      
    m4 = [1 0 0 0;
          0 cosd(alpha) -sind(alpha) 0;
          0 sind(alpha) cosd(alpha) 0;
          0 0 0 1];
     
    m2 = [1 0 0 0;
          0 1 0 0;
          0 0 1 d;
          0 0 0 1];
      
    m3 = [1 0 0 a;
          0 1 0 0;
          0 0 1 0;  
          0 0 0 1];   
    %Print actual matrix result
    Answer = m1*m2*m3*m4
    %Print resultant matrix
    TotalAnswer = TotalAnswer*Answer
    contador = contador + 1;
end