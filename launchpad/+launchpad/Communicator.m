classdef Communicator < rtw.connectivity.RtIOStreamHostCommunicator
    %COMMUNICATOR implements a host-side communicator for TI LaunchPad
    
    methods
        function this = Communicator(componentArgs, ...
                launcher, rtiostreamLib)
            % This method simply passes all the arguments to the
            % superclass constructor
            
            this@rtw.connectivity.RtIOStreamHostCommunicator...
                (componentArgs, launcher, rtiostreamLib);
        end
        
        %         function startCommands(this)
        %         % This method is called after host machine has opened a serial
        %         % connection with the target but before communications (e.g. PIL
        %         % protocol have taken place). The purpose of this method
        %         % call is to wait until the reset of the target is complete. To
        %         % check if reset is complete, we must wait for a string of data
        %         % that is transmitted by the target with the target's implementation
        %         % of rtIOStreamOpen. When this string is received, we know that
        %         % the target reset is complete and we can start using the serial
        %         % connection to communicate with it.
        %
        %             error(nargchk(1, 1, nargin, 'struct'));
        %
        %             dataSize=1;
        %
        %             timeout = 1;
        %
        %             delay = 0;
        %             deltaT = 0.1;
        %             dataLength = 0;
        %             while dataLength==0 && (delay <= timeout)
        %                 [errorCode, recvdData, dataLength] = rtiostream_wrapper...
        %                     (this.getRtIOStreamLib, ...
        %                     'recv',...
        %                     this.getStationID, ...
        %                     dataSize);
        %                 assert(errorCode==0);
        %
        %                 if dataLength==0
        %                     pause(deltaT);
        %                     delay = delay + deltaT;
        %                 else
        %                     initByteValue=65;
        % 					disp(['Got magic sequence from target: ',num2str(recvdData)]);
        %                     assert(recvdData==initByteValue,...
        %                         'Target must transmit byte indicating startup is complete');
        %                 end
        %             end
        %
        %             % Non-receipt of the expected data may occur if the target reset
        %             % completes before the host is ready to receive the data; this
        %             % is not an error so it is safe to continue even if no data was
        %             % received.
        %
        %         end
    end
end
