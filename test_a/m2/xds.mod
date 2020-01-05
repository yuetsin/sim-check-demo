<*+ M2EXTENSIONS *>
--------------------------------------------------------------------------------
--                      Excelsior XDS Test Coverage System
--                          (c) 2015, Excelsior Ltd.
-- Module:       xrTCSx86
-- Mission:  Test Coverage Run-Time Support
-- Synonym:  tc
-- Authors:  Lvov Konstantin
-- Created:  24-Jul-2015
--               
-- Modula-2 definition module should be always provided with implementation module. 
-- So, stub implementation of run-time functions are provided. Real implementation
-- are not required in compile time.                       
--------------------------------------------------------------------------------
<* ALIGNMENT = '8' *> 
IMPLEMENTATION MODULE xrTCSx86;

IMPORT sys := SYSTEM;

<* PUSH *><* WOFF301+ *><* WOFF311+ *>

PROCEDURE InitIterationCounter ( index_0: TIndex
                               ; VAR local_counter: TCounter
                               ; VAR counters: ARRAY OF TCounter
                               );
BEGIN
  ASSERT(FALSE);
END InitIterationCounter;

--------------------------------------------------------------------------------
PROCEDURE IncreaseIterationCounter ( index_0: TIndex
                                   ; index_1: TIndex
                                   ; index_N: TIndex
                                   ; VAR local_counter: TCounter
                                   ; VAR counters: ARRAY OF TCounter
                                   );
BEGIN
  ASSERT(FALSE);
END IncreaseIterationCounter;
