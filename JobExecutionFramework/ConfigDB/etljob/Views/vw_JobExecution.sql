﻿




CREATE VIEW [etljob].[vw_JobExecution]
AS
SELECT [JobExecutionID]
      ,[JobID]
      ,[ApplicationID]
      ,[GroupID]
      ,[ClientID]
      ,[LayerID]
	  ,[JobStepClusterID]
      ,[MetaGroupID]
      ,[StartTime]
      ,[EndTime]
      ,[Total]
      ,[Started]
      ,[Finished]
      ,[Failed]
      ,[Abnormal]
      ,[CriticalAbnormal]
      ,[CriticalFailed]
      ,[SSISExecutionID]
	  ,[IsBlocked]
	  ,[MasterInternalError]
	  ,[RestartOf] 
	  ,[StopRecoveryID]
	  ,[StoppedByStopID]
	  ,[StopMode]
	  ,[IsRecoveryDisabled]
      ,[AuditID]
	  ,[ExcludingClusterID]
	  ,[Label]
	  ,[JobExecutionEndStatusID]
  FROM [etljob].[JobExecution]
