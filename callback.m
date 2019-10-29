k=get(c1,'value');
step(k*G/(1+k*G));
uicontrol('style','text','string',int2str(k),'position',[.1 .1 .5 .5]);
