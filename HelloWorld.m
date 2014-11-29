classdef HelloWorld < handle & matlab.mixin.CustomDisplay
    % HelloWorld   An overly complicated 'Hello, World!'
    
    properties(SetAccess = private)
        Message = 'Hello, World.';
    end
    
    methods
        function this = HelloWorld()
            this.Message = strrep( this.Message, '.', '!' );
        end
    end
    
    methods(Access = protected)
        function s = getHeader(this)
            s = this.Message;
        end
        function group = getPropertyGroups(~)
            group = matlab.mixin.util.PropertyGroup.empty();
        end
        function s = getFooter(~)
            s = sprintf( '\n' );
        end
    end
end
