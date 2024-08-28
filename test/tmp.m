close,clc,clear;


fid = fopen("msh_OBJ#31.msh");
data = fgetl(fid);
while(data ~= -1)
    if(strtrim(data) == "$begin 'points'")
        for ii = 1:3
            data = fgetl(fid);
        end
        matches = regexp(data, '[-+]?\d*\.?\d+(?:[eE][-+]?\d+)?', 'match');
        numOfNodes = str2double(matches);
        Nodes_Coord = zeros(numOfNodes, 5);
        for ii = 1:numOfNodes
            data = fgetl(fid);
            matches = regexp(data, '[-+]?\d*\.?\d+(?:[eE][-+]?\d+)?', 'match');
            Nodes_Coord(ii, :) = str2double(matches);
        end
        Nodes_Coord(:, 1) = [];
    end
    if(strtrim(data) == "$begin 'elements'")
        data = fgetl(fid);
        Element = [];
        while(strtrim(data) ~= "$end 'elements'")
            matches = regexp(data, '[-+]?\d*\.?\d+(?:[eE][-+]?\d+)?', 'match');
            Element = [Element; str2double(matches)];
            data = fgetl(fid);
        end 
    end
    data = fgetl(fid);
end

patch('vertices', Nodes_Coord(:, 2:3), 'faces', Element(:, 3:5),'FaceColor',[1 1 1]);
patch('vertices', Nodes_Coord(:, 2:3), 'faces', Element(94, 3:4),'FaceColor',[1 0 0]);
axis equal;
