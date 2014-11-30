classdef tHelloWorld < matlab.unittest.TestCase
    methods(Test)
        function saysHelloWorld( test )
            hello = HelloWorld();
            test.verifyThat( iDisplayOf( hello ), ...
                iContainsSubstring( 'Hello, World!' ) );
        end
    end
end

function text = iDisplayOf( object ) %#ok<INUSD>
text = evalc( 'object' );
end

function constraint = iContainsSubstring( varargin )
constraint = matlab.unittest.constraints.ContainsSubstring( varargin{:} );
end
