select CImg,VName,CType,RDaily,RWeekly,RMonthly 
from 
Vehicle join Hub 
on 
Vehicle.HubId=Hub.HubId inner join CarClass 
on 
Vehicle.CarId=CarClass.CarId
where
HName='Patel Nagar' and Available=1 and FuelStatus=1 and ServiceDate 
not between 
'2018-05-23'  and '2018-05-27';
 