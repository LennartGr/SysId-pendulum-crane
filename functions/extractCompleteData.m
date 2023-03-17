function [t, y, u] = extractCompleteData(dataStruct, output, Ts, skipSec)
    startIndex = (skipSec / Ts) + 1; 
    data_crane = dataStruct.data_crane_complete;
    t = data_crane(1, startIndex:end)';
    index_y = 2;
    if output == "pendulum"
        index_y = 3;
    end
    y = data_crane(index_y, startIndex:end)';
    u = data_crane(4, startIndex:end)';
end