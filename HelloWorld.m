classdef HelloWorld < handle
    % HelloWorld   An overly complicated 'Hello, World!'
    
    properties(SetAccess = private)
        Message = 'Hello, World.';
    end
    
    methods
        function this = HelloWorld()
            this.Message = strrep( this.Message, '.', '!' );
        end
    end
end
