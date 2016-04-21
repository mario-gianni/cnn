function [data,labels] = build_time_segments(x,window_size,k)

[n_samples,m_features] = size(x);

data = zeros((n_samples-1),window_size);

labels = zeros((n_samples-1),1);

errorStruct.message = 'index k has to be <= of the number of features.';
errorStruct.identifier = 'build_time_segments:dimensionMismatch';

if(k>m_features)
    
    error(errorStruct);
    
else

    for i = 1 : (n_samples - 1)

        if(i <= window_size)
            a = x(1:i,k);
            b = window_size - i;
            c = padarray(a',[0 b],'pre');
            l = x(i+1,k);
            data(i,:) = c;
            labels(i) = l;
        else
            b = i - window_size;
            a = x((b+1):i,k);
            l = x(i+1,k);
            data(i,:) = a';
            labels(i) = l;
        end

    end

end

end