classdef tHelloWorld < matlab.unittest.TestCase
    methods(Test)
        function saysHelloWorld( test )
            hello = HelloWorld();
            text = iGetDisplayText( hello );
            test.verifyThat( text, iContainsSubstring( 'Hello, World!' ) );
        end
    end
end

function text = iGetDisplayText( object ) %#ok<INUSD>
text = evalc( 'object' );
end

function constraint = iContainsSubstring( varargin )
constraint = matlab.unittest.constraints.ContainsSubstring( varargin{:} );
end
