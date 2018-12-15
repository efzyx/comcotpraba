#################################################
#                                               #
# Control file for COMCOT program (v1.7)        #
#                                               #
#################################################
#--+-----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8
#===============================================:===============================
# General Parameters for Simulation             : Value Field                  |
#===============================================:===============================
#Job Description: NZ30sec bathymetry, Spherical Coordinates for code testing
 Total run time (Wall clock, seconds)           :  9000.000
 Time interval to Save Data    ( unit: sec )    :    60.0
 Output Zmax & TS (0-Max Z;1-Timeseries;2-Both) :     2
 Start Type (0-Cold start; 1-Hot start)         :     0
 Resuming Time If hot start (Seconds)           :  8000.00
 Specify Min WaterDepth offshore  (meter)       :     0.00
 Initial Cond. (0:FLT,1:File,2:WM,3:LS,4:FLT+LS):     1
 Specify BC  (0-Open;1-Sponge;2-Wall;3-FACTS)   :     0
 Specify Input Z filename (for BC=3, FACTS)     : mw94_n22_nz_ha.xyt
 Specify Input U filename (for BC=3, FACTS)     : mw94_n22_nz_ua.xyt
 Specify Input V filename (for BC=3, FACTS)     : mw94_n22_nz_va.xyt

#===============================================:===============================
# Parameters for Fault Model (Segment 01)       :Values                        |
#===============================================:===============================
 No. of FLT Planes (With fault_multi.ctl if >1) :   1
 Fault Rupture Time (seconds)                   :   5.0
 Faulting Option (0: Model; 1- Data;)           :   1
 Focal Depth                             (meter):   10000.000
 Length of source area                   (meter):  120000.000
 Width of source area                    (meter):   80000.000
 Dislocation of fault plate              (meter):       3.690
 Strike direction (theta)               (degree):     215.000
 Dip  angle       (delta)               (degree):      14.000
 Slip angle       (lamda)               (degree):      90.000
 Origin of Comp. Domain (Layer 01) (Lat, degree): -135000
 Origin of Comp. Domain (Layer 01) (Lon, degree): 3273850
 Epicenter: Latitude                    (degree): -23259
 Epicenter: Longitude                   (degree): 3888900.1
 File Name of Deformation Data                  : comcot_ini.dep
 Data Format Option (0-COMCOT; 1-MOST; 2-XYZ)   :     2

#===============================================:===============================
#  Parameters for Wave Maker                    :Values                        |
#===============================================:===============================
 Wave type  ( 1:Solit, 2:given, 3:focusing )    :     1
 FileName of Customized Input (for Type=2)      : fse.dat
 Incident direction( 1:top,2:bt,3:lf,4:rt,5:ob ):     2
 Characteristic Wave Amplitude        (meter)   :     0.500
 Typical Water depth                  (meter)   :  2000.000 
 
#===============================================:===============================
#  Parameters for Submarine LS/Transient Motion :ValUes                        |
#===============================================:===============================
 X Coord. of Left/West Edge of Landlide Area    :  177.00
 X Coord. of Right/East Edge of Landlide Area   :  179.00
 Y Coord. of Bottom/South Edge of Landlide Area :  -41.00
 Y Coord. of Top/North Edge of Landlide Area    :  -39.00
 File Name of landslide Data                    : landslide_test.dat
 Data Format Option (0-Old; 1-XYT; 2-Function)  :     2
 
#===============================================:===============================
# Configurations for all grids                  :Values                        |
#===============================================:===============================
# Parameters for 1st-level grid -- layer 01     :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     0
 Coordinate System    (0:spherical, 1:cartesian):     1
 Governing Equations  (0:linear,    1:nonlinear):     0
 Grid Size  (dx, sph:minute, cart:meter)        :  1350.0
 Time step                            ( second ):     1.0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.025
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 X_start                                        :  -135000.
 X_end                                          :  1078650. 
 Y_Start                                        :  3273850.
 Y_end                                          :  4015000.
 File Name of Bathymetry Data                   : depth_1350-02.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2
 Grid Identification Number                     :    01
 Grid Level                                     :     1
 Parent Grid's ID Number                        :    -1

#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 02    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     0
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.025
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :   526500.
 X_end                                          :   809550.
 Y_start                                        :  3677950. 
 Y_end                                          :  3907000.
 FileName of Water depth data                   : depth_0450-07.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2
 Grid Identification Number                     :    02
 Grid Level                                     :     2
 Parent Grid's ID Number                        :    01

#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 03    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     0
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.025
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :  598500.
 X_end                                          :  688350.
 Y_start                                        : 3754150.
 Y_end                                          : 3817000.
 FileName of Water depth data                   : depth_0150-19.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2 
 Grid Identification Number                     :    03
 Grid Level                                     :     3
 Parent Grid's ID Number                        :    02 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 04    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     2
 Manning's Roughness Coef. (For fric.option=0)  :     0.025
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :  603000.
 X_end                                          :  649450.
 Y_start                                        : 3764550.
 Y_end                                          : 3800500.
 FileName of Water depth data                   : depth_0050-47.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2 
 Grid Identification Number                     :    04
 Grid Level                                     :     4
 Parent Grid's ID number                        :    03 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 05    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     2
 Manning's Roughness Coef. (For fric.option=0)  :     0.025
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :  649500.
 X_end                                          :  683950.
 Y_start                                        : 3781050.
 Y_end                                          : 3808000.
 FileName of Water depth data                   : depth_0050-48.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2 
 Grid Identification Number                     :    05
 Grid Level                                     :     4
 Parent Grid's ID number                        :    03 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 06    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.025
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :  108000.
 X_end                                          :  566550.
 Y_start                                        : 3596950.
 Y_end                                          : 3866500.
 FileName of Water depth data                   : depth_0450-06.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2 
 Grid Identification Number                     :    06
 Grid Level                                     :     2
 Parent Grid's ID number                        :    01
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 07    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     0
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.025
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :  625500.
 X_end                                          :  724350.
 Y_start                                        : 3803650.
 Y_end                                          : 3898000.
 FileName of Water depth data                   : depth_0150-20.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2
 Grid Identification Number                     :    07
 Grid Level                                     :     3
 Parent Grid's ID number                        :    02 

#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 08    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     2
 Manning's Roughness Coef. (For fric.option=0)  :     0.025
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :  630000.
 X_end                                          :  683950.
 Y_start                                        : 3848550.
 Y_end                                          : 3896500.
 FileName of Water depth data                   : Modified Nagoya-ko_50-50_transform.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2 
 Grid Identification Number                     :    08
 Grid Level                                     :     4
 Parent Grid's ID number                        :    07
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 09    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     0
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     2
 Manning's Roughness Coef. (For fric.option=0)  :     0.025
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :  679500.
 X_end                                          :  722950.
 Y_start                                        : 3818550.
 Y_end                                          : 3847000.
 FileName of Water depth data                   : depth_0050-52_mod.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2 
 Grid Identification Number                     :    09
 Grid Level                                     :     4
 Parent Grid's ID number                        :    07
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 10    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.025
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :  252000.
 X_end                                          :  355350.
 Y_start                                        : 3610150.
 Y_end                                          : 3709000.
 FileName of Water depth data                   : depth_0150-15.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2 
 Grid Identification Number                     :    10
 Grid Level                                     :     3
 Parent Grid's ID number                        :    06
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 11    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.025
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :  423000.
 X_end                                          :  548850.
 Y_start                                        : 3695650.
 Y_end                                          : 3799000.
 FileName of Water depth data                   : depth_0150-17.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2 
 Grid Identification Number                     :    11
 Grid Level                                     :     3
 Parent Grid's ID number                        :    06
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 12    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     2
 Manning's Roughness Coef. (For fric.option=0)  :     0.025
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :  297000.
 X_end                                          :  331450.
 Y_start                                        : 3616050.
 Y_end                                          : 3659500.
 FileName of Water depth data                   : depth_0050-37.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2 
 Grid Identification Number                     :    12
 Grid Level                                     :     4
 Parent Grid's ID number                        :    10
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 13    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     2
 Manning's Roughness Coef. (For fric.option=0)  :     0.025
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :  426000.
 X_end                                          :  476950.
 Y_start                                        : 3703050.
 Y_end                                          : 3739000.
 FileName of Water depth data                   : depth_0050-41.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2 
 Grid Identification Number                     :    13
 Grid Level                                     :     4
 Parent Grid's ID number                        :    11
 
