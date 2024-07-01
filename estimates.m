function ret = estimates(F,Pre,Post);
% Compute the maximum AF & JF paths ended in F

ret = [];
for i = 1 : length(F)
    p = F(i);
    ret = [ret p];
    tin = find(Post(p,:));
    if length(tin) == 1
        pin = find(Pre(:,tin));
    else
        pin = [];
    end
    while (length(tin) <= 1 & isempty(intersect(pin,ret)))
        pnew = pin;
        ret = [ret pnew];
        p = pnew;
        tin = find(Post(p,:));
        if length(tin) == 1
            pin = find(Pre(:,tin));
        else
            pin = [];
        end
    end
end
    
