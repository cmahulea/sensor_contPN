function A = computeA(Pre,Post,lambda);
% for a contPN computes the dynamical matrix A


A = zeros(size(Post,1),size(Post,1));
for i = 1 : size(Post,1)
    tout = find(Pre(i,:));
    if ~isempty(tout)
        A(i,i) = -lambda(tout);
    end
    tin = find(Post(i,:));
    for j = 1 : length(tin)
        p = find(Pre(:,tin(j)));
        A(i,p) = (lambda(tin(j)) * Post(i,tin(j))) / Pre(p,tin(j));
    end
end
