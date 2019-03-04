function angle = cosineBetweenVectors (vector1, vector2) 
    if (~isvector(vector1) || ~isvector(vector2))
        error ('Input must be a vector')
    end
    angle = dot(vector1,vector2)/(norm(vector1) * norm(vector2));
end