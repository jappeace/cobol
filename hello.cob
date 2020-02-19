HELLO * HISTORIC EXAMPLE OF HELLO WORLD IN COBOL
       >>SOURCE FORMAT IS FREE
       identification division.
       program-id. sample.

       environment division.
       configuration section.
       repository.
           function all intrinsic.

       data division.
       working-storage section.
       01 rc usage binary-long.
       01 win usage pointer.
       01 extraneous-pointer usage pointer.

       procedure division.
       sample-main.
       call "AG_InitCore" using null by value 0 returning rc
           on exception display "error: no libagar" upon syserr
       end-call
       if rc = -1 then
           display "error: AG_InitCore failure" upon syserr
           goback
       end-if
       call "AG_InitGraphics" using by value 0 returning rc
       if rc = -1 then
           display "error: AG_InitGraphics failure" upon syserr
           goback
       end-if

       call "AG_WindowNew" using by value 0 returning win
       call "AG_WindowSetGeometryAligned" using by value win 2 200 100
           returning omitted
       call "AG_LabelNew" using
           by value win 0
           by reference "Hello, world"
       returning extraneous-pointer
       call "AG_WindowShow" using by value win returning omitted
       call "AG_EventLoop" returning rc

       display "Agar rc = " rc
       goback.
       end program sample.

