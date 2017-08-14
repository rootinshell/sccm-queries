SELECT  distinct 
 CS.name0 as 'Computer Name', 
 BIOS.SerialNumber0 as 'Serial Number', 
 CS.Model0 as 'Model'
from  
  v_GS_COMPUTER_SYSTEM CS right join v_GS_PC_BIOS BIOS on BIOS.ResourceID = CS.ResourceID
 right join v_GS_SYSTEM SYS on SYS.ResourceID = CS.ResourceID  
 right join v_GS_OPERATING_SYSTEM OS on OS.ResourceID = CS.ResourceID  
 right join v_RA_System_SMSAssignedSites RAA on RAA.ResourceID = CS.ResourceID
 right join V_GS_X86_PC_MEMORY RAM on RAM.ResourceID = CS.ResourceID 
 right join v_GS_Logical_Disk LDisk on LDisk.ResourceID = CS.ResourceID
JOIN v_GS_PROCESSOR Processor on SYS.ResourceID=Processor.ResourceID 
right join v_GS_SYSTEM_ENCLOSURE SE on SE.ResourceID = CS.ResourceID 
where 
 CS.name0 in (
 'SXL-MXL6310RZH',
'HMI3048063',
'HMI3048085',
'HMI3048086',
'SXL-MXL6292YWJ',
'SXL-MXL6301D9Q',
'SXL-MXL6301DR9',
'SXL-MXL6310RZG',
'SXL-MXL6310RZJ',
'SXL-MXL6310RZK',
'SXL-MXL6310RZL',
'SXL-MXL6312KH4',
'SXL-MXL6312KH5',
'SXL-MXL6312KH6',
'WS3015073',
'WS3015074',
'WS3015075',
'WS3015076',
'WS3015078',
'WS3015079',
'WS3015083',
'WS3015087',
'WS3015090',
'WS3031825',
'WS3031842',
'WS3031843',
'WS3031844',
'WS3031845',
'WS3031846',
'WS3031847',
'WS3031848',
'WS3031849',
'WS3031873',
'WS3031890',
'WS3031892',
'WS3031897',
'WS3031898',
'WS3031900',
'WS3031901',
'WS3031906',
'ws3031907',
'ws3031908',
'ws3031909',
'ws3031910',
'WS3031911',
'WS3036430',
'WS3036458',
'WS3036460',
'WS3046005',
'WS3048062',
'WS3048064',
'WS3048069',
'WS3048071',
'WS3048072',
'WS3048087',
'WS3048089',
'WS3048122',
'WS3048128',
'WS3048130',
'WS3048133'
 )
group by 
 CS.Name0, 
 BIOS.SerialNumber0, 
 CS.Model0