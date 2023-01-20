1. True or False: we can prevent the heap being erased during upgrades by using a `stable` heap.  
--> False

2. **A.call() -> B.call() -> C** 
How much time (or rounds of consensus) do we need to wait for an answer?
--> depends on whether A, B and C are on the same subnet or different subnets
worst case (A, B, C all on different subnets): 8 sec (4 rounds)
best case (A, B, C all on the same subnet): 4 sec (2 rounds)

3. Is possible to realize an intercanister call in query mode? 
--> no, but a feature related to this is in the making: https://forum.dfinity.org/t/proposal-composite-queries/15979 