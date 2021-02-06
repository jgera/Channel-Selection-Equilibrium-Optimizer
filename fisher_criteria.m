function F = fisher_criteria(X1, X2)

    m1 = mean(X1);
    m2 = mean(X2);
    
    v1 = var(X1);
    v2 = var(X2);

    
    F = ((m1 - m2)^2) / (v1 + v2); 
    
    
end