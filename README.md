# sccm-queries

These are WQL queries to be used for the creations of Device Collections in SCCM.  The data gathered by these queries can be used to monitor metrics for proactive maintenance such as reboot time, free disk space, etc.

#### No Reboot in more than 90 Days
```
select 
SMS_R_SYSTEM.ResourceID,SMS_R_SYSTEM.ResourceType,
SMS_R_SYSTEM.Name,SMS_R_SYSTEM.SMSUniqueIdentifier,
SMS_R_SYSTEM.ResourceDomainORWorkgroup,SMS_R_SYSTEM.Client 
from 
SMS_R_System inner join SMS_G_System_OPERATING_SYSTEM on SMS_G_System_OPERATING_SYSTEM.ResourceID = SMS_R_System.ResourceId 
where DATEDIFF(DD, SMS_G_System_OPERATING_SYSTEM.LastBootUpTime, GETDATE()) > 90
```
