MODULE irt_parameters

INTEGER, PARAMETER    :: domainsize_x = 700!498!497!
INTEGER, PARAMETER    :: domainsize_y = 401!284!249!

LOGICAL, PARAMETER    :: llonlatgrid = .FALSE.
REAL, PARAMETER       :: unit_area = 12345 ! km^2
! only used if llonlatgrid=.TRUE., otherwise set to arbitrary value:
REAL, PARAMETER       :: lat_first = 14.95!15.11718 !20.0390625 !
REAL, PARAMETER       :: lat_inc = 0.1
REAL, PARAMETER       :: lon_inc = 0.1

LOGICAL, PARAMETER    :: lperiodic_x = .FALSE.
LOGICAL, PARAMETER    :: lperiodic_y = .FALSE.

INTEGER, PARAMETER    :: n_fields = 1   ! number of additional averaging fields

! bins of coarse velocity field
INTEGER, PARAMETER    :: time_steps = 744    ! total number of timesteps
INTEGER, PARAMETER    :: nt_bins = 16        ! 6 hourly
INTEGER, PARAMETER    :: nx_bins = 1
INTEGER, PARAMETER    :: ny_bins = 1

REAL, PARAMETER       :: threshold = 221.0            ! for 221K+pre5mm/h
! REAL, PARAMETER       :: threshold = 241.0            ! for intensity
REAL, PARAMETER       :: threshold1 = 221.0            ! for intensity
REAL, PARAMETER       :: minimum_size = 5000    !changed     ! for 221K+pre5mm/h+5000m2
REAL, PARAMETER       :: maximum_size = 50000    !added    
! REAL, PARAMETER       :: minimum_size = 60000    !changed     ! events smaller than that will be sorted out
REAL, PARAMETER       :: threshold2 = 5.0        !changed     ! for 221K+pre5mm/h
! REAL, PARAMETER       :: threshold2 = 2.0        !changed     ! for intensity
REAL, PARAMETER       :: minimum_size2 = 500    !changed     ! for 221K+pre5mm/h(10%)+5000m2
! REAL, PARAMETER       :: maximum_size2 = 5000    !changed     ! for 221K+pre5mm/h(10%)+5000m2
! REAL, PARAMETER       :: minimum_size2 = 3600    !changed     ! events smaller than that will be sorted out
INTEGER, PARAMETER    :: minhour = 3 

REAL, PARAMETER       :: termination_sensitivity=1.0      ! Choose value between 0.0 and 1.0

REAL, PARAMETER       :: max_velocity = 25.      !changed   25*0.14*111=388km/h=108m/s=3.5degree/h  ! adjust acordingly
                                              ! velocities>max_velocity will be ignored to remove outliers
! define a minimal number of cells required for a coarse grained coordinate to be evaluated 
! if there are less, missing value will be assigned to that coarse cell
INTEGER, PARAMETER    :: min_cells = 100          !NOT USE

INTEGER, PARAMETER    :: max_no_of_cells=5000  ! buffer size, increase if necessary
INTEGER, PARAMETER    :: max_no_of_tracks=5000    ! buffer size, increase if necessary
INTEGER, PARAMETER    :: max_length_of_track=1000  ! buffer size, increase if necessary

REAL, PARAMETER       :: miss=-9999.           ! value<miss ==> missing_value

END MODULE irt_parameters

