function b = float2bin(number,dec_length)
    int = floor(number);
    decimal = number - int;
    Array2 = [];
    if(decimal > 0)
        tempNo2 = decimal;
        i = 0;
        while tempNo2 ~= 0
            if i == dec_length
                break
            end
            i = i + 1;
            tempBinMod2 = floor(tempNo2 * 2);
            tempNo2 = (tempNo2 * 2) - floor(tempNo2 * 2);
            Array2(end + 1) = tempBinMod2;
        end
    end
    tempNo = int;
    Array1 = [];
    
    while tempNo ~= 0
        tempBinMod = mod(tempNo, 2);
        tempNo = floor(tempNo / 2);
        Array1(end + 1) = tempBinMod;
    end

    if length(Array1) == 0
        b=char(sprintf("%i", Array2));
        b=strcat('0', '.', b);
    else if length(Array2) ~= 0
        Array1 = fliplr(Array1);
        Array1 = char(sprintf("%i", Array1));
        Array2 = char(sprintf("%i", Array2));
        b = strcat(Array1, '.', Array2);
    else 
        Array1 = fliplr(Array1);
        b = char(sprintf("%i", Array1));
    end  
end