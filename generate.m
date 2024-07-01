function [measuredplaces,measuredcost]=generate(G,A,F,cost);
% function that makes the tree search looking for the optimal 
% cost of the observability

measuredplaces = [];
measuredcost = sum(cost) + 1;;


h = 0;
node.v = ones(1,length(G));
node.h = h;
I = [];
nodes{1} = node;

while ~isempty(nodes)
    tempNode = nodes{1};
    current = tempNode.v;
    h = tempNode.h;
    nodes(1)=[];
    
    
    cont = 0;
    for i = 1 : size(I,1)
        if (min(current - I(i,:)) >= 0)
            cont = 1;
            break;
        end
    end
    if (cont == 1)
        continue;
    end
    
    places = [];
    for i = 1 : length(current)
        temp = G{i};
        places(i) =  temp(current(i));
    end
    places = setdiff(places,0);
    if isSolution(union(places,F),A)
        if sum(cost(places)) < measuredcost
            measuredcost = sum(cost(places));
            measuredplaces = places;
        end
    else
        I(size(I,1)+1,:) = current;
        continue;
    end
    next = children(tempNode,G);
    for i = 1 : length(next)
        nodes{length(nodes)+1} = next{i};
    end
end
    
    
