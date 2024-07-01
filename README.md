# sensor_contPN
Optimal sensor placement of continuous Petri nets under infinite servers semantics


Theoretical part of the following algorithms can be consulted xxx. 

MATLAB file [ret,costret] = optobs(Pre,Post,lambda,cost): the main file that receives Pre, Post the incidence matrices, lambda a vector of the firing rates and cost a vector with cost as an input parameters and returns one solution (without root strongly-connected components).

MATLAB file ret = estimates(F,Pre,Post): an algorithm that computes the places that are structural observable from a set F given as a input paramater.

MATLAB file nodes = children(node): computes the all the children of a node.

MATLAB file ret = isSolution(v,A): returns TRUE (1) if the contPN system defined by the dynamical matrix A and the set of measured places v is observable, otherwise returns 0.

MATLAB file generate(G,A,F,cost): performs a combinatorial search on a tree looking for the optimal observability.

MATLAB file A = computeA(Pre,Post,lambda): for a contPN computes the dynamical matrix A.
