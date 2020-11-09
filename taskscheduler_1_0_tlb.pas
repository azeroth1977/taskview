Unit TaskScheduler_1_0_TLB;

//  Imported TaskScheduler on 12.10.2020 15:08:53 from C:\Windows\SysWOW64\taskschd.dll

{$mode delphi}{$H+}

interface

// Dependency: stdole v2 (stdole2.pas)
//  Warning: 'GUID' not automatable in ITaskFolderCollectiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITaskFolderCollectiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITaskFolderCollectiondisp.GetTypeInfo
//  Warning: 'GUID' not automatable in ITaskFolderCollectiondisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in ITaskFolderCollectiondisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in ITaskFolderCollectiondisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in ITaskFolderCollectiondisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in ITaskFolderCollectiondisp.Invoke
//  Warning: 'GUID' not automatable in ITaskFolderdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITaskFolderdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITaskFolderdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in ITaskFolderdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in ITaskFolderdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in ITaskFolderdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in ITaskFolderdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in ITaskFolderdisp.Invoke
//  Warning: 'GUID' not automatable in IRegisteredTaskdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IRegisteredTaskdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IRegisteredTaskdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IRegisteredTaskdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IRegisteredTaskdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IRegisteredTaskdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IRegisteredTaskdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IRegisteredTaskdisp.Invoke
//  Warning: '_SYSTEMTIME' not automatable in IRegisteredTaskdisp.GetRunTimes
//  Warning: '_SYSTEMTIME' not automatable in IRegisteredTaskdisp.GetRunTimes
//  Warning: 'P_SYSTEMTIME' not automatable in IRegisteredTaskdisp.GetRunTimes
//  Warning: 'GUID' not automatable in IRunningTaskdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IRunningTaskdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IRunningTaskdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IRunningTaskdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IRunningTaskdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IRunningTaskdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IRunningTaskdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IRunningTaskdisp.Invoke
//  Warning: 'GUID' not automatable in IRunningTaskCollectiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IRunningTaskCollectiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IRunningTaskCollectiondisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IRunningTaskCollectiondisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IRunningTaskCollectiondisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IRunningTaskCollectiondisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IRunningTaskCollectiondisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IRunningTaskCollectiondisp.Invoke
//  Warning: 'GUID' not automatable in ITaskDefinitiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITaskDefinitiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITaskDefinitiondisp.GetTypeInfo
//  Warning: 'GUID' not automatable in ITaskDefinitiondisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in ITaskDefinitiondisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in ITaskDefinitiondisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in ITaskDefinitiondisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in ITaskDefinitiondisp.Invoke
//  Warning: 'GUID' not automatable in IRegistrationInfodisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IRegistrationInfodisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IRegistrationInfodisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IRegistrationInfodisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IRegistrationInfodisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IRegistrationInfodisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IRegistrationInfodisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IRegistrationInfodisp.Invoke
//  Warning: renamed parameter 'Type' in ITriggerCollection.Create to 'Type_'
//  Warning: 'GUID' not automatable in ITriggerCollectiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITriggerCollectiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITriggerCollectiondisp.GetTypeInfo
//  Warning: 'GUID' not automatable in ITriggerCollectiondisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in ITriggerCollectiondisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in ITriggerCollectiondisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in ITriggerCollectiondisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in ITriggerCollectiondisp.Invoke
//  Warning: renamed parameter 'Type' in ITriggerCollection.Create to 'Type_'
//  Warning: renamed property 'Type' in ITrigger to 'Type_'
//  Warning: 'GUID' not automatable in ITriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITriggerdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in ITriggerdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in ITriggerdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in ITriggerdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in ITriggerdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in ITriggerdisp.Invoke
//  Warning: 'GUID' not automatable in IRepetitionPatterndisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IRepetitionPatterndisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IRepetitionPatterndisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IRepetitionPatterndisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IRepetitionPatterndisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IRepetitionPatterndisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IRepetitionPatterndisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IRepetitionPatterndisp.Invoke
//  Warning: 'GUID' not automatable in ITaskSettingsdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITaskSettingsdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITaskSettingsdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in ITaskSettingsdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in ITaskSettingsdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in ITaskSettingsdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in ITaskSettingsdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in ITaskSettingsdisp.Invoke
//  Warning: 'GUID' not automatable in IIdleSettingsdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IIdleSettingsdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IIdleSettingsdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IIdleSettingsdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IIdleSettingsdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IIdleSettingsdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IIdleSettingsdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IIdleSettingsdisp.Invoke
//  Warning: 'GUID' not automatable in INetworkSettingsdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in INetworkSettingsdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in INetworkSettingsdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in INetworkSettingsdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in INetworkSettingsdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in INetworkSettingsdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in INetworkSettingsdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in INetworkSettingsdisp.Invoke
//  Warning: 'GUID' not automatable in IPrincipaldisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IPrincipaldisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IPrincipaldisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IPrincipaldisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IPrincipaldisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IPrincipaldisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IPrincipaldisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IPrincipaldisp.Invoke
//  Warning: renamed parameter 'Type' in IActionCollection.Create to 'Type_'
//  Warning: 'GUID' not automatable in IActionCollectiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IActionCollectiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IActionCollectiondisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IActionCollectiondisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IActionCollectiondisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IActionCollectiondisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IActionCollectiondisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IActionCollectiondisp.Invoke
//  Warning: renamed parameter 'Type' in IActionCollection.Create to 'Type_'
//  Warning: renamed property 'Type' in IAction to 'Type_'
//  Warning: 'GUID' not automatable in IActiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IActiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IActiondisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IActiondisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IActiondisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IActiondisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IActiondisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IActiondisp.Invoke
//  Warning: 'GUID' not automatable in IRegisteredTaskCollectiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IRegisteredTaskCollectiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IRegisteredTaskCollectiondisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IRegisteredTaskCollectiondisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IRegisteredTaskCollectiondisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IRegisteredTaskCollectiondisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IRegisteredTaskCollectiondisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IRegisteredTaskCollectiondisp.Invoke
//  Warning: 'GUID' not automatable in ITaskServicedisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITaskServicedisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITaskServicedisp.GetTypeInfo
//  Warning: 'GUID' not automatable in ITaskServicedisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in ITaskServicedisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in ITaskServicedisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in ITaskServicedisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in ITaskServicedisp.Invoke
//  Warning: renamed parameter 'input' in ITaskVariables.SetOutput to 'input_'
//  Warning: 'GUID' not automatable in ITaskNamedValuePairdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITaskNamedValuePairdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITaskNamedValuePairdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in ITaskNamedValuePairdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in ITaskNamedValuePairdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in ITaskNamedValuePairdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in ITaskNamedValuePairdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in ITaskNamedValuePairdisp.Invoke
//  Warning: 'GUID' not automatable in ITaskNamedValueCollectiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITaskNamedValueCollectiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITaskNamedValueCollectiondisp.GetTypeInfo
//  Warning: 'GUID' not automatable in ITaskNamedValueCollectiondisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in ITaskNamedValueCollectiondisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in ITaskNamedValueCollectiondisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in ITaskNamedValueCollectiondisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in ITaskNamedValueCollectiondisp.Invoke
//  Warning: 'GUID' not automatable in IIdleTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IIdleTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IIdleTriggerdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IIdleTriggerdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IIdleTriggerdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IIdleTriggerdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IIdleTriggerdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IIdleTriggerdisp.Invoke
//  Warning: renamed property 'Type' in IIdleTrigger to 'Type_'
//  Warning: 'GUID' not automatable in ILogonTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ILogonTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ILogonTriggerdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in ILogonTriggerdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in ILogonTriggerdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in ILogonTriggerdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in ILogonTriggerdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in ILogonTriggerdisp.Invoke
//  Warning: renamed property 'Type' in ILogonTrigger to 'Type_'
//  Warning: 'GUID' not automatable in ISessionStateChangeTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ISessionStateChangeTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ISessionStateChangeTriggerdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in ISessionStateChangeTriggerdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in ISessionStateChangeTriggerdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in ISessionStateChangeTriggerdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in ISessionStateChangeTriggerdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in ISessionStateChangeTriggerdisp.Invoke
//  Warning: renamed property 'Type' in ISessionStateChangeTrigger to 'Type_'
//  Warning: 'GUID' not automatable in IEventTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IEventTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IEventTriggerdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IEventTriggerdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IEventTriggerdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IEventTriggerdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IEventTriggerdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IEventTriggerdisp.Invoke
//  Warning: renamed property 'Type' in IEventTrigger to 'Type_'
//  Warning: 'GUID' not automatable in ITimeTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITimeTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITimeTriggerdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in ITimeTriggerdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in ITimeTriggerdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in ITimeTriggerdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in ITimeTriggerdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in ITimeTriggerdisp.Invoke
//  Warning: renamed property 'Type' in ITimeTrigger to 'Type_'
//  Warning: 'GUID' not automatable in IDailyTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IDailyTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IDailyTriggerdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IDailyTriggerdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IDailyTriggerdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IDailyTriggerdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IDailyTriggerdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IDailyTriggerdisp.Invoke
//  Warning: renamed property 'Type' in IDailyTrigger to 'Type_'
//  Warning: 'GUID' not automatable in IWeeklyTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IWeeklyTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IWeeklyTriggerdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IWeeklyTriggerdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IWeeklyTriggerdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IWeeklyTriggerdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IWeeklyTriggerdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IWeeklyTriggerdisp.Invoke
//  Warning: renamed property 'Type' in IWeeklyTrigger to 'Type_'
//  Warning: 'GUID' not automatable in IMonthlyTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IMonthlyTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IMonthlyTriggerdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IMonthlyTriggerdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IMonthlyTriggerdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IMonthlyTriggerdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IMonthlyTriggerdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IMonthlyTriggerdisp.Invoke
//  Warning: renamed property 'Type' in IMonthlyTrigger to 'Type_'
//  Warning: 'GUID' not automatable in IMonthlyDOWTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IMonthlyDOWTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IMonthlyDOWTriggerdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IMonthlyDOWTriggerdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IMonthlyDOWTriggerdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IMonthlyDOWTriggerdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IMonthlyDOWTriggerdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IMonthlyDOWTriggerdisp.Invoke
//  Warning: renamed property 'Type' in IMonthlyDOWTrigger to 'Type_'
//  Warning: 'GUID' not automatable in IBootTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IBootTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IBootTriggerdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IBootTriggerdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IBootTriggerdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IBootTriggerdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IBootTriggerdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IBootTriggerdisp.Invoke
//  Warning: renamed property 'Type' in IBootTrigger to 'Type_'
//  Warning: 'GUID' not automatable in IRegistrationTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IRegistrationTriggerdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IRegistrationTriggerdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IRegistrationTriggerdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IRegistrationTriggerdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IRegistrationTriggerdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IRegistrationTriggerdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IRegistrationTriggerdisp.Invoke
//  Warning: renamed property 'Type' in IRegistrationTrigger to 'Type_'
//  Warning: 'GUID' not automatable in IExecActiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IExecActiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IExecActiondisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IExecActiondisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IExecActiondisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IExecActiondisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IExecActiondisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IExecActiondisp.Invoke
//  Warning: renamed property 'Type' in IExecAction to 'Type_'
//  Warning: 'GUID' not automatable in IShowMessageActiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IShowMessageActiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IShowMessageActiondisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IShowMessageActiondisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IShowMessageActiondisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IShowMessageActiondisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IShowMessageActiondisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IShowMessageActiondisp.Invoke
//  Warning: renamed property 'Type' in IShowMessageAction to 'Type_'
//  Warning: 'GUID' not automatable in IComHandlerActiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IComHandlerActiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IComHandlerActiondisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IComHandlerActiondisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IComHandlerActiondisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IComHandlerActiondisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IComHandlerActiondisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IComHandlerActiondisp.Invoke
//  Warning: renamed property 'Type' in IComHandlerAction to 'Type_'
//  Warning: renamed property 'To' in IEmailAction to 'To_'
//  Warning: 'GUID' not automatable in IEmailActiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IEmailActiondisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IEmailActiondisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IEmailActiondisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IEmailActiondisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IEmailActiondisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IEmailActiondisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IEmailActiondisp.Invoke
//  Warning: renamed property 'Type' in IEmailAction to 'Type_'
//  Warning: 'PSafeArray' not automatable in IEmailAction.Attachments
//  Warning: 'GUID' not automatable in ITaskSettings2disp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITaskSettings2disp.QueryInterface
//  Warning: 'Ppointer' not automatable in ITaskSettings2disp.GetTypeInfo
//  Warning: 'GUID' not automatable in ITaskSettings2disp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in ITaskSettings2disp.GetIDsOfNames
//  Warning: 'GUID' not automatable in ITaskSettings2disp.Invoke
//  Warning: 'DISPPARAMS' not automatable in ITaskSettings2disp.Invoke
//  Warning: 'EXCEPINFO' not automatable in ITaskSettings2disp.Invoke
Uses
  Windows,ActiveX,Classes,Variants,stdole2;
Const
  TaskSchedulerMajorVersion = 1;
  TaskSchedulerMinorVersion = 0;
  TaskSchedulerLCID = 0;
  LIBID_TaskScheduler : TGUID = '{E34CB9F1-C7F7-424C-BE29-027DCC09363A}';

  IID_ITaskFolderCollection : TGUID = '{79184A66-8664-423F-97F1-637356A5D812}';
  IID_ITaskFolder : TGUID = '{8CFAC062-A080-4C15-9A88-AA7C2AF80DFC}';
  IID_IRegisteredTask : TGUID = '{9C86F320-DEE3-4DD1-B972-A303F26B061E}';
  IID_IRunningTask : TGUID = '{653758FB-7B9A-4F1E-A471-BEEB8E9B834E}';
  IID_IRunningTaskCollection : TGUID = '{6A67614B-6828-4FEC-AA54-6D52E8F1F2DB}';
  IID_ITaskDefinition : TGUID = '{F5BC8FC5-536D-4F77-B852-FBC1356FDEB6}';
  IID_IRegistrationInfo : TGUID = '{416D8B73-CB41-4EA1-805C-9BE9A5AC4A74}';
  IID_ITriggerCollection : TGUID = '{85DF5081-1B24-4F32-878A-D9D14DF4CB77}';
  IID_ITrigger : TGUID = '{09941815-EA89-4B5B-89E0-2A773801FAC3}';
  IID_IRepetitionPattern : TGUID = '{7FB9ACF1-26BE-400E-85B5-294B9C75DFD6}';
  IID_ITaskSettings : TGUID = '{8FD4711D-2D02-4C8C-87E3-EFF699DE127E}';
  IID_IIdleSettings : TGUID = '{84594461-0053-4342-A8FD-088FABF11F32}';
  IID_INetworkSettings : TGUID = '{9F7DEA84-C30B-4245-80B6-00E9F646F1B4}';
  IID_IPrincipal : TGUID = '{D98D51E5-C9B4-496A-A9C1-18980261CF0F}';
  IID_IActionCollection : TGUID = '{02820E19-7B98-4ED2-B2E8-FDCCCEFF619B}';
  IID_IAction : TGUID = '{BAE54997-48B1-4CBE-9965-D6BE263EBEA4}';
  IID_IRegisteredTaskCollection : TGUID = '{86627EB4-42A7-41E4-A4D9-AC33A72F2D52}';
  IID_ITaskService : TGUID = '{2FABA4C7-4DA9-4013-9697-20CC3FD40F85}';
  IID_ITaskHandler : TGUID = '{839D7762-5121-4009-9234-4F0D19394F04}';
  IID_ITaskHandlerStatus : TGUID = '{EAEC7A8F-27A0-4DDC-8675-14726A01A38A}';
  IID_ITaskVariables : TGUID = '{3E4C9351-D966-4B8B-BB87-CEBA68BB0107}';
  IID_ITaskNamedValuePair : TGUID = '{39038068-2B46-4AFD-8662-7BB6F868D221}';
  IID_ITaskNamedValueCollection : TGUID = '{B4EF826B-63C3-46E4-A504-EF69E4F7EA4D}';
  IID_IIdleTrigger : TGUID = '{D537D2B0-9FB3-4D34-9739-1FF5CE7B1EF3}';
  IID_ILogonTrigger : TGUID = '{72DADE38-FAE4-4B3E-BAF4-5D009AF02B1C}';
  IID_ISessionStateChangeTrigger : TGUID = '{754DA71B-4385-4475-9DD9-598294FA3641}';
  IID_IEventTrigger : TGUID = '{D45B0167-9653-4EEF-B94F-0732CA7AF251}';
  IID_ITimeTrigger : TGUID = '{B45747E0-EBA7-4276-9F29-85C5BB300006}';
  IID_IDailyTrigger : TGUID = '{126C5CD8-B288-41D5-8DBF-E491446ADC5C}';
  IID_IWeeklyTrigger : TGUID = '{5038FC98-82FF-436D-8728-A512A57C9DC1}';
  IID_IMonthlyTrigger : TGUID = '{97C45EF1-6B02-4A1A-9C0E-1EBFBA1500AC}';
  IID_IMonthlyDOWTrigger : TGUID = '{77D025A3-90FA-43AA-B52E-CDA5499B946A}';
  IID_IBootTrigger : TGUID = '{2A9C35DA-D357-41F4-BBC1-207AC1B1F3CB}';
  IID_IRegistrationTrigger : TGUID = '{4C8FEC3A-C218-4E0C-B23D-629024DB91A2}';
  IID_IExecAction : TGUID = '{4C3D624D-FD6B-49A3-B9B7-09CB3CD3F047}';
  IID_IShowMessageAction : TGUID = '{505E9E68-AF89-46B8-A30F-56162A83D537}';
  IID_IComHandlerAction : TGUID = '{6D2FD252-75C5-4F66-90BA-2A7D8CC3039F}';
  IID_IEmailAction : TGUID = '{10F62C64-7E16-4314-A0C2-0C3683F99D40}';
  IID_ITaskSettings2 : TGUID = '{2C05C3F0-6EED-4C05-A15F-ED7D7A98A369}';
  CLASS_TaskScheduler : TGUID = '{0F87369F-A4E5-4CFC-BD3E-73E6154572DD}';
  CLASS_TaskHandlerPS : TGUID = '{F2A69DB7-DA2C-4352-9066-86FEE6DACAC9}';
  CLASS_TaskHandlerStatusPS : TGUID = '{9F15266D-D7BA-48F0-93C1-E6895F6FE5AC}';

//Enums

Type
  _TASK_STATE =LongWord;
Const
  TASK_STATE_UNKNOWN = $0000000000000000;
  TASK_STATE_DISABLED = $0000000000000001;
  TASK_STATE_QUEUED = $0000000000000002;
  TASK_STATE_READY = $0000000000000003;
  TASK_STATE_RUNNING = $0000000000000004;
Type
  _TASK_TRIGGER_TYPE2 =LongWord;
Const
  TASK_TRIGGER_EVENT = $0000000000000000;
  TASK_TRIGGER_TIME = $0000000000000001;
  TASK_TRIGGER_DAILY = $0000000000000002;
  TASK_TRIGGER_WEEKLY = $0000000000000003;
  TASK_TRIGGER_MONTHLY = $0000000000000004;
  TASK_TRIGGER_MONTHLYDOW = $0000000000000005;
  TASK_TRIGGER_IDLE = $0000000000000006;
  TASK_TRIGGER_REGISTRATION = $0000000000000007;
  TASK_TRIGGER_BOOT = $0000000000000008;
  TASK_TRIGGER_LOGON = $0000000000000009;
  TASK_TRIGGER_SESSION_STATE_CHANGE = $000000000000000B;
Type
  _TASK_INSTANCES_POLICY =LongWord;
Const
  TASK_INSTANCES_PARALLEL = $0000000000000000;
  TASK_INSTANCES_QUEUE = $0000000000000001;
  TASK_INSTANCES_IGNORE_NEW = $0000000000000002;
  TASK_INSTANCES_STOP_EXISTING = $0000000000000003;
Type
  _TASK_COMPATIBILITY =LongWord;
Const
  TASK_COMPATIBILITY_AT = $0000000000000000;
  TASK_COMPATIBILITY_V1 = $0000000000000001;
  TASK_COMPATIBILITY_V2 = $0000000000000002;
  TASK_COMPATIBILITY_V2_1 = $0000000000000003;
Type
  _TASK_LOGON_TYPE =LongWord;
Const
  TASK_LOGON_NONE = $0000000000000000;
  TASK_LOGON_PASSWORD = $0000000000000001;
  TASK_LOGON_S4U = $0000000000000002;
  TASK_LOGON_INTERACTIVE_TOKEN = $0000000000000003;
  TASK_LOGON_GROUP = $0000000000000004;
  TASK_LOGON_SERVICE_ACCOUNT = $0000000000000005;
  TASK_LOGON_INTERACTIVE_TOKEN_OR_PASSWORD = $0000000000000006;
Type
  _TASK_RUNLEVEL =LongWord;
Const
  TASK_RUNLEVEL_LUA = $0000000000000000;
  TASK_RUNLEVEL_HIGHEST = $0000000000000001;
Type
  _TASK_ACTION_TYPE =LongWord;
Const
  TASK_ACTION_EXEC = $0000000000000000;
  TASK_ACTION_COM_HANDLER = $0000000000000005;
  TASK_ACTION_SEND_EMAIL = $0000000000000006;
  TASK_ACTION_SHOW_MESSAGE = $0000000000000007;
Type
  _TASK_SESSION_STATE_CHANGE_TYPE =LongWord;
Const
  TASK_CONSOLE_CONNECT = $0000000000000001;
  TASK_CONSOLE_DISCONNECT = $0000000000000002;
  TASK_REMOTE_CONNECT = $0000000000000003;
  TASK_REMOTE_DISCONNECT = $0000000000000004;
  TASK_SESSION_LOCK = $0000000000000007;
  TASK_SESSION_UNLOCK = $0000000000000008;
Type
  _TASK_RUN_FLAGS =LongWord;
Const
  TASK_RUN_NO_FLAGS = $0000000000000000;
  TASK_RUN_AS_SELF = $0000000000000001;
  TASK_RUN_IGNORE_CONSTRAINTS = $0000000000000002;
  TASK_RUN_USE_SESSION_ID = $0000000000000004;
  TASK_RUN_USER_SID = $0000000000000008;
Type
  _TASK_ENUM_FLAGS =LongWord;
Const
  TASK_ENUM_HIDDEN = $0000000000000001;
Type
  _TASK_PROCESSTOKENSID =LongWord;
Const
  TASK_PROCESSTOKENSID_NONE = $0000000000000000;
  TASK_PROCESSTOKENSID_UNRESTRICTED = $0000000000000001;
  TASK_PROCESSTOKENSID_DEFAULT = $0000000000000002;
Type
  _TASK_CREATION =LongWord;
Const
  TASK_VALIDATE_ONLY = $0000000000000001;
  TASK_CREATE = $0000000000000002;
  TASK_UPDATE = $0000000000000004;
  TASK_CREATE_OR_UPDATE = $0000000000000006;
  TASK_DISABLE = $0000000000000008;
  TASK_DONT_ADD_PRINCIPAL_ACE = $0000000000000010;
  TASK_IGNORE_REGISTRATION_TRIGGERS = $0000000000000020;
//Forward declarations

Type
 ITaskFolderCollection = interface;
 ITaskFolderCollectionDisp = dispinterface;
 ITaskFolder = interface;
 ITaskFolderDisp = dispinterface;
 IRegisteredTask = interface;
 IRegisteredTaskDisp = dispinterface;
 IRunningTask = interface;
 IRunningTaskDisp = dispinterface;
 IRunningTaskCollection = interface;
 IRunningTaskCollectionDisp = dispinterface;
 ITaskDefinition = interface;
 ITaskDefinitionDisp = dispinterface;
 IRegistrationInfo = interface;
 IRegistrationInfoDisp = dispinterface;
 ITriggerCollection = interface;
 ITriggerCollectionDisp = dispinterface;
 ITrigger = interface;
 ITriggerDisp = dispinterface;
 IRepetitionPattern = interface;
 IRepetitionPatternDisp = dispinterface;
 ITaskSettings = interface;
 ITaskSettingsDisp = dispinterface;
 IIdleSettings = interface;
 IIdleSettingsDisp = dispinterface;
 INetworkSettings = interface;
 INetworkSettingsDisp = dispinterface;
 IPrincipal = interface;
 IPrincipalDisp = dispinterface;
 IActionCollection = interface;
 IActionCollectionDisp = dispinterface;
 IAction = interface;
 IActionDisp = dispinterface;
 IRegisteredTaskCollection = interface;
 IRegisteredTaskCollectionDisp = dispinterface;
 ITaskService = interface;
 ITaskServiceDisp = dispinterface;
 ITaskHandler = interface;
 ITaskHandlerStatus = interface;
 ITaskVariables = interface;
 ITaskNamedValuePair = interface;
 ITaskNamedValuePairDisp = dispinterface;
 ITaskNamedValueCollection = interface;
 ITaskNamedValueCollectionDisp = dispinterface;
 IIdleTrigger = interface;
 IIdleTriggerDisp = dispinterface;
 ILogonTrigger = interface;
 ILogonTriggerDisp = dispinterface;
 ISessionStateChangeTrigger = interface;
 ISessionStateChangeTriggerDisp = dispinterface;
 IEventTrigger = interface;
 IEventTriggerDisp = dispinterface;
 ITimeTrigger = interface;
 ITimeTriggerDisp = dispinterface;
 IDailyTrigger = interface;
 IDailyTriggerDisp = dispinterface;
 IWeeklyTrigger = interface;
 IWeeklyTriggerDisp = dispinterface;
 IMonthlyTrigger = interface;
 IMonthlyTriggerDisp = dispinterface;
 IMonthlyDOWTrigger = interface;
 IMonthlyDOWTriggerDisp = dispinterface;
 IBootTrigger = interface;
 IBootTriggerDisp = dispinterface;
 IRegistrationTrigger = interface;
 IRegistrationTriggerDisp = dispinterface;
 IExecAction = interface;
 IExecActionDisp = dispinterface;
 IShowMessageAction = interface;
 IShowMessageActionDisp = dispinterface;
 IComHandlerAction = interface;
 IComHandlerActionDisp = dispinterface;
 IEmailAction = interface;
 IEmailActionDisp = dispinterface;
 ITaskSettings2 = interface;
 ITaskSettings2Disp = dispinterface;

//Map CoClass to its default interface

 TaskScheduler = ITaskService;
 TaskHandlerPS = ITaskHandler;
 TaskHandlerStatusPS = ITaskHandlerStatus;

//records, unions, aliases

 P_SYSTEMTIME = ^_SYSTEMTIME;

 _SYSTEMTIME = packed record
     wYear : Word;
     wMonth : Word;
     wDayOfWeek : Word;
     wDay : Word;
     wHour : Word;
     wMinute : Word;
     wSecond : Word;
     wMilliseconds : Word;
 end;

//interface declarations

// ITaskFolderCollection : Container for ITaskFolders.

 ITaskFolderCollection = interface(IDispatch)
   ['{79184A66-8664-423F-97F1-637356A5D812}']
   function Get_Count : Integer; safecall;
   function Get_Item(index:OleVariant) : ITaskFolder; safecall;
   function Get__NewEnum : IUnknown; safecall;
    // Count : Number of elements. 
   property Count:Integer read Get_Count;
    // Item : Retrieve specific element. 
   property Item[index:OleVariant]:ITaskFolder read Get_Item; default;
    // _NewEnum : Create new enumerator. 
   property _NewEnum:IUnknown read Get__NewEnum;
  end;


// ITaskFolderCollection : Container for ITaskFolders.

 ITaskFolderCollectionDisp = dispinterface
   ['{79184A66-8664-423F-97F1-637356A5D812}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Count : Number of elements. 
   property Count:Integer  readonly dispid 1610743808;
    // Item : Retrieve specific element. 
   property Item[index:OleVariant]:ITaskFolder  readonly dispid 0; default;
    // _NewEnum : Create new enumerator. 
   property _NewEnum:IUnknown  readonly dispid -4;
  end;


// ITaskFolder : Container (directory) for tasks.

 ITaskFolder = interface(IDispatch)
   ['{8CFAC062-A080-4C15-9A88-AA7C2AF80DFC}']
   function Get_Name : WideString; safecall;
   function Get_Path : WideString; safecall;
    // GetFolder : Retrieve sub-folder by name. 
   function GetFolder(Path:WideString):ITaskFolder;safecall;
    // GetFolders : Retrieve all sub-folders. 
   function GetFolders(flags:Integer):ITaskFolderCollection;safecall;
    // CreateFolder : Make a new sub-folder. 
   function CreateFolder(subFolderName:WideString;sddl:OleVariant):ITaskFolder;safecall;
    // DeleteFolder : Erase existing folder. 
   procedure DeleteFolder(subFolderName:WideString;flags:Integer);safecall;
    // GetTask : Retrieve named task from folder. 
   function GetTask(Path:WideString):IRegisteredTask;safecall;
    // GetTasks : Retrieve all tasks from folder. 
   function GetTasks(flags:Integer):IRegisteredTaskCollection;safecall;
    // DeleteTask : Erase named task. 
   procedure DeleteTask(Name:WideString;flags:Integer);safecall;
    // RegisterTask : Create new task from XML. 
   function RegisterTask(Path:WideString;XmlText:WideString;flags:Integer;UserId:OleVariant;password:OleVariant;LogonType:_TASK_LOGON_TYPE;sddl:OleVariant):IRegisteredTask;safecall;
    // RegisterTaskDefinition : Create new task. 
   function RegisterTaskDefinition(Path:WideString;pDefinition:ITaskDefinition;flags:Integer;UserId:OleVariant;password:OleVariant;LogonType:_TASK_LOGON_TYPE;sddl:OleVariant):IRegisteredTask;safecall;
    // GetSecurityDescriptor : Retrieve SDDL form of folder's current security descriptor. 
   function GetSecurityDescriptor(securityInformation:Integer):WideString;safecall;
    // SetSecurityDescriptor : Change security descriptor of task folder. 
   procedure SetSecurityDescriptor(sddl:WideString;flags:Integer);safecall;
    // Name : Identifier for folder. 
   property Name:WideString read Get_Name;
    // Path : Complete name for folder, including parent folders. 
   property Path:WideString read Get_Path;
  end;


// ITaskFolder : Container (directory) for tasks.

 ITaskFolderDisp = dispinterface
   ['{8CFAC062-A080-4C15-9A88-AA7C2AF80DFC}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // GetFolder : Retrieve sub-folder by name. 
   function GetFolder(Path:WideString):ITaskFolder;dispid 3;
    // GetFolders : Retrieve all sub-folders. 
   function GetFolders(flags:Integer):ITaskFolderCollection;dispid 4;
    // CreateFolder : Make a new sub-folder. 
   function CreateFolder(subFolderName:WideString;sddl:OleVariant):ITaskFolder;dispid 5;
    // DeleteFolder : Erase existing folder. 
   procedure DeleteFolder(subFolderName:WideString;flags:Integer);dispid 6;
    // GetTask : Retrieve named task from folder. 
   function GetTask(Path:WideString):IRegisteredTask;dispid 7;
    // GetTasks : Retrieve all tasks from folder. 
   function GetTasks(flags:Integer):IRegisteredTaskCollection;dispid 8;
    // DeleteTask : Erase named task. 
   procedure DeleteTask(Name:WideString;flags:Integer);dispid 9;
    // RegisterTask : Create new task from XML. 
   function RegisterTask(Path:WideString;XmlText:WideString;flags:Integer;UserId:OleVariant;password:OleVariant;LogonType:_TASK_LOGON_TYPE;sddl:OleVariant):IRegisteredTask;dispid 10;
    // RegisterTaskDefinition : Create new task. 
   function RegisterTaskDefinition(Path:WideString;pDefinition:ITaskDefinition;flags:Integer;UserId:OleVariant;password:OleVariant;LogonType:_TASK_LOGON_TYPE;sddl:OleVariant):IRegisteredTask;dispid 11;
    // GetSecurityDescriptor : Retrieve SDDL form of folder's current security descriptor. 
   function GetSecurityDescriptor(securityInformation:Integer):WideString;dispid 12;
    // SetSecurityDescriptor : Change security descriptor of task folder. 
   procedure SetSecurityDescriptor(sddl:WideString;flags:Integer);dispid 13;
    // Name : Identifier for folder. 
   property Name:WideString  readonly dispid 1;
    // Path : Complete name for folder, including parent folders. 
   property Path:WideString  readonly dispid 0;
  end;


// IRegisteredTask : A task that has been registered with the Task Scheduler service.

 IRegisteredTask = interface(IDispatch)
   ['{9C86F320-DEE3-4DD1-B972-A303F26B061E}']
   function Get_Name : WideString; safecall;
   function Get_Path : WideString; safecall;
   function Get_State : _TASK_STATE; safecall;
   function Get_Enabled : WordBool; safecall;
   procedure Set_Enabled(const pEnabled:WordBool); safecall;
    // Run :  
   function Run(params:OleVariant):IRunningTask;safecall;
    // RunEx : Start the task now, with various options. 
   function RunEx(params:OleVariant;flags:Integer;sessionID:Integer;user:WideString):IRunningTask;safecall;
    // GetInstances : Retrieve collection of running tasks. 
   function GetInstances(flags:Integer):IRunningTaskCollection;safecall;
   function Get_LastRunTime : TDateTime; safecall;
   function Get_LastTaskResult : Integer; safecall;
   function Get_NumberOfMissedRuns : Integer; safecall;
   function Get_NextRunTime : TDateTime; safecall;
   function Get_Definition : ITaskDefinition; safecall;
   function Get_Xml : WideString; safecall;
    // GetSecurityDescriptor : SDDL form of security descriptor currently applied to task. 
   function GetSecurityDescriptor(securityInformation:Integer):WideString;safecall;
    // SetSecurityDescriptor : SDDL form of security descriptor to be applied to task. 
   procedure SetSecurityDescriptor(sddl:WideString;flags:Integer);safecall;
    // Stop : Cause all task's instances to exit. 
   procedure Stop(flags:Integer);safecall;
    // GetRunTimes : Retrieve collection of scheduled execution times. 
   procedure GetRunTimes(var pstStart:_SYSTEMTIME;var pstEnd:_SYSTEMTIME;var pCount:LongWord;out pRunTimes:P_SYSTEMTIME);safecall;
    // Name : Unique identifier for the task 
   property Name:WideString read Get_Name;
    // Path : Folder and name of the task 
   property Path:WideString read Get_Path;
    // State : Current status of the task (TASK_STATE) 
   property State:_TASK_STATE read Get_State;
    // Enabled : If false the task will not be allowed to run. 
   property Enabled:WordBool read Get_Enabled write Set_Enabled;
    // LastRunTime : Most recent time the task executed. 
   property LastRunTime:TDateTime read Get_LastRunTime;
    // LastTaskResult : Return code from the most recent time the task ran. 
   property LastTaskResult:Integer read Get_LastTaskResult;
    // NumberOfMissedRuns : Number of times the task was unable to run. 
   property NumberOfMissedRuns:Integer read Get_NumberOfMissedRuns;
    // NextRunTime : Next time the task is scheduled to start. 
   property NextRunTime:TDateTime read Get_NextRunTime;
    // Definition : Retrieve editable copy of this task's definition. 
   property Definition:ITaskDefinition read Get_Definition;
    // Xml : Retrieve XML version of this task's definition. 
   property Xml:WideString read Get_Xml;
  end;


// IRegisteredTask : A task that has been registered with the Task Scheduler service.

 IRegisteredTaskDisp = dispinterface
   ['{9C86F320-DEE3-4DD1-B972-A303F26B061E}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Run :  
   function Run(params:OleVariant):IRunningTask;dispid 5;
    // RunEx : Start the task now, with various options. 
   function RunEx(params:OleVariant;flags:Integer;sessionID:Integer;user:WideString):IRunningTask;dispid 6;
    // GetInstances : Retrieve collection of running tasks. 
   function GetInstances(flags:Integer):IRunningTaskCollection;dispid 7;
    // GetSecurityDescriptor : SDDL form of security descriptor currently applied to task. 
   function GetSecurityDescriptor(securityInformation:Integer):WideString;dispid 15;
    // SetSecurityDescriptor : SDDL form of security descriptor to be applied to task. 
   procedure SetSecurityDescriptor(sddl:WideString;flags:Integer);dispid 16;
    // Stop : Cause all task's instances to exit. 
   procedure Stop(flags:Integer);dispid 17;
    // GetRunTimes : Retrieve collection of scheduled execution times. 
   procedure GetRunTimes(var pstStart:{!! _SYSTEMTIME !!} OleVariant;var pstEnd:{!! _SYSTEMTIME !!} OleVariant;var pCount:LongWord;out pRunTimes:{!! P_SYSTEMTIME !!} OleVariant);dispid 1610743825;
    // Name : Unique identifier for the task 
   property Name:WideString  readonly dispid 1;
    // Path : Folder and name of the task 
   property Path:WideString  readonly dispid 0;
    // State : Current status of the task (TASK_STATE) 
   property State:_TASK_STATE  readonly dispid 2;
    // Enabled : If false the task will not be allowed to run. 
   property Enabled:WordBool dispid 3;
    // LastRunTime : Most recent time the task executed. 
   property LastRunTime:TDateTime  readonly dispid 8;
    // LastTaskResult : Return code from the most recent time the task ran. 
   property LastTaskResult:Integer  readonly dispid 9;
    // NumberOfMissedRuns : Number of times the task was unable to run. 
   property NumberOfMissedRuns:Integer  readonly dispid 11;
    // NextRunTime : Next time the task is scheduled to start. 
   property NextRunTime:TDateTime  readonly dispid 12;
    // Definition : Retrieve editable copy of this task's definition. 
   property Definition:ITaskDefinition  readonly dispid 13;
    // Xml : Retrieve XML version of this task's definition. 
   property Xml:WideString  readonly dispid 14;
  end;


// IRunningTask : An instance of a task that is currently executing.

 IRunningTask = interface(IDispatch)
   ['{653758FB-7B9A-4F1E-A471-BEEB8E9B834E}']
   function Get_Name : WideString; safecall;
   function Get_InstanceGuid : WideString; safecall;
   function Get_Path : WideString; safecall;
   function Get_State : _TASK_STATE; safecall;
   function Get_CurrentAction : WideString; safecall;
    // Stop : Cause the task instance to exit. 
   procedure Stop;safecall;
    // Refresh : Get current status from Task Scheduler service. 
   procedure Refresh;safecall;
   function Get_EnginePID : LongWord; safecall;
    // Name : Human-readable identifier for the task. 
   property Name:WideString read Get_Name;
    // InstanceGuid : Identifies a specific occurrence of a running task. 
   property InstanceGuid:WideString read Get_InstanceGuid;
    // Path : Folder the task resides in. 
   property Path:WideString read Get_Path;
    // State : TASK_STATE Enum, current condition of task. 
   property State:_TASK_STATE read Get_State;
    // CurrentAction : The action that is executing now. 
   property CurrentAction:WideString read Get_CurrentAction;
    // EnginePID : Process ID of the host which is running the task. 
   property EnginePID:LongWord read Get_EnginePID;
  end;


// IRunningTask : An instance of a task that is currently executing.

 IRunningTaskDisp = dispinterface
   ['{653758FB-7B9A-4F1E-A471-BEEB8E9B834E}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Stop : Cause the task instance to exit. 
   procedure Stop;dispid 5;
    // Refresh : Get current status from Task Scheduler service. 
   procedure Refresh;dispid 6;
    // Name : Human-readable identifier for the task. 
   property Name:WideString  readonly dispid 1;
    // InstanceGuid : Identifies a specific occurrence of a running task. 
   property InstanceGuid:WideString  readonly dispid 0;
    // Path : Folder the task resides in. 
   property Path:WideString  readonly dispid 2;
    // State : TASK_STATE Enum, current condition of task. 
   property State:_TASK_STATE  readonly dispid 3;
    // CurrentAction : The action that is executing now. 
   property CurrentAction:WideString  readonly dispid 4;
    // EnginePID : Process ID of the host which is running the task. 
   property EnginePID:LongWord  readonly dispid 7;
  end;


// IRunningTaskCollection : Group of tasks which are currently executing.

 IRunningTaskCollection = interface(IDispatch)
   ['{6A67614B-6828-4FEC-AA54-6D52E8F1F2DB}']
   function Get_Count : Integer; safecall;
   function Get_Item(index:OleVariant) : IRunningTask; safecall;
   function Get__NewEnum : IUnknown; safecall;
    // Count : Number of elements in collection. 
   property Count:Integer read Get_Count;
    // Item : Retrieve specific element. 
   property Item[index:OleVariant]:IRunningTask read Get_Item; default;
    // _NewEnum : Create new Enumerator. 
   property _NewEnum:IUnknown read Get__NewEnum;
  end;


// IRunningTaskCollection : Group of tasks which are currently executing.

 IRunningTaskCollectionDisp = dispinterface
   ['{6A67614B-6828-4FEC-AA54-6D52E8F1F2DB}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Count : Number of elements in collection. 
   property Count:Integer  readonly dispid 1;
    // Item : Retrieve specific element. 
   property Item[index:OleVariant]:IRunningTask  readonly dispid 0; default;
    // _NewEnum : Create new Enumerator. 
   property _NewEnum:IUnknown  readonly dispid -4;
  end;


// ITaskDefinition : Describe a task to be run by the Task Scheduler service.

 ITaskDefinition = interface(IDispatch)
   ['{F5BC8FC5-536D-4F77-B852-FBC1356FDEB6}']
   function Get_RegistrationInfo : IRegistrationInfo; safecall;
   procedure Set_RegistrationInfo(const ppRegistrationInfo:IRegistrationInfo); safecall;
   function Get_Triggers : ITriggerCollection; safecall;
   procedure Set_Triggers(const ppTriggers:ITriggerCollection); safecall;
   function Get_Settings : ITaskSettings; safecall;
   procedure Set_Settings(const ppSettings:ITaskSettings); safecall;
   function Get_Data : WideString; safecall;
   procedure Set_Data(const pData:WideString); safecall;
   function Get_Principal : IPrincipal; safecall;
   procedure Set_Principal(const ppPrincipal:IPrincipal); safecall;
   function Get_Actions : IActionCollection; safecall;
   procedure Set_Actions(const ppActions:IActionCollection); safecall;
   function Get_XmlText : WideString; safecall;
   procedure Set_XmlText(const pXml:WideString); safecall;
    // RegistrationInfo : Information about the task. 
   property RegistrationInfo:IRegistrationInfo read Get_RegistrationInfo write Set_RegistrationInfo;
    // Triggers : Conditions which cause the task to be started. 
   property Triggers:ITriggerCollection read Get_Triggers write Set_Triggers;
    // Settings : Control various aspects of the task execution. 
   property Settings:ITaskSettings read Get_Settings write Set_Settings;
    // Data : Information to be used by third parties - ignored by service. 
   property Data:WideString read Get_Data write Set_Data;
    // Principal : User or group associated with the task. 
   property Principal:IPrincipal read Get_Principal write Set_Principal;
    // Actions : Acts to be performed by the task. 
   property Actions:IActionCollection read Get_Actions write Set_Actions;
    // XmlText : XML version of the task. 
   property XmlText:WideString read Get_XmlText write Set_XmlText;
  end;


// ITaskDefinition : Describe a task to be run by the Task Scheduler service.

 ITaskDefinitionDisp = dispinterface
   ['{F5BC8FC5-536D-4F77-B852-FBC1356FDEB6}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // RegistrationInfo : Information about the task. 
   property RegistrationInfo:IRegistrationInfo dispid 1;
    // Triggers : Conditions which cause the task to be started. 
   property Triggers:ITriggerCollection dispid 2;
    // Settings : Control various aspects of the task execution. 
   property Settings:ITaskSettings dispid 7;
    // Data : Information to be used by third parties - ignored by service. 
   property Data:WideString dispid 11;
    // Principal : User or group associated with the task. 
   property Principal:IPrincipal dispid 12;
    // Actions : Acts to be performed by the task. 
   property Actions:IActionCollection dispid 13;
    // XmlText : XML version of the task. 
   property XmlText:WideString dispid 14;
  end;


// IRegistrationInfo : Information about the task

 IRegistrationInfo = interface(IDispatch)
   ['{416D8B73-CB41-4EA1-805C-9BE9A5AC4A74}']
   function Get_Description : WideString; safecall;
   procedure Set_Description(const pDescription:WideString); safecall;
   function Get_Author : WideString; safecall;
   procedure Set_Author(const pAuthor:WideString); safecall;
   function Get_Version : WideString; safecall;
   procedure Set_Version(const pVersion:WideString); safecall;
   function Get_Date : WideString; safecall;
   procedure Set_Date(const pDate:WideString); safecall;
   function Get_Documentation : WideString; safecall;
   procedure Set_Documentation(const pDocumentation:WideString); safecall;
   function Get_XmlText : WideString; safecall;
   procedure Set_XmlText(const pText:WideString); safecall;
   function Get_URI : WideString; safecall;
   procedure Set_URI(const pUri:WideString); safecall;
   function Get_SecurityDescriptor : OleVariant; safecall;
   procedure Set_SecurityDescriptor(const pSddl:OleVariant); safecall;
   function Get_Source : WideString; safecall;
   procedure Set_Source(const pSource:WideString); safecall;
    // Description : Explanation of the task's purpose 
   property Description:WideString read Get_Description write Set_Description;
    // Author : Person who wrote the task 
   property Author:WideString read Get_Author write Set_Author;
    // Version : Revision level of the task 
   property Version:WideString read Get_Version write Set_Version;
    // Date : Date task was created or updated 
   property Date:WideString read Get_Date write Set_Date;
    // Documentation : Web address for further information 
   property Documentation:WideString read Get_Documentation write Set_Documentation;
    // XmlText : XML version of the registration information 
   property XmlText:WideString read Get_XmlText write Set_XmlText;
    // URI : Name for the task, including folders if applicable 
   property URI:WideString read Get_URI write Set_URI;
    // SecurityDescriptor : SDDL form of security descriptor to be applied to task 
   property SecurityDescriptor:OleVariant read Get_SecurityDescriptor write Set_SecurityDescriptor;
    // Source : Generator of the task (Company name) 
   property Source:WideString read Get_Source write Set_Source;
  end;


// IRegistrationInfo : Information about the task

 IRegistrationInfoDisp = dispinterface
   ['{416D8B73-CB41-4EA1-805C-9BE9A5AC4A74}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Description : Explanation of the task's purpose 
   property Description:WideString dispid 1;
    // Author : Person who wrote the task 
   property Author:WideString dispid 2;
    // Version : Revision level of the task 
   property Version:WideString dispid 4;
    // Date : Date task was created or updated 
   property Date:WideString dispid 5;
    // Documentation : Web address for further information 
   property Documentation:WideString dispid 6;
    // XmlText : XML version of the registration information 
   property XmlText:WideString dispid 9;
    // URI : Name for the task, including folders if applicable 
   property URI:WideString dispid 10;
    // SecurityDescriptor : SDDL form of security descriptor to be applied to task 
   property SecurityDescriptor:OleVariant dispid 11;
    // Source : Generator of the task (Company name) 
   property Source:WideString dispid 12;
  end;


// ITriggerCollection : Container for ITriggers

 ITriggerCollection = interface(IDispatch)
   ['{85DF5081-1B24-4F32-878A-D9D14DF4CB77}']
   function Get_Count : Integer; safecall;
   function Get_Item(index:Integer) : ITrigger; safecall;
   function Get__NewEnum : IUnknown; safecall;
    // Create : Make new trigger 
   function Create(Type_:_TASK_TRIGGER_TYPE2):ITrigger;safecall;
    // Remove : Erase specific trigger 
   procedure Remove(index:OleVariant);safecall;
    // Clear : Erase all triggers 
   procedure Clear;safecall;
    // Count : Number of elements 
   property Count:Integer read Get_Count;
    // Item : Retrieve specific element 
   property Item[index:Integer]:ITrigger read Get_Item; default;
    // _NewEnum : Create new enumerator 
   property _NewEnum:IUnknown read Get__NewEnum;
  end;


// ITriggerCollection : Container for ITriggers

 ITriggerCollectionDisp = dispinterface
   ['{85DF5081-1B24-4F32-878A-D9D14DF4CB77}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Create : Make new trigger 
   function Create(Type_:_TASK_TRIGGER_TYPE2):ITrigger;dispid 2;
    // Remove : Erase specific trigger 
   procedure Remove(index:OleVariant);dispid 4;
    // Clear : Erase all triggers 
   procedure Clear;dispid 5;
    // Count : Number of elements 
   property Count:Integer  readonly dispid 1;
    // Item : Retrieve specific element 
   property Item[index:Integer]:ITrigger  readonly dispid 0; default;
    // _NewEnum : Create new enumerator 
   property _NewEnum:IUnknown  readonly dispid -4;
  end;


// ITrigger : Specify when the task is to be started.

 ITrigger = interface(IDispatch)
   ['{09941815-EA89-4B5B-89E0-2A773801FAC3}']
   function Get_Type_ : _TASK_TRIGGER_TYPE2; safecall;
   function Get_Id : WideString; safecall;
   procedure Set_Id(const pId:WideString); safecall;
   function Get_Repetition : IRepetitionPattern; safecall;
   procedure Set_Repetition(const ppRepeat:IRepetitionPattern); safecall;
   function Get_ExecutionTimeLimit : WideString; safecall;
   procedure Set_ExecutionTimeLimit(const pTimeLimit:WideString); safecall;
   function Get_StartBoundary : WideString; safecall;
   procedure Set_StartBoundary(const pStart:WideString); safecall;
   function Get_EndBoundary : WideString; safecall;
   procedure Set_EndBoundary(const pEnd:WideString); safecall;
   function Get_Enabled : WordBool; safecall;
   procedure Set_Enabled(const pEnabled:WordBool); safecall;
    // Type : Specific kind of trigger 
   property Type_:_TASK_TRIGGER_TYPE2 read Get_Type_;
    // Id : Unique name for this trigger 
   property Id:WideString read Get_Id write Set_Id;
    // Repetition : Specify that task should execute multiple times 
   property Repetition:IRepetitionPattern read Get_Repetition write Set_Repetition;
    // ExecutionTimeLimit : Amount of time task is allowed to execute 
   property ExecutionTimeLimit:WideString read Get_ExecutionTimeLimit write Set_ExecutionTimeLimit;
    // StartBoundary : Earliest time task is allowed to run 
   property StartBoundary:WideString read Get_StartBoundary write Set_StartBoundary;
    // EndBoundary : Latest time task is allowed to run 
   property EndBoundary:WideString read Get_EndBoundary write Set_EndBoundary;
    // Enabled : If true, task will run in response to this trigger 
   property Enabled:WordBool read Get_Enabled write Set_Enabled;
  end;


// ITrigger : Specify when the task is to be started.

 ITriggerDisp = dispinterface
   ['{09941815-EA89-4B5B-89E0-2A773801FAC3}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Type : Specific kind of trigger 
   property Type_:_TASK_TRIGGER_TYPE2  readonly dispid 1;
    // Id : Unique name for this trigger 
   property Id:WideString dispid 2;
    // Repetition : Specify that task should execute multiple times 
   property Repetition:IRepetitionPattern dispid 3;
    // ExecutionTimeLimit : Amount of time task is allowed to execute 
   property ExecutionTimeLimit:WideString dispid 4;
    // StartBoundary : Earliest time task is allowed to run 
   property StartBoundary:WideString dispid 5;
    // EndBoundary : Latest time task is allowed to run 
   property EndBoundary:WideString dispid 6;
    // Enabled : If true, task will run in response to this trigger 
   property Enabled:WordBool dispid 7;
  end;


// IRepetitionPattern : Specify how often a task is to repeat.

 IRepetitionPattern = interface(IDispatch)
   ['{7FB9ACF1-26BE-400E-85B5-294B9C75DFD6}']
   function Get_Interval : WideString; safecall;
   procedure Set_Interval(const pInterval:WideString); safecall;
   function Get_Duration : WideString; safecall;
   procedure Set_Duration(const pDuration:WideString); safecall;
   function Get_StopAtDurationEnd : WordBool; safecall;
   procedure Set_StopAtDurationEnd(const pStop:WordBool); safecall;
    // Interval : Amount of time between repetitions 
   property Interval:WideString read Get_Interval write Set_Interval;
    // Duration : Amount of time to continue repeating 
   property Duration:WideString read Get_Duration write Set_Duration;
    // StopAtDurationEnd : Cease execution when duration expires 
   property StopAtDurationEnd:WordBool read Get_StopAtDurationEnd write Set_StopAtDurationEnd;
  end;


// IRepetitionPattern : Specify how often a task is to repeat.

 IRepetitionPatternDisp = dispinterface
   ['{7FB9ACF1-26BE-400E-85B5-294B9C75DFD6}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Interval : Amount of time between repetitions 
   property Interval:WideString dispid 1;
    // Duration : Amount of time to continue repeating 
   property Duration:WideString dispid 2;
    // StopAtDurationEnd : Cease execution when duration expires 
   property StopAtDurationEnd:WordBool dispid 3;
  end;


// ITaskSettings : Control execution of the task.

 ITaskSettings = interface(IDispatch)
   ['{8FD4711D-2D02-4C8C-87E3-EFF699DE127E}']
   function Get_AllowDemandStart : WordBool; safecall;
   procedure Set_AllowDemandStart(const pAllowDemandStart:WordBool); safecall;
   function Get_RestartInterval : WideString; safecall;
   procedure Set_RestartInterval(const pRestartInterval:WideString); safecall;
   function Get_RestartCount : SYSINT; safecall;
   procedure Set_RestartCount(const pRestartCount:SYSINT); safecall;
   function Get_MultipleInstances : _TASK_INSTANCES_POLICY; safecall;
   procedure Set_MultipleInstances(const pPolicy:_TASK_INSTANCES_POLICY); safecall;
   function Get_StopIfGoingOnBatteries : WordBool; safecall;
   procedure Set_StopIfGoingOnBatteries(const pStopIfOnBatteries:WordBool); safecall;
   function Get_DisallowStartIfOnBatteries : WordBool; safecall;
   procedure Set_DisallowStartIfOnBatteries(const pDisallowStart:WordBool); safecall;
   function Get_AllowHardTerminate : WordBool; safecall;
   procedure Set_AllowHardTerminate(const pAllowHardTerminate:WordBool); safecall;
   function Get_StartWhenAvailable : WordBool; safecall;
   procedure Set_StartWhenAvailable(const pStartWhenAvailable:WordBool); safecall;
   function Get_XmlText : WideString; safecall;
   procedure Set_XmlText(const pText:WideString); safecall;
   function Get_RunOnlyIfNetworkAvailable : WordBool; safecall;
   procedure Set_RunOnlyIfNetworkAvailable(const pRunOnlyIfNetworkAvailable:WordBool); safecall;
   function Get_ExecutionTimeLimit : WideString; safecall;
   procedure Set_ExecutionTimeLimit(const pExecutionTimeLimit:WideString); safecall;
   function Get_Enabled : WordBool; safecall;
   procedure Set_Enabled(const pEnabled:WordBool); safecall;
   function Get_DeleteExpiredTaskAfter : WideString; safecall;
   procedure Set_DeleteExpiredTaskAfter(const pExpirationDelay:WideString); safecall;
   function Get_Priority : SYSINT; safecall;
   procedure Set_Priority(const pPriority:SYSINT); safecall;
   function Get_Compatibility : _TASK_COMPATIBILITY; safecall;
   procedure Set_Compatibility(const pCompatLevel:_TASK_COMPATIBILITY); safecall;
   function Get_Hidden : WordBool; safecall;
   procedure Set_Hidden(const pHidden:WordBool); safecall;
   function Get_IdleSettings : IIdleSettings; safecall;
   procedure Set_IdleSettings(const ppIdleSettings:IIdleSettings); safecall;
   function Get_RunOnlyIfIdle : WordBool; safecall;
   procedure Set_RunOnlyIfIdle(const pRunOnlyIfIdle:WordBool); safecall;
   function Get_WakeToRun : WordBool; safecall;
   procedure Set_WakeToRun(const pWake:WordBool); safecall;
   function Get_NetworkSettings : INetworkSettings; safecall;
   procedure Set_NetworkSettings(const ppNetworkSettings:INetworkSettings); safecall;
    // AllowDemandStart : Control whether the task can be started manually. 
   property AllowDemandStart:WordBool read Get_AllowDemandStart write Set_AllowDemandStart;
    // RestartInterval : Amount of time to wait before restarting a failed task. 
   property RestartInterval:WideString read Get_RestartInterval write Set_RestartInterval;
    // RestartCount : Number of tiems to attempt to run a failed task. 
   property RestartCount:SYSINT read Get_RestartCount write Set_RestartCount;
    // MultipleInstances : Specify what to do if the task starts while another instance is still running. 
   property MultipleInstances:_TASK_INSTANCES_POLICY read Get_MultipleInstances write Set_MultipleInstances;
    // StopIfGoingOnBatteries : Cease execution if machine switches to battery power 
   property StopIfGoingOnBatteries:WordBool read Get_StopIfGoingOnBatteries write Set_StopIfGoingOnBatteries;
    // DisallowStartIfOnBatteries : Do not start if machine is running on battery power 
   property DisallowStartIfOnBatteries:WordBool read Get_DisallowStartIfOnBatteries write Set_DisallowStartIfOnBatteries;
    // AllowHardTerminate : Allow task to be stopped with TerminateProcess() 
   property AllowHardTerminate:WordBool read Get_AllowHardTerminate write Set_AllowHardTerminate;
    // StartWhenAvailable : Start task when machine is running if it was off at scheduled time 
   property StartWhenAvailable:WordBool read Get_StartWhenAvailable write Set_StartWhenAvailable;
    // XmlText : Task settings in XML format. 
   property XmlText:WideString read Get_XmlText write Set_XmlText;
    // RunOnlyIfNetworkAvailable : Only start task if machine is connected to network 
   property RunOnlyIfNetworkAvailable:WordBool read Get_RunOnlyIfNetworkAvailable write Set_RunOnlyIfNetworkAvailable;
    // ExecutionTimeLimit : Maximum amount of time to allow task to run 
   property ExecutionTimeLimit:WideString read Get_ExecutionTimeLimit write Set_ExecutionTimeLimit;
    // Enabled : Control whether task is allowed to run 
   property Enabled:WordBool read Get_Enabled write Set_Enabled;
    // DeleteExpiredTaskAfter : Amount of time to wait before deleting task after it is no longer scheduled to run 
   property DeleteExpiredTaskAfter:WideString read Get_DeleteExpiredTaskAfter write Set_DeleteExpiredTaskAfter;
    // Priority : Controls amount of CPU time and execution order of tasks 
   property Priority:SYSINT read Get_Priority write Set_Priority;
    // Compatibility : Specify whether task is compatible with previous versions 
   property Compatibility:_TASK_COMPATIBILITY read Get_Compatibility write Set_Compatibility;
    // Hidden : Do not show task in UI 
   property Hidden:WordBool read Get_Hidden write Set_Hidden;
    // IdleSettings : Controls how long machine must be idle before starting task 
   property IdleSettings:IIdleSettings read Get_IdleSettings write Set_IdleSettings;
    // RunOnlyIfIdle : Only run task if machine is in idle state 
   property RunOnlyIfIdle:WordBool read Get_RunOnlyIfIdle write Set_RunOnlyIfIdle;
    // WakeToRun : Wake machine from suspended power state to run task 
   property WakeToRun:WordBool read Get_WakeToRun write Set_WakeToRun;
    // NetworkSettings : Network required to run task 
   property NetworkSettings:INetworkSettings read Get_NetworkSettings write Set_NetworkSettings;
  end;


// ITaskSettings : Control execution of the task.

 ITaskSettingsDisp = dispinterface
   ['{8FD4711D-2D02-4C8C-87E3-EFF699DE127E}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // AllowDemandStart : Control whether the task can be started manually. 
   property AllowDemandStart:WordBool dispid 3;
    // RestartInterval : Amount of time to wait before restarting a failed task. 
   property RestartInterval:WideString dispid 4;
    // RestartCount : Number of tiems to attempt to run a failed task. 
   property RestartCount:SYSINT dispid 5;
    // MultipleInstances : Specify what to do if the task starts while another instance is still running. 
   property MultipleInstances:_TASK_INSTANCES_POLICY dispid 6;
    // StopIfGoingOnBatteries : Cease execution if machine switches to battery power 
   property StopIfGoingOnBatteries:WordBool dispid 7;
    // DisallowStartIfOnBatteries : Do not start if machine is running on battery power 
   property DisallowStartIfOnBatteries:WordBool dispid 8;
    // AllowHardTerminate : Allow task to be stopped with TerminateProcess() 
   property AllowHardTerminate:WordBool dispid 9;
    // StartWhenAvailable : Start task when machine is running if it was off at scheduled time 
   property StartWhenAvailable:WordBool dispid 10;
    // XmlText : Task settings in XML format. 
   property XmlText:WideString dispid 11;
    // RunOnlyIfNetworkAvailable : Only start task if machine is connected to network 
   property RunOnlyIfNetworkAvailable:WordBool dispid 12;
    // ExecutionTimeLimit : Maximum amount of time to allow task to run 
   property ExecutionTimeLimit:WideString dispid 13;
    // Enabled : Control whether task is allowed to run 
   property Enabled:WordBool dispid 14;
    // DeleteExpiredTaskAfter : Amount of time to wait before deleting task after it is no longer scheduled to run 
   property DeleteExpiredTaskAfter:WideString dispid 15;
    // Priority : Controls amount of CPU time and execution order of tasks 
   property Priority:SYSINT dispid 16;
    // Compatibility : Specify whether task is compatible with previous versions 
   property Compatibility:_TASK_COMPATIBILITY dispid 17;
    // Hidden : Do not show task in UI 
   property Hidden:WordBool dispid 18;
    // IdleSettings : Controls how long machine must be idle before starting task 
   property IdleSettings:IIdleSettings dispid 19;
    // RunOnlyIfIdle : Only run task if machine is in idle state 
   property RunOnlyIfIdle:WordBool dispid 20;
    // WakeToRun : Wake machine from suspended power state to run task 
   property WakeToRun:WordBool dispid 21;
    // NetworkSettings : Network required to run task 
   property NetworkSettings:INetworkSettings dispid 22;
  end;


// IIdleSettings : Parameters which specify idle state required for task to run.

 IIdleSettings = interface(IDispatch)
   ['{84594461-0053-4342-A8FD-088FABF11F32}']
   function Get_IdleDuration : WideString; safecall;
   procedure Set_IdleDuration(const pDelay:WideString); safecall;
   function Get_WaitTimeout : WideString; safecall;
   procedure Set_WaitTimeout(const pTimeout:WideString); safecall;
   function Get_StopOnIdleEnd : WordBool; safecall;
   procedure Set_StopOnIdleEnd(const pStop:WordBool); safecall;
   function Get_RestartOnIdle : WordBool; safecall;
   procedure Set_RestartOnIdle(const pRestart:WordBool); safecall;
    // IdleDuration : Amount of time machine has been idle 
   property IdleDuration:WideString read Get_IdleDuration write Set_IdleDuration;
    // WaitTimeout : Amount of time to wait for machine to be idle for IdleDuration 
   property WaitTimeout:WideString read Get_WaitTimeout write Set_WaitTimeout;
    // StopOnIdleEnd : Cease execution when machine is no longer idle 
   property StopOnIdleEnd:WordBool read Get_StopOnIdleEnd write Set_StopOnIdleEnd;
    // RestartOnIdle : Run task when machine is idle again 
   property RestartOnIdle:WordBool read Get_RestartOnIdle write Set_RestartOnIdle;
  end;


// IIdleSettings : Parameters which specify idle state required for task to run.

 IIdleSettingsDisp = dispinterface
   ['{84594461-0053-4342-A8FD-088FABF11F32}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // IdleDuration : Amount of time machine has been idle 
   property IdleDuration:WideString dispid 1;
    // WaitTimeout : Amount of time to wait for machine to be idle for IdleDuration 
   property WaitTimeout:WideString dispid 2;
    // StopOnIdleEnd : Cease execution when machine is no longer idle 
   property StopOnIdleEnd:WordBool dispid 3;
    // RestartOnIdle : Run task when machine is idle again 
   property RestartOnIdle:WordBool dispid 4;
  end;


// INetworkSettings : Specify network settings required to run task.

 INetworkSettings = interface(IDispatch)
   ['{9F7DEA84-C30B-4245-80B6-00E9F646F1B4}']
   function Get_Name : WideString; safecall;
   procedure Set_Name(const pName:WideString); safecall;
   function Get_Id : WideString; safecall;
   procedure Set_Id(const pId:WideString); safecall;
    // Name : Human readable identifier 
   property Name:WideString read Get_Name write Set_Name;
    // Id : Unique GUID 
   property Id:WideString read Get_Id write Set_Id;
  end;


// INetworkSettings : Specify network settings required to run task.

 INetworkSettingsDisp = dispinterface
   ['{9F7DEA84-C30B-4245-80B6-00E9F646F1B4}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Name : Human readable identifier 
   property Name:WideString dispid 1;
    // Id : Unique GUID 
   property Id:WideString dispid 2;
  end;


// IPrincipal : User associated with task

 IPrincipal = interface(IDispatch)
   ['{D98D51E5-C9B4-496A-A9C1-18980261CF0F}']
   function Get_Id : WideString; safecall;
   procedure Set_Id(const pId:WideString); safecall;
   function Get_DisplayName : WideString; safecall;
   procedure Set_DisplayName(const pName:WideString); safecall;
   function Get_UserId : WideString; safecall;
   procedure Set_UserId(const pUser:WideString); safecall;
   function Get_LogonType : _TASK_LOGON_TYPE; safecall;
   procedure Set_LogonType(const pLogon:_TASK_LOGON_TYPE); safecall;
   function Get_GroupId : WideString; safecall;
   procedure Set_GroupId(const pGroup:WideString); safecall;
   function Get_RunLevel : _TASK_RUNLEVEL; safecall;
   procedure Set_RunLevel(const pRunLevel:_TASK_RUNLEVEL); safecall;
    // Id : Required, unique per task 
   property Id:WideString read Get_Id write Set_Id;
    // DisplayName : Human-readable name 
   property DisplayName:WideString read Get_DisplayName write Set_DisplayName;
    // UserId : User's login id 
   property UserId:WideString read Get_UserId write Set_UserId;
    // LogonType : Kind of login to be performed, TASK_LOGON_TYPE 
   property LogonType:_TASK_LOGON_TYPE read Get_LogonType write Set_LogonType;
    // GroupId : Name of a security group 
   property GroupId:WideString read Get_GroupId write Set_GroupId;
    // RunLevel : TASK_RUNLEVEL_TYPE 
   property RunLevel:_TASK_RUNLEVEL read Get_RunLevel write Set_RunLevel;
  end;


// IPrincipal : User associated with task

 IPrincipalDisp = dispinterface
   ['{D98D51E5-C9B4-496A-A9C1-18980261CF0F}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Id : Required, unique per task 
   property Id:WideString dispid 1;
    // DisplayName : Human-readable name 
   property DisplayName:WideString dispid 2;
    // UserId : User's login id 
   property UserId:WideString dispid 3;
    // LogonType : Kind of login to be performed, TASK_LOGON_TYPE 
   property LogonType:_TASK_LOGON_TYPE dispid 4;
    // GroupId : Name of a security group 
   property GroupId:WideString dispid 5;
    // RunLevel : TASK_RUNLEVEL_TYPE 
   property RunLevel:_TASK_RUNLEVEL dispid 6;
  end;


// IActionCollection : Container of task actions.

 IActionCollection = interface(IDispatch)
   ['{02820E19-7B98-4ED2-B2E8-FDCCCEFF619B}']
   function Get_Count : Integer; safecall;
   function Get_Item(index:Integer) : IAction; safecall;
   function Get__NewEnum : IUnknown; safecall;
   function Get_XmlText : WideString; safecall;
   procedure Set_XmlText(const pText:WideString); safecall;
    // Create : Make new action 
   function Create(Type_:_TASK_ACTION_TYPE):IAction;safecall;
    // Remove : Erase specific action 
   procedure Remove(index:OleVariant);safecall;
    // Clear : Erase all actions 
   procedure Clear;safecall;
   function Get_Context : WideString; safecall;
   procedure Set_Context(const pContext:WideString); safecall;
    // Count : Number of elements 
   property Count:Integer read Get_Count;
    // Item : Retrieve specific element 
   property Item[index:Integer]:IAction read Get_Item; default;
    // _NewEnum : Create new enumerator 
   property _NewEnum:IUnknown read Get__NewEnum;
    // XmlText :  
   property XmlText:WideString read Get_XmlText write Set_XmlText;
    // Context : ID of principal to be used 
   property Context:WideString read Get_Context write Set_Context;
  end;


// IActionCollection : Container of task actions.

 IActionCollectionDisp = dispinterface
   ['{02820E19-7B98-4ED2-B2E8-FDCCCEFF619B}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Create : Make new action 
   function Create(Type_:_TASK_ACTION_TYPE):IAction;dispid 3;
    // Remove : Erase specific action 
   procedure Remove(index:OleVariant);dispid 4;
    // Clear : Erase all actions 
   procedure Clear;dispid 5;
    // Count : Number of elements 
   property Count:Integer  readonly dispid 1;
    // Item : Retrieve specific element 
   property Item[index:Integer]:IAction  readonly dispid 0; default;
    // _NewEnum : Create new enumerator 
   property _NewEnum:IUnknown  readonly dispid -4;
    // XmlText :  
   property XmlText:WideString dispid 2;
    // Context : ID of principal to be used 
   property Context:WideString dispid 6;
  end;


// IAction : A single operation to be performed.

 IAction = interface(IDispatch)
   ['{BAE54997-48B1-4CBE-9965-D6BE263EBEA4}']
   function Get_Id : WideString; safecall;
   procedure Set_Id(const pId:WideString); safecall;
   function Get_Type_ : _TASK_ACTION_TYPE; safecall;
    // Id : A Unique name for this action 
   property Id:WideString read Get_Id write Set_Id;
    // Type : The specific kind of action to be performed 
   property Type_:_TASK_ACTION_TYPE read Get_Type_;
  end;


// IAction : A single operation to be performed.

 IActionDisp = dispinterface
   ['{BAE54997-48B1-4CBE-9965-D6BE263EBEA4}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Id : A Unique name for this action 
   property Id:WideString dispid 1;
    // Type : The specific kind of action to be performed 
   property Type_:_TASK_ACTION_TYPE  readonly dispid 2;
  end;


// IRegisteredTaskCollection : Group of IRegisteredTasks.

 IRegisteredTaskCollection = interface(IDispatch)
   ['{86627EB4-42A7-41E4-A4D9-AC33A72F2D52}']
   function Get_Count : Integer; safecall;
   function Get_Item(index:OleVariant) : IRegisteredTask; safecall;
   function Get__NewEnum : IUnknown; safecall;
    // Count : Number of elements in collection. 
   property Count:Integer read Get_Count;
    // Item : Retrieve specific element 
   property Item[index:OleVariant]:IRegisteredTask read Get_Item; default;
    // _NewEnum : Create new enumerator. 
   property _NewEnum:IUnknown read Get__NewEnum;
  end;


// IRegisteredTaskCollection : Group of IRegisteredTasks.

 IRegisteredTaskCollectionDisp = dispinterface
   ['{86627EB4-42A7-41E4-A4D9-AC33A72F2D52}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Count : Number of elements in collection. 
   property Count:Integer  readonly dispid 1610743808;
    // Item : Retrieve specific element 
   property Item[index:OleVariant]:IRegisteredTask  readonly dispid 0; default;
    // _NewEnum : Create new enumerator. 
   property _NewEnum:IUnknown  readonly dispid -4;
  end;


// ITaskService : Communicate with the Task Scheduler service.

 ITaskService = interface(IDispatch)
   ['{2FABA4C7-4DA9-4013-9697-20CC3FD40F85}']
    // GetFolder : Retrieve named folder. 
   function GetFolder(Path:WideString):ITaskFolder;safecall;
    // GetRunningTasks : Retrieve collection of tasks currently executing. 
   function GetRunningTasks(flags:Integer):IRunningTaskCollection;safecall;
    // NewTask : Create a new Task Definition object. 
   function NewTask(flags:LongWord):ITaskDefinition;safecall;
    // Connect : Initiate communication with Task Scheduler Service. 
   procedure Connect(serverName:OleVariant;user:OleVariant;domain:OleVariant;password:OleVariant);safecall;
   function Get_Connected : WordBool; safecall;
   function Get_TargetServer : WideString; safecall;
   function Get_ConnectedUser : WideString; safecall;
   function Get_ConnectedDomain : WideString; safecall;
   function Get_HighestVersion : LongWord; safecall;
    // Connected : Returns true if communication has been initiated. 
   property Connected:WordBool read Get_Connected;
    // TargetServer : Name of machine this interface is communicating with. 
   property TargetServer:WideString read Get_TargetServer;
    // ConnectedUser : User name associated with current session. 
   property ConnectedUser:WideString read Get_ConnectedUser;
    // ConnectedDomain : Domain of user associated with current session. 
   property ConnectedDomain:WideString read Get_ConnectedDomain;
    // HighestVersion : Latest revision server supports. 
   property HighestVersion:LongWord read Get_HighestVersion;
  end;


// ITaskService : Communicate with the Task Scheduler service.

 ITaskServiceDisp = dispinterface
   ['{2FABA4C7-4DA9-4013-9697-20CC3FD40F85}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // GetFolder : Retrieve named folder. 
   function GetFolder(Path:WideString):ITaskFolder;dispid 1;
    // GetRunningTasks : Retrieve collection of tasks currently executing. 
   function GetRunningTasks(flags:Integer):IRunningTaskCollection;dispid 2;
    // NewTask : Create a new Task Definition object. 
   function NewTask(flags:LongWord):ITaskDefinition;dispid 3;
    // Connect : Initiate communication with Task Scheduler Service. 
   procedure Connect(serverName:OleVariant;user:OleVariant;domain:OleVariant;password:OleVariant);dispid 4;
    // Connected : Returns true if communication has been initiated. 
   property Connected:WordBool  readonly dispid 5;
    // TargetServer : Name of machine this interface is communicating with. 
   property TargetServer:WideString  readonly dispid 0;
    // ConnectedUser : User name associated with current session. 
   property ConnectedUser:WideString  readonly dispid 6;
    // ConnectedDomain : Domain of user associated with current session. 
   property ConnectedDomain:WideString  readonly dispid 7;
    // HighestVersion : Latest revision server supports. 
   property HighestVersion:LongWord  readonly dispid 8;
  end;


// ITaskHandler : The COM task handler action interface.

 ITaskHandler = interface(IUnknown)
   ['{839D7762-5121-4009-9234-4F0D19394F04}']
    // Start : Begin execution (spawn thread & return quickly). 
   function Start(pHandlerServices:IUnknown;Data:WideString):HRESULT;stdcall;
    // Stop : Cease execution. 
   function Stop(out pRetCode:HResult):HRESULT;stdcall;
    // Pause : Suspend execution until Resume() is called. 
   function Pause:HRESULT;stdcall;
    // Resume : Start execution where it was when Pause() was called. 
   function Resume:HRESULT;stdcall;
  end;


// ITaskHandlerStatus : Allow task handler to send status information to Task Scheduler.

 ITaskHandlerStatus = interface(IUnknown)
   ['{EAEC7A8F-27A0-4DDC-8675-14726A01A38A}']
    // UpdateStatus : Give current action status to Task Scheduler. 
   function UpdateStatus(percentComplete:Smallint;statusMessage:WideString):HRESULT;stdcall;
    // TaskCompleted : Inform the service that the task instance has finished. 
   function TaskCompleted(taskErrCode:HResult):HRESULT;stdcall;
  end;


// ITaskVariables : Allows Task Scheduler to share information with the task instance.

 ITaskVariables = interface(IUnknown)
   ['{3E4C9351-D966-4B8B-BB87-CEBA68BB0107}']
    // GetInput : Retrieve information from task engine. 
   function GetInput:HRESULT;stdcall;
    // SetOutput : Send information to task engine. 
   function SetOutput(input_:WideString):HRESULT;stdcall;
    // GetContext : Retrieve all output from all actions. 
   function GetContext:HRESULT;stdcall;
  end;


// ITaskNamedValuePair : Container for named strings.

 ITaskNamedValuePair = interface(IDispatch)
   ['{39038068-2B46-4AFD-8662-7BB6F868D221}']
   function Get_Name : WideString; safecall;
   procedure Set_Name(const pName:WideString); safecall;
   function Get_Value : WideString; safecall;
   procedure Set_Value(const pValue:WideString); safecall;
    // Name : Unique identifier for this pair. 
   property Name:WideString read Get_Name write Set_Name;
    // Value : String associated with the name. 
   property Value:WideString read Get_Value write Set_Value;
  end;


// ITaskNamedValuePair : Container for named strings.

 ITaskNamedValuePairDisp = dispinterface
   ['{39038068-2B46-4AFD-8662-7BB6F868D221}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Name : Unique identifier for this pair. 
   property Name:WideString dispid 0;
    // Value : String associated with the name. 
   property Value:WideString dispid 1;
  end;


// ITaskNamedValueCollection : Group of ITaskNamedValuePairs.

 ITaskNamedValueCollection = interface(IDispatch)
   ['{B4EF826B-63C3-46E4-A504-EF69E4F7EA4D}']
   function Get_Count : Integer; safecall;
   function Get_Item(index:Integer) : ITaskNamedValuePair; safecall;
   function Get__NewEnum : IUnknown; safecall;
    // Create : Create new ITaskNamedValuePair. 
   function Create(Name:WideString;Value:WideString):ITaskNamedValuePair;safecall;
    // Remove : Delete specific ITaskNamedValuePair. 
   procedure Remove(index:Integer);safecall;
    // Clear : Delete all ITaskNamedValuePairs. 
   procedure Clear;safecall;
    // Count : Number of elements. 
   property Count:Integer read Get_Count;
    // Item : Access one ITaskNamedValuePair by index. 
   property Item[index:Integer]:ITaskNamedValuePair read Get_Item; default;
    // _NewEnum :  
   property _NewEnum:IUnknown read Get__NewEnum;
  end;


// ITaskNamedValueCollection : Group of ITaskNamedValuePairs.

 ITaskNamedValueCollectionDisp = dispinterface
   ['{B4EF826B-63C3-46E4-A504-EF69E4F7EA4D}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Create : Create new ITaskNamedValuePair. 
   function Create(Name:WideString;Value:WideString):ITaskNamedValuePair;dispid 2;
    // Remove : Delete specific ITaskNamedValuePair. 
   procedure Remove(index:Integer);dispid 4;
    // Clear : Delete all ITaskNamedValuePairs. 
   procedure Clear;dispid 5;
    // Count : Number of elements. 
   property Count:Integer  readonly dispid 1;
    // Item : Access one ITaskNamedValuePair by index. 
   property Item[index:Integer]:ITaskNamedValuePair  readonly dispid 0; default;
    // _NewEnum :  
   property _NewEnum:IUnknown  readonly dispid -4;
  end;


// IIdleTrigger : Run task when machine becomes idle.

 IIdleTrigger = interface(ITrigger)
   ['{D537D2B0-9FB3-4D34-9739-1FF5CE7B1EF3}']
  end;


// IIdleTrigger : Run task when machine becomes idle.

 IIdleTriggerDisp = dispinterface
   ['{D537D2B0-9FB3-4D34-9739-1FF5CE7B1EF3}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Type : Specific kind of trigger 
   property Type_:_TASK_TRIGGER_TYPE2  readonly dispid 1;
    // Id : Unique name for this trigger 
   property Id:WideString dispid 2;
    // Repetition : Specify that task should execute multiple times 
   property Repetition:IRepetitionPattern dispid 3;
    // ExecutionTimeLimit : Amount of time task is allowed to execute 
   property ExecutionTimeLimit:WideString dispid 4;
    // StartBoundary : Earliest time task is allowed to run 
   property StartBoundary:WideString dispid 5;
    // EndBoundary : Latest time task is allowed to run 
   property EndBoundary:WideString dispid 6;
    // Enabled : If true, task will run in response to this trigger 
   property Enabled:WordBool dispid 7;
  end;


// ILogonTrigger : Run task when user logs on.

 ILogonTrigger = interface(ITrigger)
   ['{72DADE38-FAE4-4B3E-BAF4-5D009AF02B1C}']
   function Get_Delay : WideString; safecall;
   procedure Set_Delay(const pDelay:WideString); safecall;
   function Get_UserId : WideString; safecall;
   procedure Set_UserId(const pUser:WideString); safecall;
    // Delay : Amount of time to wait before starting task 
   property Delay:WideString read Get_Delay write Set_Delay;
    // UserId : Run task when specific user logs on 
   property UserId:WideString read Get_UserId write Set_UserId;
  end;


// ILogonTrigger : Run task when user logs on.

 ILogonTriggerDisp = dispinterface
   ['{72DADE38-FAE4-4B3E-BAF4-5D009AF02B1C}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Type : Specific kind of trigger 
   property Type_:_TASK_TRIGGER_TYPE2  readonly dispid 1;
    // Id : Unique name for this trigger 
   property Id:WideString dispid 2;
    // Repetition : Specify that task should execute multiple times 
   property Repetition:IRepetitionPattern dispid 3;
    // ExecutionTimeLimit : Amount of time task is allowed to execute 
   property ExecutionTimeLimit:WideString dispid 4;
    // StartBoundary : Earliest time task is allowed to run 
   property StartBoundary:WideString dispid 5;
    // EndBoundary : Latest time task is allowed to run 
   property EndBoundary:WideString dispid 6;
    // Enabled : If true, task will run in response to this trigger 
   property Enabled:WordBool dispid 7;
    // Delay : Amount of time to wait before starting task 
   property Delay:WideString dispid 20;
    // UserId : Run task when specific user logs on 
   property UserId:WideString dispid 21;
  end;


// ISessionStateChangeTrigger : Run task when login session state changes.

 ISessionStateChangeTrigger = interface(ITrigger)
   ['{754DA71B-4385-4475-9DD9-598294FA3641}']
   function Get_Delay : WideString; safecall;
   procedure Set_Delay(const pDelay:WideString); safecall;
   function Get_UserId : WideString; safecall;
   procedure Set_UserId(const pUser:WideString); safecall;
   function Get_StateChange : _TASK_SESSION_STATE_CHANGE_TYPE; safecall;
   procedure Set_StateChange(const pType:_TASK_SESSION_STATE_CHANGE_TYPE); safecall;
    // Delay : Amount of time to wait before starting task 
   property Delay:WideString read Get_Delay write Set_Delay;
    // UserId : Run task only specific user's state changes 
   property UserId:WideString read Get_UserId write Set_UserId;
    // StateChange : Specific type of state change 
   property StateChange:_TASK_SESSION_STATE_CHANGE_TYPE read Get_StateChange write Set_StateChange;
  end;


// ISessionStateChangeTrigger : Run task when login session state changes.

 ISessionStateChangeTriggerDisp = dispinterface
   ['{754DA71B-4385-4475-9DD9-598294FA3641}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Type : Specific kind of trigger 
   property Type_:_TASK_TRIGGER_TYPE2  readonly dispid 1;
    // Id : Unique name for this trigger 
   property Id:WideString dispid 2;
    // Repetition : Specify that task should execute multiple times 
   property Repetition:IRepetitionPattern dispid 3;
    // ExecutionTimeLimit : Amount of time task is allowed to execute 
   property ExecutionTimeLimit:WideString dispid 4;
    // StartBoundary : Earliest time task is allowed to run 
   property StartBoundary:WideString dispid 5;
    // EndBoundary : Latest time task is allowed to run 
   property EndBoundary:WideString dispid 6;
    // Enabled : If true, task will run in response to this trigger 
   property Enabled:WordBool dispid 7;
    // Delay : Amount of time to wait before starting task 
   property Delay:WideString dispid 20;
    // UserId : Run task only specific user's state changes 
   property UserId:WideString dispid 21;
    // StateChange : Specific type of state change 
   property StateChange:_TASK_SESSION_STATE_CHANGE_TYPE dispid 22;
  end;


// IEventTrigger : Start task in response to an event log event.

 IEventTrigger = interface(ITrigger)
   ['{D45B0167-9653-4EEF-B94F-0732CA7AF251}']
   function Get_Subscription : WideString; safecall;
   procedure Set_Subscription(const pQuery:WideString); safecall;
   function Get_Delay : WideString; safecall;
   procedure Set_Delay(const pDelay:WideString); safecall;
   function Get_ValueQueries : ITaskNamedValueCollection; safecall;
   procedure Set_ValueQueries(const ppNamedXPaths:ITaskNamedValueCollection); safecall;
    // Subscription : Event query to identify events which will start task 
   property Subscription:WideString read Get_Subscription write Set_Subscription;
    // Delay : Amount of time to wait after event before starting task 
   property Delay:WideString read Get_Delay write Set_Delay;
    // ValueQueries : Identify event properties to used by task 
   property ValueQueries:ITaskNamedValueCollection read Get_ValueQueries write Set_ValueQueries;
  end;


// IEventTrigger : Start task in response to an event log event.

 IEventTriggerDisp = dispinterface
   ['{D45B0167-9653-4EEF-B94F-0732CA7AF251}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Type : Specific kind of trigger 
   property Type_:_TASK_TRIGGER_TYPE2  readonly dispid 1;
    // Id : Unique name for this trigger 
   property Id:WideString dispid 2;
    // Repetition : Specify that task should execute multiple times 
   property Repetition:IRepetitionPattern dispid 3;
    // ExecutionTimeLimit : Amount of time task is allowed to execute 
   property ExecutionTimeLimit:WideString dispid 4;
    // StartBoundary : Earliest time task is allowed to run 
   property StartBoundary:WideString dispid 5;
    // EndBoundary : Latest time task is allowed to run 
   property EndBoundary:WideString dispid 6;
    // Enabled : If true, task will run in response to this trigger 
   property Enabled:WordBool dispid 7;
    // Subscription : Event query to identify events which will start task 
   property Subscription:WideString dispid 20;
    // Delay : Amount of time to wait after event before starting task 
   property Delay:WideString dispid 21;
    // ValueQueries : Identify event properties to used by task 
   property ValueQueries:ITaskNamedValueCollection dispid 22;
  end;


// ITimeTrigger : Start task at a specific time.

 ITimeTrigger = interface(ITrigger)
   ['{B45747E0-EBA7-4276-9F29-85C5BB300006}']
   function Get_RandomDelay : WideString; safecall;
   procedure Set_RandomDelay(const pRandomDelay:WideString); safecall;
    // RandomDelay : Maximum amount of time to delay execution 
   property RandomDelay:WideString read Get_RandomDelay write Set_RandomDelay;
  end;


// ITimeTrigger : Start task at a specific time.

 ITimeTriggerDisp = dispinterface
   ['{B45747E0-EBA7-4276-9F29-85C5BB300006}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Type : Specific kind of trigger 
   property Type_:_TASK_TRIGGER_TYPE2  readonly dispid 1;
    // Id : Unique name for this trigger 
   property Id:WideString dispid 2;
    // Repetition : Specify that task should execute multiple times 
   property Repetition:IRepetitionPattern dispid 3;
    // ExecutionTimeLimit : Amount of time task is allowed to execute 
   property ExecutionTimeLimit:WideString dispid 4;
    // StartBoundary : Earliest time task is allowed to run 
   property StartBoundary:WideString dispid 5;
    // EndBoundary : Latest time task is allowed to run 
   property EndBoundary:WideString dispid 6;
    // Enabled : If true, task will run in response to this trigger 
   property Enabled:WordBool dispid 7;
    // RandomDelay : Maximum amount of time to delay execution 
   property RandomDelay:WideString dispid 20;
  end;


// IDailyTrigger : Run task every day, or every N days.

 IDailyTrigger = interface(ITrigger)
   ['{126C5CD8-B288-41D5-8DBF-E491446ADC5C}']
   function Get_DaysInterval : Smallint; safecall;
   procedure Set_DaysInterval(const pDays:Smallint); safecall;
   function Get_RandomDelay : WideString; safecall;
   procedure Set_RandomDelay(const pRandomDelay:WideString); safecall;
    // DaysInterval : Number of days between executions 
   property DaysInterval:Smallint read Get_DaysInterval write Set_DaysInterval;
    // RandomDelay : Maximum amount of time to delay execution 
   property RandomDelay:WideString read Get_RandomDelay write Set_RandomDelay;
  end;


// IDailyTrigger : Run task every day, or every N days.

 IDailyTriggerDisp = dispinterface
   ['{126C5CD8-B288-41D5-8DBF-E491446ADC5C}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Type : Specific kind of trigger 
   property Type_:_TASK_TRIGGER_TYPE2  readonly dispid 1;
    // Id : Unique name for this trigger 
   property Id:WideString dispid 2;
    // Repetition : Specify that task should execute multiple times 
   property Repetition:IRepetitionPattern dispid 3;
    // ExecutionTimeLimit : Amount of time task is allowed to execute 
   property ExecutionTimeLimit:WideString dispid 4;
    // StartBoundary : Earliest time task is allowed to run 
   property StartBoundary:WideString dispid 5;
    // EndBoundary : Latest time task is allowed to run 
   property EndBoundary:WideString dispid 6;
    // Enabled : If true, task will run in response to this trigger 
   property Enabled:WordBool dispid 7;
    // DaysInterval : Number of days between executions 
   property DaysInterval:Smallint dispid 25;
    // RandomDelay : Maximum amount of time to delay execution 
   property RandomDelay:WideString dispid 20;
  end;


// IWeeklyTrigger : Run task every week, or every N weeks.

 IWeeklyTrigger = interface(ITrigger)
   ['{5038FC98-82FF-436D-8728-A512A57C9DC1}']
   function Get_DaysOfWeek : Smallint; safecall;
   procedure Set_DaysOfWeek(const pDays:Smallint); safecall;
   function Get_WeeksInterval : Smallint; safecall;
   procedure Set_WeeksInterval(const pWeeks:Smallint); safecall;
   function Get_RandomDelay : WideString; safecall;
   procedure Set_RandomDelay(const pRandomDelay:WideString); safecall;
    // DaysOfWeek : Bit mask specifying which days to run 
   property DaysOfWeek:Smallint read Get_DaysOfWeek write Set_DaysOfWeek;
    // WeeksInterval : Number of weeks between runs 
   property WeeksInterval:Smallint read Get_WeeksInterval write Set_WeeksInterval;
    // RandomDelay : Maximum amount of time to delay execution 
   property RandomDelay:WideString read Get_RandomDelay write Set_RandomDelay;
  end;


// IWeeklyTrigger : Run task every week, or every N weeks.

 IWeeklyTriggerDisp = dispinterface
   ['{5038FC98-82FF-436D-8728-A512A57C9DC1}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Type : Specific kind of trigger 
   property Type_:_TASK_TRIGGER_TYPE2  readonly dispid 1;
    // Id : Unique name for this trigger 
   property Id:WideString dispid 2;
    // Repetition : Specify that task should execute multiple times 
   property Repetition:IRepetitionPattern dispid 3;
    // ExecutionTimeLimit : Amount of time task is allowed to execute 
   property ExecutionTimeLimit:WideString dispid 4;
    // StartBoundary : Earliest time task is allowed to run 
   property StartBoundary:WideString dispid 5;
    // EndBoundary : Latest time task is allowed to run 
   property EndBoundary:WideString dispid 6;
    // Enabled : If true, task will run in response to this trigger 
   property Enabled:WordBool dispid 7;
    // DaysOfWeek : Bit mask specifying which days to run 
   property DaysOfWeek:Smallint dispid 25;
    // WeeksInterval : Number of weeks between runs 
   property WeeksInterval:Smallint dispid 26;
    // RandomDelay : Maximum amount of time to delay execution 
   property RandomDelay:WideString dispid 20;
  end;


// IMonthlyTrigger : Run task on specific days each month.

 IMonthlyTrigger = interface(ITrigger)
   ['{97C45EF1-6B02-4A1A-9C0E-1EBFBA1500AC}']
   function Get_DaysOfMonth : Integer; safecall;
   procedure Set_DaysOfMonth(const pDays:Integer); safecall;
   function Get_MonthsOfYear : Smallint; safecall;
   procedure Set_MonthsOfYear(const pMonths:Smallint); safecall;
   function Get_RunOnLastDayOfMonth : WordBool; safecall;
   procedure Set_RunOnLastDayOfMonth(const pLastDay:WordBool); safecall;
   function Get_RandomDelay : WideString; safecall;
   procedure Set_RandomDelay(const pRandomDelay:WideString); safecall;
    // DaysOfMonth : Bit mask specifying which days to run 
   property DaysOfMonth:Integer read Get_DaysOfMonth write Set_DaysOfMonth;
    // MonthsOfYear : Bit mask specifying which months to run 
   property MonthsOfYear:Smallint read Get_MonthsOfYear write Set_MonthsOfYear;
    // RunOnLastDayOfMonth : Run on last day of month, regardless of numeric date 
   property RunOnLastDayOfMonth:WordBool read Get_RunOnLastDayOfMonth write Set_RunOnLastDayOfMonth;
    // RandomDelay : Maximum amount of time to delay execution 
   property RandomDelay:WideString read Get_RandomDelay write Set_RandomDelay;
  end;


// IMonthlyTrigger : Run task on specific days each month.

 IMonthlyTriggerDisp = dispinterface
   ['{97C45EF1-6B02-4A1A-9C0E-1EBFBA1500AC}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Type : Specific kind of trigger 
   property Type_:_TASK_TRIGGER_TYPE2  readonly dispid 1;
    // Id : Unique name for this trigger 
   property Id:WideString dispid 2;
    // Repetition : Specify that task should execute multiple times 
   property Repetition:IRepetitionPattern dispid 3;
    // ExecutionTimeLimit : Amount of time task is allowed to execute 
   property ExecutionTimeLimit:WideString dispid 4;
    // StartBoundary : Earliest time task is allowed to run 
   property StartBoundary:WideString dispid 5;
    // EndBoundary : Latest time task is allowed to run 
   property EndBoundary:WideString dispid 6;
    // Enabled : If true, task will run in response to this trigger 
   property Enabled:WordBool dispid 7;
    // DaysOfMonth : Bit mask specifying which days to run 
   property DaysOfMonth:Integer dispid 25;
    // MonthsOfYear : Bit mask specifying which months to run 
   property MonthsOfYear:Smallint dispid 26;
    // RunOnLastDayOfMonth : Run on last day of month, regardless of numeric date 
   property RunOnLastDayOfMonth:WordBool dispid 27;
    // RandomDelay : Maximum amount of time to delay execution 
   property RandomDelay:WideString dispid 20;
  end;


// IMonthlyDOWTrigger : Run task on specific day of week, e.g. 'Second Tuesday in March'.

 IMonthlyDOWTrigger = interface(ITrigger)
   ['{77D025A3-90FA-43AA-B52E-CDA5499B946A}']
   function Get_DaysOfWeek : Smallint; safecall;
   procedure Set_DaysOfWeek(const pDays:Smallint); safecall;
   function Get_WeeksOfMonth : Smallint; safecall;
   procedure Set_WeeksOfMonth(const pWeeks:Smallint); safecall;
   function Get_MonthsOfYear : Smallint; safecall;
   procedure Set_MonthsOfYear(const pMonths:Smallint); safecall;
   function Get_RunOnLastWeekOfMonth : WordBool; safecall;
   procedure Set_RunOnLastWeekOfMonth(const pLastWeek:WordBool); safecall;
   function Get_RandomDelay : WideString; safecall;
   procedure Set_RandomDelay(const pRandomDelay:WideString); safecall;
    // DaysOfWeek : Bit mask specifying which days to run 
   property DaysOfWeek:Smallint read Get_DaysOfWeek write Set_DaysOfWeek;
    // WeeksOfMonth : Bit mask specifying which weeks to run 
   property WeeksOfMonth:Smallint read Get_WeeksOfMonth write Set_WeeksOfMonth;
    // MonthsOfYear : Bit mask specifying which months to run 
   property MonthsOfYear:Smallint read Get_MonthsOfYear write Set_MonthsOfYear;
    // RunOnLastWeekOfMonth : Run during last week - regardless of whether it's the fourth or fifth week 
   property RunOnLastWeekOfMonth:WordBool read Get_RunOnLastWeekOfMonth write Set_RunOnLastWeekOfMonth;
    // RandomDelay : Maximum amount of time to delay execution 
   property RandomDelay:WideString read Get_RandomDelay write Set_RandomDelay;
  end;


// IMonthlyDOWTrigger : Run task on specific day of week, e.g. 'Second Tuesday in March'.

 IMonthlyDOWTriggerDisp = dispinterface
   ['{77D025A3-90FA-43AA-B52E-CDA5499B946A}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Type : Specific kind of trigger 
   property Type_:_TASK_TRIGGER_TYPE2  readonly dispid 1;
    // Id : Unique name for this trigger 
   property Id:WideString dispid 2;
    // Repetition : Specify that task should execute multiple times 
   property Repetition:IRepetitionPattern dispid 3;
    // ExecutionTimeLimit : Amount of time task is allowed to execute 
   property ExecutionTimeLimit:WideString dispid 4;
    // StartBoundary : Earliest time task is allowed to run 
   property StartBoundary:WideString dispid 5;
    // EndBoundary : Latest time task is allowed to run 
   property EndBoundary:WideString dispid 6;
    // Enabled : If true, task will run in response to this trigger 
   property Enabled:WordBool dispid 7;
    // DaysOfWeek : Bit mask specifying which days to run 
   property DaysOfWeek:Smallint dispid 25;
    // WeeksOfMonth : Bit mask specifying which weeks to run 
   property WeeksOfMonth:Smallint dispid 26;
    // MonthsOfYear : Bit mask specifying which months to run 
   property MonthsOfYear:Smallint dispid 27;
    // RunOnLastWeekOfMonth : Run during last week - regardless of whether it's the fourth or fifth week 
   property RunOnLastWeekOfMonth:WordBool dispid 28;
    // RandomDelay : Maximum amount of time to delay execution 
   property RandomDelay:WideString dispid 20;
  end;


// IBootTrigger : Run task when machine starts up.

 IBootTrigger = interface(ITrigger)
   ['{2A9C35DA-D357-41F4-BBC1-207AC1B1F3CB}']
   function Get_Delay : WideString; safecall;
   procedure Set_Delay(const pDelay:WideString); safecall;
    // Delay : Amount of time to wait before starting task 
   property Delay:WideString read Get_Delay write Set_Delay;
  end;


// IBootTrigger : Run task when machine starts up.

 IBootTriggerDisp = dispinterface
   ['{2A9C35DA-D357-41F4-BBC1-207AC1B1F3CB}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Type : Specific kind of trigger 
   property Type_:_TASK_TRIGGER_TYPE2  readonly dispid 1;
    // Id : Unique name for this trigger 
   property Id:WideString dispid 2;
    // Repetition : Specify that task should execute multiple times 
   property Repetition:IRepetitionPattern dispid 3;
    // ExecutionTimeLimit : Amount of time task is allowed to execute 
   property ExecutionTimeLimit:WideString dispid 4;
    // StartBoundary : Earliest time task is allowed to run 
   property StartBoundary:WideString dispid 5;
    // EndBoundary : Latest time task is allowed to run 
   property EndBoundary:WideString dispid 6;
    // Enabled : If true, task will run in response to this trigger 
   property Enabled:WordBool dispid 7;
    // Delay : Amount of time to wait before starting task 
   property Delay:WideString dispid 20;
  end;


// IRegistrationTrigger : Run task as soon as it is registered.

 IRegistrationTrigger = interface(ITrigger)
   ['{4C8FEC3A-C218-4E0C-B23D-629024DB91A2}']
   function Get_Delay : WideString; safecall;
   procedure Set_Delay(const pDelay:WideString); safecall;
    // Delay : Amount of time to wait before starting task 
   property Delay:WideString read Get_Delay write Set_Delay;
  end;


// IRegistrationTrigger : Run task as soon as it is registered.

 IRegistrationTriggerDisp = dispinterface
   ['{4C8FEC3A-C218-4E0C-B23D-629024DB91A2}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Type : Specific kind of trigger 
   property Type_:_TASK_TRIGGER_TYPE2  readonly dispid 1;
    // Id : Unique name for this trigger 
   property Id:WideString dispid 2;
    // Repetition : Specify that task should execute multiple times 
   property Repetition:IRepetitionPattern dispid 3;
    // ExecutionTimeLimit : Amount of time task is allowed to execute 
   property ExecutionTimeLimit:WideString dispid 4;
    // StartBoundary : Earliest time task is allowed to run 
   property StartBoundary:WideString dispid 5;
    // EndBoundary : Latest time task is allowed to run 
   property EndBoundary:WideString dispid 6;
    // Enabled : If true, task will run in response to this trigger 
   property Enabled:WordBool dispid 7;
    // Delay : Amount of time to wait before starting task 
   property Delay:WideString dispid 20;
  end;


// IExecAction : Run a program.

 IExecAction = interface(IAction)
   ['{4C3D624D-FD6B-49A3-B9B7-09CB3CD3F047}']
   function Get_Path : WideString; safecall;
   procedure Set_Path(const pPath:WideString); safecall;
   function Get_Arguments : WideString; safecall;
   procedure Set_Arguments(const pArgument:WideString); safecall;
   function Get_WorkingDirectory : WideString; safecall;
   procedure Set_WorkingDirectory(const pWorkingDirectory:WideString); safecall;
    // Path : Program name 
   property Path:WideString read Get_Path write Set_Path;
    // Arguments : Command line parameters for the program 
   property Arguments:WideString read Get_Arguments write Set_Arguments;
    // WorkingDirectory : Default directory for the program 
   property WorkingDirectory:WideString read Get_WorkingDirectory write Set_WorkingDirectory;
  end;


// IExecAction : Run a program.

 IExecActionDisp = dispinterface
   ['{4C3D624D-FD6B-49A3-B9B7-09CB3CD3F047}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Id : A Unique name for this action 
   property Id:WideString dispid 1;
    // Type : The specific kind of action to be performed 
   property Type_:_TASK_ACTION_TYPE  readonly dispid 2;
    // Path : Program name 
   property Path:WideString dispid 10;
    // Arguments : Command line parameters for the program 
   property Arguments:WideString dispid 11;
    // WorkingDirectory : Default directory for the program 
   property WorkingDirectory:WideString dispid 12;
  end;


// IShowMessageAction : Show a message to the user.

 IShowMessageAction = interface(IAction)
   ['{505E9E68-AF89-46B8-A30F-56162A83D537}']
   function Get_Title : WideString; safecall;
   procedure Set_Title(const pTitle:WideString); safecall;
   function Get_MessageBody : WideString; safecall;
   procedure Set_MessageBody(const pMessageBody:WideString); safecall;
    // Title : Subject of message 
   property Title:WideString read Get_Title write Set_Title;
    // MessageBody : Text of message 
   property MessageBody:WideString read Get_MessageBody write Set_MessageBody;
  end;


// IShowMessageAction : Show a message to the user.

 IShowMessageActionDisp = dispinterface
   ['{505E9E68-AF89-46B8-A30F-56162A83D537}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Id : A Unique name for this action 
   property Id:WideString dispid 1;
    // Type : The specific kind of action to be performed 
   property Type_:_TASK_ACTION_TYPE  readonly dispid 2;
    // Title : Subject of message 
   property Title:WideString dispid 10;
    // MessageBody : Text of message 
   property MessageBody:WideString dispid 11;
  end;


// IComHandlerAction : Execute a COM Task Handler.

 IComHandlerAction = interface(IAction)
   ['{6D2FD252-75C5-4F66-90BA-2A7D8CC3039F}']
   function Get_ClassId : WideString; safecall;
   procedure Set_ClassId(const pClsid:WideString); safecall;
   function Get_Data : WideString; safecall;
   procedure Set_Data(const pData:WideString); safecall;
    // ClassId : CLSID for handler 
   property ClassId:WideString read Get_ClassId write Set_ClassId;
    // Data : Information to be passed to handler at startup 
   property Data:WideString read Get_Data write Set_Data;
  end;


// IComHandlerAction : Execute a COM Task Handler.

 IComHandlerActionDisp = dispinterface
   ['{6D2FD252-75C5-4F66-90BA-2A7D8CC3039F}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Id : A Unique name for this action 
   property Id:WideString dispid 1;
    // Type : The specific kind of action to be performed 
   property Type_:_TASK_ACTION_TYPE  readonly dispid 2;
    // ClassId : CLSID for handler 
   property ClassId:WideString dispid 10;
    // Data : Information to be passed to handler at startup 
   property Data:WideString dispid 11;
  end;


// IEmailAction : Send an email

 IEmailAction = interface(IAction)
   ['{10F62C64-7E16-4314-A0C2-0C3683F99D40}']
   function Get_Server : WideString; safecall;
   procedure Set_Server(const pServer:WideString); safecall;
   function Get_Subject : WideString; safecall;
   procedure Set_Subject(const pSubject:WideString); safecall;
   function Get_To_ : WideString; safecall;
   procedure Set_To_(const pTo:WideString); safecall;
   function Get_Cc : WideString; safecall;
   procedure Set_Cc(const pCc:WideString); safecall;
   function Get_Bcc : WideString; safecall;
   procedure Set_Bcc(const pBcc:WideString); safecall;
   function Get_ReplyTo : WideString; safecall;
   procedure Set_ReplyTo(const pReplyTo:WideString); safecall;
   function Get_From : WideString; safecall;
   procedure Set_From(const pFrom:WideString); safecall;
   function Get_HeaderFields : ITaskNamedValueCollection; safecall;
   procedure Set_HeaderFields(const ppHeaderFields:ITaskNamedValueCollection); safecall;
   function Get_Body : WideString; safecall;
   procedure Set_Body(const pBody:WideString); safecall;
   function Get_Attachments : PSafeArray; safecall;
   procedure Set_Attachments(const pAttachements:PSafeArray); safecall;
    // Server : SMTP Server (required) 
   property Server:WideString read Get_Server write Set_Server;
    // Subject : Title of email 
   property Subject:WideString read Get_Subject write Set_Subject;
    // To : Addresses for primary recipients of email 
   property To_:WideString read Get_To_ write Set_To_;
    // Cc : Addresses for secondary recipients of email 
   property Cc:WideString read Get_Cc write Set_Cc;
    // Bcc : Addresses for recipients of 'blind copies' of email 
   property Bcc:WideString read Get_Bcc write Set_Bcc;
    // ReplyTo : Address recipient should send replies to 
   property ReplyTo:WideString read Get_ReplyTo write Set_ReplyTo;
    // From : Address to be used as the sender of the email 
   property From:WideString read Get_From write Set_From;
    // HeaderFields : Extra data to be included in email header 
   property HeaderFields:ITaskNamedValueCollection read Get_HeaderFields write Set_HeaderFields;
    // Body : Text of the email 
   property Body:WideString read Get_Body write Set_Body;
    // Attachments : Filenames of attachements to email 
   property Attachments:PSafeArray read Get_Attachments write Set_Attachments;
  end;


// IEmailAction : Send an email

 IEmailActionDisp = dispinterface
   ['{10F62C64-7E16-4314-A0C2-0C3683F99D40}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Id : A Unique name for this action 
   property Id:WideString dispid 1;
    // Type : The specific kind of action to be performed 
   property Type_:_TASK_ACTION_TYPE  readonly dispid 2;
    // Server : SMTP Server (required) 
   property Server:WideString dispid 10;
    // Subject : Title of email 
   property Subject:WideString dispid 11;
    // To : Addresses for primary recipients of email 
   property To_:WideString dispid 12;
    // Cc : Addresses for secondary recipients of email 
   property Cc:WideString dispid 13;
    // Bcc : Addresses for recipients of 'blind copies' of email 
   property Bcc:WideString dispid 14;
    // ReplyTo : Address recipient should send replies to 
   property ReplyTo:WideString dispid 15;
    // From : Address to be used as the sender of the email 
   property From:WideString dispid 16;
    // HeaderFields : Extra data to be included in email header 
   property HeaderFields:ITaskNamedValueCollection dispid 17;
    // Body : Text of the email 
   property Body:WideString dispid 18;
    // Attachments : Filenames of attachements to email 
   property Attachments:{!! PSafeArray !!} OleVariant dispid 19;
  end;


// ITaskSettings2 : Extended control execution of the task.

 ITaskSettings2 = interface(IDispatch)
   ['{2C05C3F0-6EED-4C05-A15F-ED7D7A98A369}']
   function Get_DisallowStartOnRemoteAppSession : WordBool; safecall;
   procedure Set_DisallowStartOnRemoteAppSession(const pDisallowStart:WordBool); safecall;
   function Get_UseUnifiedSchedulingEngine : WordBool; safecall;
   procedure Set_UseUnifiedSchedulingEngine(const pUseUnifiedEngine:WordBool); safecall;
    // DisallowStartOnRemoteAppSession : Do not start if target session is a RemoteApp Session. 
   property DisallowStartOnRemoteAppSession:WordBool read Get_DisallowStartOnRemoteAppSession write Set_DisallowStartOnRemoteAppSession;
    // UseUnifiedSchedulingEngine : Use the Unified Scheduling Engine to run this task. 
   property UseUnifiedSchedulingEngine:WordBool read Get_UseUnifiedSchedulingEngine write Set_UseUnifiedSchedulingEngine;
  end;


// ITaskSettings2 : Extended control execution of the task.

 ITaskSettings2Disp = dispinterface
   ['{2C05C3F0-6EED-4C05-A15F-ED7D7A98A369}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // DisallowStartOnRemoteAppSession : Do not start if target session is a RemoteApp Session. 
   property DisallowStartOnRemoteAppSession:WordBool dispid 30;
    // UseUnifiedSchedulingEngine : Use the Unified Scheduling Engine to run this task. 
   property UseUnifiedSchedulingEngine:WordBool dispid 31;
  end;

//CoClasses
  CoTaskScheduler = Class
  Public
    Class Function Create: ITaskService;
    Class Function CreateRemote(const MachineName: string): ITaskService;
  end;

  CoTaskHandlerPS = Class
  Public
    Class Function Create: ITaskHandler;
    Class Function CreateRemote(const MachineName: string): ITaskHandler;
  end;

  CoTaskHandlerStatusPS = Class
  Public
    Class Function Create: ITaskHandlerStatus;
    Class Function CreateRemote(const MachineName: string): ITaskHandlerStatus;
  end;

implementation

uses comobj;

Class Function CoTaskScheduler.Create: ITaskService;
begin
  Result := CreateComObject(CLASS_TaskScheduler) as ITaskService;
end;

Class Function CoTaskScheduler.CreateRemote(const MachineName: string): ITaskService;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_TaskScheduler) as ITaskService;
end;

Class Function CoTaskHandlerPS.Create: ITaskHandler;
begin
  Result := CreateComObject(CLASS_TaskHandlerPS) as ITaskHandler;
end;

Class Function CoTaskHandlerPS.CreateRemote(const MachineName: string): ITaskHandler;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_TaskHandlerPS) as ITaskHandler;
end;

Class Function CoTaskHandlerStatusPS.Create: ITaskHandlerStatus;
begin
  Result := CreateComObject(CLASS_TaskHandlerStatusPS) as ITaskHandlerStatus;
end;

Class Function CoTaskHandlerStatusPS.CreateRemote(const MachineName: string): ITaskHandlerStatus;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_TaskHandlerStatusPS) as ITaskHandlerStatus;
end;

end.
