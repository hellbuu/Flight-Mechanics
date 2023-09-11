% variáveis angulares

syms psi theta phi g We Wb



% matrizes

Lpsi = [cos(psi) sin(psi) 0; -sin(psi) cos(psi) 0; 0 0 1];

Ltheta = [cos(theta) 0 -sin(theta); 0 1 0; sin(theta) 0 cos(theta)];

Lphi = [1 0 0; 0 cos(phi) sin(phi); 0 -sin(phi) cos(phi)];



% vetor peso no eixo da terra
We = [0; 0; g];



% matriz de rotação terra corpo

LEB = Lphi*Ltheta*Lpsi;



% convertendo We para o eixo do corpo


Wb = LEB * We