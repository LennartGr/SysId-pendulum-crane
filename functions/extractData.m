function [t, y, u] = extractData(dataStruct, output)
    data_crane = dataStruct.data_crane;
    t = data_crane(1,:)';
    % default index arm = 2
    index_y = 2;
    if output == "pendulum"
        index_y = 3;
    end
    y = data_crane(index_y,:)';
    u = data_crane(4,:)';
end