function ret = children(node,G);
% computes the children of a node


ret = {};
v = node.v;
h = node.h + 1;

while (h <= length(G))
    if (v(h) < length(G{h}))
        new_v = v;
        new_v(h) = new_v(h) + 1;
        new_node.v = new_v;
        new_node.h = h - 1;
        ret{length(ret)+1} = new_node;
    end
    h = h + 1;
end
return
        
