
load census
%whos;
x=cdate;
y=pop;


media=mean(x);
desviacion=std(x);
eXcalar=(x-media)/desviacion;

%plot (x,y, "*r")
a=polyfit(eXcalar,y,1);
b=polyfit(eXcalar,y,2);
c=polyfit(eXcalar,y,3);



evalua=polyval(a,eXcalar);
evalub=polyval(b,eXcalar);
evaluc=polyval(c,eXcalar);
%%

figure;
subplot(2,4,2)
scatter(x,y,"blue", "filled")
title("diagrama de dispersion")
subplot(2,3,4)
plot(eXcalar,evalua);
title("datos grado 1")
subplot(2,3,5)
plot(eXcalar,evalub);
title("datos grado 2")
subplot(2,3,6)
plot(eXcalar,evaluc);
title("datos grado 3")

%%

ecm_1=mean((y-evalua).^2);

ecm_2=mean((y-evalub).^2);

ecm_3=mean((y-evaluc).^2);


fprintf('Error cuadrático medio para ajuste de grado 1: %.2f\n', ecm_1);
fprintf('Error cuadrático medio para ajuste de grado 2: %.2f\n', ecm_2);
fprintf('Error cuadrático medio para ajuste de grado 3: %.2f\n', ecm_3);









 