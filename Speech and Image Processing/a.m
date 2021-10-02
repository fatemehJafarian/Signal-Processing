%1
[x, fs] = audioread("C:\Users\mathf\OneDrive\Desktop\CA3\1.m4a");
cx = ceps(x.');
q = 0:(1/719):1;
plot(q, cx(1:720))
title('aaa, female')

[x, fs] = audioread("C:\Users\mathf\OneDrive\Desktop\CA3\m1.m4a");
cx = ceps(x.');
q = 0:(1/804):1;
plot(q, cx(1:805))
title('aaa, male')
%%
%2
[x, fs] = audioread("C:\Users\mathf\OneDrive\Desktop\CA3\2.m4a");
cx = ceps(x.');
q = 0:(1/669):1;
plot(q, cx(1:670))
title('eee, female')

[x, fs] = audioread("C:\Users\mathf\OneDrive\Desktop\CA3\m2.m4a");
cx = ceps(x.');
q = 0:(1/835):1;
plot(q, cx(1:836))
title('eee, male')
%%
%3
[x, fs] = audioread("C:\Users\mathf\OneDrive\Desktop\CA3\3.m4a");
cx = ceps(x.');
q = 0:(1/719):1;
plot(q, cx(1:720))
title('iii, female')

[x, fs] = audioread("C:\Users\mathf\OneDrive\Desktop\CA3\m3.m4a");
cx = ceps(x.');
q = 0:(1/459):1;
plot(q, cx(1:460))
title('iii, male')
%%
%4
[x, fs] = audioread("C:\Users\mathf\OneDrive\Desktop\CA3\4.m4a");
cx = ceps(x.');
q = 0:(1/832):1;
plot(q, cx(1:833))
title('ooo, female')

[x, fs] = audioread("C:\Users\mathf\OneDrive\Desktop\CA3\m4.m4a");
cx = ceps(x.');
q = 0:(1/881):1;
plot(q, cx(1:882))
title('ooo, male')
%%
%5
[x, fs] = audioread("C:\Users\mathf\OneDrive\Desktop\CA3\5.m4a");
cx = ceps(x.');
q = 0:(1/799):1;
plot(q, cx(1:800))
title('uuu, female')

[x, fs] = audioread("C:\Users\mathf\OneDrive\Desktop\CA3\m5.m4a");
cx = ceps(x.');
q = 0:(1/835):1;
plot(q, cx(1:836))
title('uuu, male')