public struct TCScfError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_ApiGateway = "FailedOperation.ApiGateway"
        case failedOperation_Apigw = "FailedOperation.Apigw"
        case failedOperation_ApmConfigInstanceId = "FailedOperation.ApmConfigInstanceId"
        case failedOperation_AsyncEventStatus = "FailedOperation.AsyncEventStatus"
        case failedOperation_AuthFailure = "FailedOperation.AuthFailure"
        case failedOperation_CallRoleFailed = "FailedOperation.CallRoleFailed"
        case failedOperation_CopyAsyncRun = "FailedOperation.CopyAsyncRun"
        case failedOperation_CopyFailed = "FailedOperation.CopyFailed"
        case failedOperation_CopyFunction = "FailedOperation.CopyFunction"
        case failedOperation_Cos = "FailedOperation.Cos"
        case failedOperation_CreateAlias = "FailedOperation.CreateAlias"
        case failedOperation_CreateFunction = "FailedOperation.CreateFunction"
        case failedOperation_CreateNamespace = "FailedOperation.CreateNamespace"
        case failedOperation_CreateTrigger = "FailedOperation.CreateTrigger"
        case failedOperation_DebugModeStatus = "FailedOperation.DebugModeStatus"
        case failedOperation_DebugModeUpdateTimeOutFail = "FailedOperation.DebugModeUpdateTimeOutFail"
        case failedOperation_DeleteAlias = "FailedOperation.DeleteAlias"
        case failedOperation_DeleteFunction = "FailedOperation.DeleteFunction"
        case failedOperation_DeleteLayerVersion = "FailedOperation.DeleteLayerVersion"
        case failedOperation_DeleteNamespace = "FailedOperation.DeleteNamespace"
        case failedOperation_DeleteTrigger = "FailedOperation.DeleteTrigger"
        case failedOperation_FunctionNameStatusError = "FailedOperation.FunctionNameStatusError"
        case failedOperation_FunctionStatusError = "FailedOperation.FunctionStatusError"
        case failedOperation_FunctionVersionStatusNotActive = "FailedOperation.FunctionVersionStatusNotActive"
        case failedOperation_GetAlias = "FailedOperation.GetAlias"
        case failedOperation_GetFunctionAddress = "FailedOperation.GetFunctionAddress"
        case failedOperation_InstanceNotFound = "FailedOperation.InstanceNotFound"
        case failedOperation_InsufficientBalance = "FailedOperation.InsufficientBalance"
        case failedOperation_InvokeFunction = "FailedOperation.InvokeFunction"
        case failedOperation_Namespace = "FailedOperation.Namespace"
        case failedOperation_OpenService = "FailedOperation.OpenService"
        case failedOperation_OperationConflict = "FailedOperation.OperationConflict"
        case failedOperation_ProvisionCreateTimer = "FailedOperation.ProvisionCreateTimer"
        case failedOperation_ProvisionDeleteTimer = "FailedOperation.ProvisionDeleteTimer"
        case failedOperation_ProvisionedExceedAvailable = "FailedOperation.ProvisionedExceedAvailable"
        case failedOperation_ProvisionedExceedReserved = "FailedOperation.ProvisionedExceedReserved"
        case failedOperation_ProvisionedInProgress = "FailedOperation.ProvisionedInProgress"
        case failedOperation_PublishLayerVersion = "FailedOperation.PublishLayerVersion"
        case failedOperation_PublishVersion = "FailedOperation.PublishVersion"
        case failedOperation_QcsRoleNotFound = "FailedOperation.QcsRoleNotFound"
        case failedOperation_ReservedExceedTotal = "FailedOperation.ReservedExceedTotal"
        case failedOperation_ReservedInProgress = "FailedOperation.ReservedInProgress"
        case failedOperation_ServiceClosed = "FailedOperation.ServiceClosed"
        case failedOperation_TopicNotExist = "FailedOperation.TopicNotExist"
        case failedOperation_TotalConcurrencyMemoryInProgress = "FailedOperation.TotalConcurrencyMemoryInProgress"
        case failedOperation_UnOpenedService = "FailedOperation.UnOpenedService"
        case failedOperation_UpdateAlias = "FailedOperation.UpdateAlias"
        case failedOperation_UpdateFunctionCode = "FailedOperation.UpdateFunctionCode"
        case failedOperation_UpdateFunctionConfiguration = "FailedOperation.UpdateFunctionConfiguration"
        case internalError = "InternalError"
        case internalError_ApiGateway = "InternalError.ApiGateway"
        case internalError_Ckafka = "InternalError.Ckafka"
        case internalError_Cmq = "InternalError.Cmq"
        case internalError_Cos = "InternalError.Cos"
        case internalError_ES = "InternalError.ES"
        case internalError_Exception = "InternalError.Exception"
        case internalError_GetRoleError = "InternalError.GetRoleError"
        case internalError_System = "InternalError.System"
        case internalError_SystemError = "InternalError.SystemError"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_Action = "InvalidParameterValue.Action"
        case invalidParameterValue_AdditionalVersionWeights = "InvalidParameterValue.AdditionalVersionWeights"
        case invalidParameterValue_Alias = "InvalidParameterValue.Alias"
        case invalidParameterValue_ApiGateway = "InvalidParameterValue.ApiGateway"
        case invalidParameterValue_ApmConfig = "InvalidParameterValue.ApmConfig"
        case invalidParameterValue_ApmConfigInstanceId = "InvalidParameterValue.ApmConfigInstanceId"
        case invalidParameterValue_ApmConfigRegion = "InvalidParameterValue.ApmConfigRegion"
        case invalidParameterValue_Args = "InvalidParameterValue.Args"
        case invalidParameterValue_AsyncRunEnable = "InvalidParameterValue.AsyncRunEnable"
        case invalidParameterValue_AsyncTriggerConfig = "InvalidParameterValue.AsyncTriggerConfig"
        case invalidParameterValue_Cdn = "InvalidParameterValue.Cdn"
        case invalidParameterValue_CfsParameterDuplicate = "InvalidParameterValue.CfsParameterDuplicate"
        case invalidParameterValue_CfsParameterError = "InvalidParameterValue.CfsParameterError"
        case invalidParameterValue_CfsStructionError = "InvalidParameterValue.CfsStructionError"
        case invalidParameterValue_Ckafka = "InvalidParameterValue.Ckafka"
        case invalidParameterValue_ClientContext = "InvalidParameterValue.ClientContext"
        case invalidParameterValue_Cls = "InvalidParameterValue.Cls"
        case invalidParameterValue_ClsRole = "InvalidParameterValue.ClsRole"
        case invalidParameterValue_Cmq = "InvalidParameterValue.Cmq"
        case invalidParameterValue_Code = "InvalidParameterValue.Code"
        case invalidParameterValue_CodeSecret = "InvalidParameterValue.CodeSecret"
        case invalidParameterValue_CodeSource = "InvalidParameterValue.CodeSource"
        case invalidParameterValue_Command = "InvalidParameterValue.Command"
        case invalidParameterValue_CompatibleRuntimes = "InvalidParameterValue.CompatibleRuntimes"
        case invalidParameterValue_Content = "InvalidParameterValue.Content"
        case invalidParameterValue_Cos = "InvalidParameterValue.Cos"
        case invalidParameterValue_CosBucketName = "InvalidParameterValue.CosBucketName"
        case invalidParameterValue_CosBucketRegion = "InvalidParameterValue.CosBucketRegion"
        case invalidParameterValue_CosNotifyRuleConflict = "InvalidParameterValue.CosNotifyRuleConflict"
        case invalidParameterValue_CosObjectName = "InvalidParameterValue.CosObjectName"
        case invalidParameterValue_CustomArgument = "InvalidParameterValue.CustomArgument"
        case invalidParameterValue_DateTime = "InvalidParameterValue.DateTime"
        case invalidParameterValue_DeadLetterConfig = "InvalidParameterValue.DeadLetterConfig"
        case invalidParameterValue_DefaultNamespace = "InvalidParameterValue.DefaultNamespace"
        case invalidParameterValue_Demo = "InvalidParameterValue.Demo"
        case invalidParameterValue_DemoId = "InvalidParameterValue.DemoId"
        case invalidParameterValue_Description = "InvalidParameterValue.Description"
        case invalidParameterValue_DnsInfo = "InvalidParameterValue.DnsInfo"
        case invalidParameterValue_DynamicEnabled = "InvalidParameterValue.DynamicEnabled"
        case invalidParameterValue_EipConfig = "InvalidParameterValue.EipConfig"
        case invalidParameterValue_Enable = "InvalidParameterValue.Enable"
        case invalidParameterValue_Environment = "InvalidParameterValue.Environment"
        case invalidParameterValue_EnvironmentExceededLimit = "InvalidParameterValue.EnvironmentExceededLimit"
        case invalidParameterValue_EnvironmentSystemProtect = "InvalidParameterValue.EnvironmentSystemProtect"
        case invalidParameterValue_Filters = "InvalidParameterValue.Filters"
        case invalidParameterValue_Function = "InvalidParameterValue.Function"
        case invalidParameterValue_FunctionName = "InvalidParameterValue.FunctionName"
        case invalidParameterValue_FunctionRequestId = "InvalidParameterValue.FunctionRequestId"
        case invalidParameterValue_FunctionType = "InvalidParameterValue.FunctionType"
        case invalidParameterValue_GitBranch = "InvalidParameterValue.GitBranch"
        case invalidParameterValue_GitCommitId = "InvalidParameterValue.GitCommitId"
        case invalidParameterValue_GitDirectory = "InvalidParameterValue.GitDirectory"
        case invalidParameterValue_GitPassword = "InvalidParameterValue.GitPassword"
        case invalidParameterValue_GitPasswordSecret = "InvalidParameterValue.GitPasswordSecret"
        case invalidParameterValue_GitUrl = "InvalidParameterValue.GitUrl"
        case invalidParameterValue_GitUserName = "InvalidParameterValue.GitUserName"
        case invalidParameterValue_GitUserNameSecret = "InvalidParameterValue.GitUserNameSecret"
        case invalidParameterValue_Handler = "InvalidParameterValue.Handler"
        case invalidParameterValue_IdleTimeOut = "InvalidParameterValue.IdleTimeOut"
        case invalidParameterValue_ImageType = "InvalidParameterValue.ImageType"
        case invalidParameterValue_ImageUri = "InvalidParameterValue.ImageUri"
        case invalidParameterValue_InlineZipFile = "InvalidParameterValue.InlineZipFile"
        case invalidParameterValue_InstanceConcurrencyConfig = "InvalidParameterValue.InstanceConcurrencyConfig"
        case invalidParameterValue_InvokeType = "InvalidParameterValue.InvokeType"
        case invalidParameterValue_L5Enable = "InvalidParameterValue.L5Enable"
        case invalidParameterValue_LayerName = "InvalidParameterValue.LayerName"
        case invalidParameterValue_Layers = "InvalidParameterValue.Layers"
        case invalidParameterValue_Limit = "InvalidParameterValue.Limit"
        case invalidParameterValue_LimitExceeded = "InvalidParameterValue.LimitExceeded"
        case invalidParameterValue_MaxConcurrency = "InvalidParameterValue.MaxConcurrency"
        case invalidParameterValue_Memory = "InvalidParameterValue.Memory"
        case invalidParameterValue_MemorySize = "InvalidParameterValue.MemorySize"
        case invalidParameterValue_MinCapacity = "InvalidParameterValue.MinCapacity"
        case invalidParameterValue_Name = "InvalidParameterValue.Name"
        case invalidParameterValue_Namespace = "InvalidParameterValue.Namespace"
        case invalidParameterValue_NamespaceInvalid = "InvalidParameterValue.NamespaceInvalid"
        case invalidParameterValue_NodeSpec = "InvalidParameterValue.NodeSpec"
        case invalidParameterValue_NodeType = "InvalidParameterValue.NodeType"
        case invalidParameterValue_Offset = "InvalidParameterValue.Offset"
        case invalidParameterValue_Order = "InvalidParameterValue.Order"
        case invalidParameterValue_OrderBy = "InvalidParameterValue.OrderBy"
        case invalidParameterValue_Orderby = "InvalidParameterValue.Orderby"
        case invalidParameterValue_Param = "InvalidParameterValue.Param"
        case invalidParameterValue_ProtocolType = "InvalidParameterValue.ProtocolType"
        case invalidParameterValue_ProvisionTriggerCronConfigDuplicate = "InvalidParameterValue.ProvisionTriggerCronConfigDuplicate"
        case invalidParameterValue_ProvisionTriggerName = "InvalidParameterValue.ProvisionTriggerName"
        case invalidParameterValue_ProvisionTriggerNameDuplicate = "InvalidParameterValue.ProvisionTriggerNameDuplicate"
        case invalidParameterValue_ProvisionType = "InvalidParameterValue.ProvisionType"
        case invalidParameterValue_PublicNetConfig = "InvalidParameterValue.PublicNetConfig"
        case invalidParameterValue_Qualifier = "InvalidParameterValue.Qualifier"
        case invalidParameterValue_QueryVersion = "InvalidParameterValue.QueryVersion"
        case invalidParameterValue_RegistryId = "InvalidParameterValue.RegistryId"
        case invalidParameterValue_RetCode = "InvalidParameterValue.RetCode"
        case invalidParameterValue_RoutingConfig = "InvalidParameterValue.RoutingConfig"
        case invalidParameterValue_Runtime = "InvalidParameterValue.Runtime"
        case invalidParameterValue_SearchKey = "InvalidParameterValue.SearchKey"
        case invalidParameterValue_SecretInfo = "InvalidParameterValue.SecretInfo"
        case invalidParameterValue_ServiceName = "InvalidParameterValue.ServiceName"
        case invalidParameterValue_Stamp = "InvalidParameterValue.Stamp"
        case invalidParameterValue_StartTime = "InvalidParameterValue.StartTime"
        case invalidParameterValue_StartTimeOrEndTime = "InvalidParameterValue.StartTimeOrEndTime"
        case invalidParameterValue_Status = "InvalidParameterValue.Status"
        case invalidParameterValue_SystemEnvironment = "InvalidParameterValue.SystemEnvironment"
        case invalidParameterValue_TempCosObjectName = "InvalidParameterValue.TempCosObjectName"
        case invalidParameterValue_TraceEnable = "InvalidParameterValue.TraceEnable"
        case invalidParameterValue_TrackingTarget = "InvalidParameterValue.TrackingTarget"
        case invalidParameterValue_TriggerCronConfig = "InvalidParameterValue.TriggerCronConfig"
        case invalidParameterValue_TriggerCronConfigTimeInterval = "InvalidParameterValue.TriggerCronConfigTimeInterval"
        case invalidParameterValue_TriggerDesc = "InvalidParameterValue.TriggerDesc"
        case invalidParameterValue_TriggerName = "InvalidParameterValue.TriggerName"
        case invalidParameterValue_TriggerProvisionedConcurrencyNum = "InvalidParameterValue.TriggerProvisionedConcurrencyNum"
        case invalidParameterValue_Type = "InvalidParameterValue.Type"
        case invalidParameterValue_VpcNotSetWhenOpenCfs = "InvalidParameterValue.VpcNotSetWhenOpenCfs"
        case invalidParameterValue_WebSocketsParams = "InvalidParameterValue.WebSocketsParams"
        case invalidParameterValue_ZipFile = "InvalidParameterValue.ZipFile"
        case invalidParameterValue_ZipFileBase64BinasciiError = "InvalidParameterValue.ZipFileBase64BinasciiError"
        case invalidParameter_Cls = "InvalidParameter.Cls"
        case invalidParameter_FunctionName = "InvalidParameter.FunctionName"
        case invalidParameter_ParamError = "InvalidParameter.ParamError"
        case invalidParameter_Payload = "InvalidParameter.Payload"
        case invalidParameter_RequestTooLarge = "InvalidParameter.RequestTooLarge"
        case invalidParameter_RoleCheck = "InvalidParameter.RoleCheck"
        case invalidParameter_RoutingConfig = "InvalidParameter.RoutingConfig"
        case limitExceeded_Alias = "LimitExceeded.Alias"
        case limitExceeded_Cdn = "LimitExceeded.Cdn"
        case limitExceeded_ContainerImageAccelerateQuota = "LimitExceeded.ContainerImageAccelerateQuota"
        case limitExceeded_Eip = "LimitExceeded.Eip"
        case limitExceeded_Function = "LimitExceeded.Function"
        case limitExceeded_FunctionOnTopic = "LimitExceeded.FunctionOnTopic"
        case limitExceeded_FunctionProvisionedConcurrencyMemory = "LimitExceeded.FunctionProvisionedConcurrencyMemory"
        case limitExceeded_FunctionReservedConcurrencyMemory = "LimitExceeded.FunctionReservedConcurrencyMemory"
        case limitExceeded_FunctionTotalProvisionedConcurrencyMemory = "LimitExceeded.FunctionTotalProvisionedConcurrencyMemory"
        case limitExceeded_FunctionTotalProvisionedConcurrencyNum = "LimitExceeded.FunctionTotalProvisionedConcurrencyNum"
        case limitExceeded_InitTimeout = "LimitExceeded.InitTimeout"
        case limitExceeded_LayerVersions = "LimitExceeded.LayerVersions"
        case limitExceeded_Layers = "LimitExceeded.Layers"
        case limitExceeded_MaxCapacity = "LimitExceeded.MaxCapacity"
        case limitExceeded_Memory = "LimitExceeded.Memory"
        case limitExceeded_MsgTTL = "LimitExceeded.MsgTTL"
        case limitExceeded_Namespace = "LimitExceeded.Namespace"
        case limitExceeded_Offset = "LimitExceeded.Offset"
        case limitExceeded_ProvisionTriggerAction = "LimitExceeded.ProvisionTriggerAction"
        case limitExceeded_ProvisionTriggerInterval = "LimitExceeded.ProvisionTriggerInterval"
        case limitExceeded_Quota = "LimitExceeded.Quota"
        case limitExceeded_RetryNum = "LimitExceeded.RetryNum"
        case limitExceeded_Timeout = "LimitExceeded.Timeout"
        case limitExceeded_TotalConcurrencyMemory = "LimitExceeded.TotalConcurrencyMemory"
        case limitExceeded_Trigger = "LimitExceeded.Trigger"
        case limitExceeded_UserTotalConcurrencyMemory = "LimitExceeded.UserTotalConcurrencyMemory"
        case missingParameter = "MissingParameter"
        case missingParameter_Code = "MissingParameter.Code"
        case missingParameter_Runtime = "MissingParameter.Runtime"
        case operationDenied_AccountIsolate = "OperationDenied.AccountIsolate"
        case resourceInUse = "ResourceInUse"
        case resourceInUse_Alias = "ResourceInUse.Alias"
        case resourceInUse_Cdn = "ResourceInUse.Cdn"
        case resourceInUse_Cmq = "ResourceInUse.Cmq"
        case resourceInUse_Cos = "ResourceInUse.Cos"
        case resourceInUse_Function = "ResourceInUse.Function"
        case resourceInUse_FunctionName = "ResourceInUse.FunctionName"
        case resourceInUse_LayerVersion = "ResourceInUse.LayerVersion"
        case resourceInUse_Namespace = "ResourceInUse.Namespace"
        case resourceInUse_Trigger = "ResourceInUse.Trigger"
        case resourceInUse_TriggerName = "ResourceInUse.TriggerName"
        case resourceInsufficient_COS = "ResourceInsufficient.COS"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_Alias = "ResourceNotFound.Alias"
        case resourceNotFound_AsyncEvent = "ResourceNotFound.AsyncEvent"
        case resourceNotFound_Cdn = "ResourceNotFound.Cdn"
        case resourceNotFound_CfsMountInsNotMatch = "ResourceNotFound.CfsMountInsNotMatch"
        case resourceNotFound_CfsProtocolError = "ResourceNotFound.CfsProtocolError"
        case resourceNotFound_CfsStatusError = "ResourceNotFound.CfsStatusError"
        case resourceNotFound_CfsVpcNotMatch = "ResourceNotFound.CfsVpcNotMatch"
        case resourceNotFound_Ckafka = "ResourceNotFound.Ckafka"
        case resourceNotFound_Cmq = "ResourceNotFound.Cmq"
        case resourceNotFound_Cos = "ResourceNotFound.Cos"
        case resourceNotFound_Demo = "ResourceNotFound.Demo"
        case resourceNotFound_Function = "ResourceNotFound.Function"
        case resourceNotFound_FunctionName = "ResourceNotFound.FunctionName"
        case resourceNotFound_FunctionVersion = "ResourceNotFound.FunctionVersion"
        case resourceNotFound_GetCfsMountInsError = "ResourceNotFound.GetCfsMountInsError"
        case resourceNotFound_GetCfsNotMatch = "ResourceNotFound.GetCfsNotMatch"
        case resourceNotFound_ImageConfig = "ResourceNotFound.ImageConfig"
        case resourceNotFound_Layer = "ResourceNotFound.Layer"
        case resourceNotFound_LayerVersion = "ResourceNotFound.LayerVersion"
        case resourceNotFound_Namespace = "ResourceNotFound.Namespace"
        case resourceNotFound_Qualifier = "ResourceNotFound.Qualifier"
        case resourceNotFound_Role = "ResourceNotFound.Role"
        case resourceNotFound_RoleCheck = "ResourceNotFound.RoleCheck"
        case resourceNotFound_Timer = "ResourceNotFound.Timer"
        case resourceNotFound_TotalConcurrencyMemory = "ResourceNotFound.TotalConcurrencyMemory"
        case resourceNotFound_Trigger = "ResourceNotFound.Trigger"
        case resourceNotFound_Version = "ResourceNotFound.Version"
        case resourceNotFound_Vpc = "ResourceNotFound.Vpc"
        case resourceUnavailable_InsufficientBalance = "ResourceUnavailable.InsufficientBalance"
        case resourceUnavailable_Namespace = "ResourceUnavailable.Namespace"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_CAM = "UnauthorizedOperation.CAM"
        case unauthorizedOperation_CodeSecret = "UnauthorizedOperation.CodeSecret"
        case unauthorizedOperation_CreateTrigger = "UnauthorizedOperation.CreateTrigger"
        case unauthorizedOperation_DeleteFunction = "UnauthorizedOperation.DeleteFunction"
        case unauthorizedOperation_DeleteTrigger = "UnauthorizedOperation.DeleteTrigger"
        case unauthorizedOperation_NotMC = "UnauthorizedOperation.NotMC"
        case unauthorizedOperation_Region = "UnauthorizedOperation.Region"
        case unauthorizedOperation_Role = "UnauthorizedOperation.Role"
        case unauthorizedOperation_TempCosAppid = "UnauthorizedOperation.TempCosAppid"
        case unauthorizedOperation_UpdateFunctionCode = "UnauthorizedOperation.UpdateFunctionCode"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_AliasBind = "UnsupportedOperation.AliasBind"
        case unsupportedOperation_AsyncRunEnable = "UnsupportedOperation.AsyncRunEnable"
        case unsupportedOperation_Cdn = "UnsupportedOperation.Cdn"
        case unsupportedOperation_Cos = "UnsupportedOperation.Cos"
        case unsupportedOperation_EipFixed = "UnsupportedOperation.EipFixed"
        case unsupportedOperation_NotSupportRegion = "UnsupportedOperation.NotSupportRegion"
        case unsupportedOperation_Region = "UnsupportedOperation.Region"
        case unsupportedOperation_Trigger = "UnsupportedOperation.Trigger"
        case unsupportedOperation_UpdateFunctionEventInvokeConfig = "UnsupportedOperation.UpdateFunctionEventInvokeConfig"
        case unsupportedOperation_VpcConfig = "UnsupportedOperation.VpcConfig"
    }
    
    private let error: Code
    
    public let context: TCErrorContext?
    
    public var errorCode: String {
        self.error.rawValue
    }
    
    public init ?(errorCode: String, context: TCErrorContext) {
        guard let error = Code(rawValue: errorCode) else {
            return nil
        }
        self.error = error
        self.context = context
    }
    
    internal init (_ error: Code, context: TCErrorContext? = nil) {
        self.error = error
        self.context = context
    }
    
    /// 操作失败。
    public static var failedOperation: TCScfError {
        TCScfError(.failedOperation)
    }
    
    /// API网关触发器创建失败。
    public static var failedOperation_ApiGateway: TCScfError {
        TCScfError(.failedOperation_ApiGateway)
    }
    
    /// 创建触发器失败。
    public static var failedOperation_Apigw: TCScfError {
        TCScfError(.failedOperation_Apigw)
    }
    
    /// 获取Apm InstanceId失败。
    public static var failedOperation_ApmConfigInstanceId: TCScfError {
        TCScfError(.failedOperation_ApmConfigInstanceId)
    }
    
    /// 当前异步事件状态不支持此操作，请稍后重试。
    public static var failedOperation_AsyncEventStatus: TCScfError {
        TCScfError(.failedOperation_AsyncEventStatus)
    }
    
    /// 登录信息验证失败，token 验证失败。
    public static var failedOperation_AuthFailure: TCScfError {
        TCScfError(.failedOperation_AuthFailure)
    }
    
    /// 请求role信息失败。
    public static var failedOperation_CallRoleFailed: TCScfError {
        TCScfError(.failedOperation_CallRoleFailed)
    }
    
    /// CopyAsyncRun 传参异常。
    public static var failedOperation_CopyAsyncRun: TCScfError {
        TCScfError(.failedOperation_CopyAsyncRun)
    }
    
    /// 复制函数失败。
    public static var failedOperation_CopyFailed: TCScfError {
        TCScfError(.failedOperation_CopyFailed)
    }
    
    /// 不支持复制到该地域。
    public static var failedOperation_CopyFunction: TCScfError {
        TCScfError(.failedOperation_CopyFunction)
    }
    
    /// 操作COS资源失败。
    public static var failedOperation_Cos: TCScfError {
        TCScfError(.failedOperation_Cos)
    }
    
    /// 创建别名失败。
    public static var failedOperation_CreateAlias: TCScfError {
        TCScfError(.failedOperation_CreateAlias)
    }
    
    /// 操作失败。
    public static var failedOperation_CreateFunction: TCScfError {
        TCScfError(.failedOperation_CreateFunction)
    }
    
    /// 创建命名空间失败。
    public static var failedOperation_CreateNamespace: TCScfError {
        TCScfError(.failedOperation_CreateNamespace)
    }
    
    /// 当前函数状态无法进行此操作。
    public static var failedOperation_CreateTrigger: TCScfError {
        TCScfError(.failedOperation_CreateTrigger)
    }
    
    /// 当前调试状态无法执行此操作。
    public static var failedOperation_DebugModeStatus: TCScfError {
        TCScfError(.failedOperation_DebugModeStatus)
    }
    
    /// 调试状态下无法更新执行超时时间。
    public static var failedOperation_DebugModeUpdateTimeOutFail: TCScfError {
        TCScfError(.failedOperation_DebugModeUpdateTimeOutFail)
    }
    
    /// 删除别名失败。
    public static var failedOperation_DeleteAlias: TCScfError {
        TCScfError(.failedOperation_DeleteAlias)
    }
    
    /// 当前函数状态无法进行此操作，请在函数状态正常时重试。
    public static var failedOperation_DeleteFunction: TCScfError {
        TCScfError(.failedOperation_DeleteFunction)
    }
    
    /// 删除layer版本失败。
    public static var failedOperation_DeleteLayerVersion: TCScfError {
        TCScfError(.failedOperation_DeleteLayerVersion)
    }
    
    /// 无法删除默认Namespace。
    public static var failedOperation_DeleteNamespace: TCScfError {
        TCScfError(.failedOperation_DeleteNamespace)
    }
    
    /// 删除触发器失败。
    public static var failedOperation_DeleteTrigger: TCScfError {
        TCScfError(.failedOperation_DeleteTrigger)
    }
    
    /// 当前函数状态无法更新代码，请在状态为正常时更新。
    public static var failedOperation_FunctionNameStatusError: TCScfError {
        TCScfError(.failedOperation_FunctionNameStatusError)
    }
    
    /// 函数在部署中,无法做此操作。
    public static var failedOperation_FunctionStatusError: TCScfError {
        TCScfError(.failedOperation_FunctionStatusError)
    }
    
    /// 当前函数版本状态无法进行此操作，请在版本状态为正常时重试。
    public static var failedOperation_FunctionVersionStatusNotActive: TCScfError {
        TCScfError(.failedOperation_FunctionVersionStatusNotActive)
    }
    
    /// 获取别名信息失败。
    public static var failedOperation_GetAlias: TCScfError {
        TCScfError(.failedOperation_GetAlias)
    }
    
    /// 获取函数代码地址失败。
    public static var failedOperation_GetFunctionAddress: TCScfError {
        TCScfError(.failedOperation_GetFunctionAddress)
    }
    
    /// InstanceNotFound 实例不存在。
    public static var failedOperation_InstanceNotFound: TCScfError {
        TCScfError(.failedOperation_InstanceNotFound)
    }
    
    /// 当前账号或命名空间处于欠费状态，请在可用时重试。
    public static var failedOperation_InsufficientBalance: TCScfError {
        TCScfError(.failedOperation_InsufficientBalance)
    }
    
    /// 调用函数失败。
    public static var failedOperation_InvokeFunction: TCScfError {
        TCScfError(.failedOperation_InvokeFunction)
    }
    
    /// 命名空间已存在，请勿重复创建。
    public static var failedOperation_Namespace: TCScfError {
        TCScfError(.failedOperation_Namespace)
    }
    
    /// 服务开通失败。
    public static var failedOperation_OpenService: TCScfError {
        TCScfError(.failedOperation_OpenService)
    }
    
    /// 操作冲突。
    public static var failedOperation_OperationConflict: TCScfError {
        TCScfError(.failedOperation_OperationConflict)
    }
    
    /// 创建定时预置任务失败。
    public static var failedOperation_ProvisionCreateTimer: TCScfError {
        TCScfError(.failedOperation_ProvisionCreateTimer)
    }
    
    /// 删除定时预置任务失败。
    public static var failedOperation_ProvisionDeleteTimer: TCScfError {
        TCScfError(.failedOperation_ProvisionDeleteTimer)
    }
    
    /// 预置超过可用。
    public static var failedOperation_ProvisionedExceedAvailable: TCScfError {
        TCScfError(.failedOperation_ProvisionedExceedAvailable)
    }
    
    /// 预置超限。
    public static var failedOperation_ProvisionedExceedReserved: TCScfError {
        TCScfError(.failedOperation_ProvisionedExceedReserved)
    }
    
    /// 当前函数版本已有预置任务处于进行中，请稍后重试。
    public static var failedOperation_ProvisionedInProgress: TCScfError {
        TCScfError(.failedOperation_ProvisionedInProgress)
    }
    
    /// 发布layer版本失败。
    public static var failedOperation_PublishLayerVersion: TCScfError {
        TCScfError(.failedOperation_PublishLayerVersion)
    }
    
    /// 当前函数状态无法发布版本，请在状态为正常时发布。
    public static var failedOperation_PublishVersion: TCScfError {
        TCScfError(.failedOperation_PublishVersion)
    }
    
    /// 角色不存在。
    public static var failedOperation_QcsRoleNotFound: TCScfError {
        TCScfError(.failedOperation_QcsRoleNotFound)
    }
    
    /// ReservedExceedTotal 总保留超限。
    public static var failedOperation_ReservedExceedTotal: TCScfError {
        TCScfError(.failedOperation_ReservedExceedTotal)
    }
    
    /// 当前函数已有保留并发设置任务处于进行中，请稍后重试。
    public static var failedOperation_ReservedInProgress: TCScfError {
        TCScfError(.failedOperation_ReservedInProgress)
    }
    
    /// ServiceClosed 请确认后再操作。
    public static var failedOperation_ServiceClosed: TCScfError {
        TCScfError(.failedOperation_ServiceClosed)
    }
    
    /// Topic不存在。
    public static var failedOperation_TopicNotExist: TCScfError {
        TCScfError(.failedOperation_TopicNotExist)
    }
    
    /// 用户并发内存配额设置任务处于进行中，请稍后重试。
    public static var failedOperation_TotalConcurrencyMemoryInProgress: TCScfError {
        TCScfError(.failedOperation_TotalConcurrencyMemoryInProgress)
    }
    
    /// 指定的服务未开通，可以提交工单申请开通服务。
    public static var failedOperation_UnOpenedService: TCScfError {
        TCScfError(.failedOperation_UnOpenedService)
    }
    
    /// 更新别名失败。
    public static var failedOperation_UpdateAlias: TCScfError {
        TCScfError(.failedOperation_UpdateAlias)
    }
    
    /// 当前函数状态无法更新代码，请在状态为正常时更新。
    public static var failedOperation_UpdateFunctionCode: TCScfError {
        TCScfError(.failedOperation_UpdateFunctionCode)
    }
    
    /// UpdateFunctionConfiguration操作失败。
    public static var failedOperation_UpdateFunctionConfiguration: TCScfError {
        TCScfError(.failedOperation_UpdateFunctionConfiguration)
    }
    
    /// 内部错误。
    public static var internalError: TCScfError {
        TCScfError(.internalError)
    }
    
    /// 创建apigw触发器内部错误。
    public static var internalError_ApiGateway: TCScfError {
        TCScfError(.internalError_ApiGateway)
    }
    
    /// ckafka接口失败。
    public static var internalError_Ckafka: TCScfError {
        TCScfError(.internalError_Ckafka)
    }
    
    /// 删除cmq触发器失败。
    public static var internalError_Cmq: TCScfError {
        TCScfError(.internalError_Cmq)
    }
    
    /// 更新触发器失败。
    public static var internalError_Cos: TCScfError {
        TCScfError(.internalError_Cos)
    }
    
    /// ES错误。
    public static var internalError_ES: TCScfError {
        TCScfError(.internalError_ES)
    }
    
    /// 内部服务异常。
    public static var internalError_Exception: TCScfError {
        TCScfError(.internalError_Exception)
    }
    
    /// 内部服务错误。
    public static var internalError_GetRoleError: TCScfError {
        TCScfError(.internalError_GetRoleError)
    }
    
    /// 内部系统错误。
    public static var internalError_System: TCScfError {
        TCScfError(.internalError_System)
    }
    
    /// 内部服务错误。
    public static var internalError_SystemError: TCScfError {
        TCScfError(.internalError_SystemError)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCScfError {
        TCScfError(.invalidParameterValue)
    }
    
    /// Action取值与规范不符，请修正后再试。可参考：https://tencentcs.com/5jXKFnBW。
    public static var invalidParameterValue_Action: TCScfError {
        TCScfError(.invalidParameterValue_Action)
    }
    
    /// AdditionalVersionWeights参数传入错误。
    public static var invalidParameterValue_AdditionalVersionWeights: TCScfError {
        TCScfError(.invalidParameterValue_AdditionalVersionWeights)
    }
    
    /// 不支持删除默认别名，请修正后重试。
    public static var invalidParameterValue_Alias: TCScfError {
        TCScfError(.invalidParameterValue_Alias)
    }
    
    /// ApiGateway参数错误。
    public static var invalidParameterValue_ApiGateway: TCScfError {
        TCScfError(.invalidParameterValue_ApiGateway)
    }
    
    /// ApmConfig参数传入错误。
    public static var invalidParameterValue_ApmConfig: TCScfError {
        TCScfError(.invalidParameterValue_ApmConfig)
    }
    
    /// ApmConfigInstanceId参数传入错误。
    public static var invalidParameterValue_ApmConfigInstanceId: TCScfError {
        TCScfError(.invalidParameterValue_ApmConfigInstanceId)
    }
    
    /// ApmConfigRegion参数传入错误。
    public static var invalidParameterValue_ApmConfigRegion: TCScfError {
        TCScfError(.invalidParameterValue_ApmConfigRegion)
    }
    
    /// Args 参数值有误。
    public static var invalidParameterValue_Args: TCScfError {
        TCScfError(.invalidParameterValue_Args)
    }
    
    /// AsyncRunEnable 取值不正确。
    public static var invalidParameterValue_AsyncRunEnable: TCScfError {
        TCScfError(.invalidParameterValue_AsyncRunEnable)
    }
    
    /// 函数异步重试配置参数无效。
    public static var invalidParameterValue_AsyncTriggerConfig: TCScfError {
        TCScfError(.invalidParameterValue_AsyncTriggerConfig)
    }
    
    /// Cdn传入错误。
    public static var invalidParameterValue_Cdn: TCScfError {
        TCScfError(.invalidParameterValue_Cdn)
    }
    
    /// cfs配置项重复。
    public static var invalidParameterValue_CfsParameterDuplicate: TCScfError {
        TCScfError(.invalidParameterValue_CfsParameterDuplicate)
    }
    
    /// cfs配置项取值与规范不符。
    public static var invalidParameterValue_CfsParameterError: TCScfError {
        TCScfError(.invalidParameterValue_CfsParameterError)
    }
    
    /// cfs参数格式与规范不符。
    public static var invalidParameterValue_CfsStructionError: TCScfError {
        TCScfError(.invalidParameterValue_CfsStructionError)
    }
    
    /// Ckafka传入错误。
    public static var invalidParameterValue_Ckafka: TCScfError {
        TCScfError(.invalidParameterValue_Ckafka)
    }
    
    /// 运行函数时的参数传入有误。
    public static var invalidParameterValue_ClientContext: TCScfError {
        TCScfError(.invalidParameterValue_ClientContext)
    }
    
    /// Cls传入错误。
    public static var invalidParameterValue_Cls: TCScfError {
        TCScfError(.invalidParameterValue_Cls)
    }
    
    /// 修改Cls配置需要传入Role参数，请修正后重试。
    public static var invalidParameterValue_ClsRole: TCScfError {
        TCScfError(.invalidParameterValue_ClsRole)
    }
    
    /// Cmq传入错误。
    public static var invalidParameterValue_Cmq: TCScfError {
        TCScfError(.invalidParameterValue_Cmq)
    }
    
    /// Code传入错误。
    public static var invalidParameterValue_Code: TCScfError {
        TCScfError(.invalidParameterValue_Code)
    }
    
    /// CodeSecret传入错误。
    public static var invalidParameterValue_CodeSecret: TCScfError {
        TCScfError(.invalidParameterValue_CodeSecret)
    }
    
    /// CodeSource传入错误。
    public static var invalidParameterValue_CodeSource: TCScfError {
        TCScfError(.invalidParameterValue_CodeSource)
    }
    
    /// Command[Entrypoint] 参数值有误。
    public static var invalidParameterValue_Command: TCScfError {
        TCScfError(.invalidParameterValue_Command)
    }
    
    /// CompatibleRuntimes参数传入错误。
    public static var invalidParameterValue_CompatibleRuntimes: TCScfError {
        TCScfError(.invalidParameterValue_CompatibleRuntimes)
    }
    
    /// Content参数传入错误。
    public static var invalidParameterValue_Content: TCScfError {
        TCScfError(.invalidParameterValue_Content)
    }
    
    /// Cos传入错误。
    public static var invalidParameterValue_Cos: TCScfError {
        TCScfError(.invalidParameterValue_Cos)
    }
    
    /// CosBucketName不符合规范。
    public static var invalidParameterValue_CosBucketName: TCScfError {
        TCScfError(.invalidParameterValue_CosBucketName)
    }
    
    /// CosBucketRegion取值与规范不符，请修正后再试。可参考：https://tencentcs.com/5jXKFnBW。
    public static var invalidParameterValue_CosBucketRegion: TCScfError {
        TCScfError(.invalidParameterValue_CosBucketRegion)
    }
    
    public static var invalidParameterValue_CosNotifyRuleConflict: TCScfError {
        TCScfError(.invalidParameterValue_CosNotifyRuleConflict)
    }
    
    /// CosObjectName不符合规范。
    public static var invalidParameterValue_CosObjectName: TCScfError {
        TCScfError(.invalidParameterValue_CosObjectName)
    }
    
    /// CustomArgument参数长度超限。
    public static var invalidParameterValue_CustomArgument: TCScfError {
        TCScfError(.invalidParameterValue_CustomArgument)
    }
    
    /// DateTime传入错误。
    public static var invalidParameterValue_DateTime: TCScfError {
        TCScfError(.invalidParameterValue_DateTime)
    }
    
    /// DeadLetterConfig取值与规范不符，请修正后再试。可参考：https://tencentcs.com/5jXKFnBW。
    public static var invalidParameterValue_DeadLetterConfig: TCScfError {
        TCScfError(.invalidParameterValue_DeadLetterConfig)
    }
    
    /// 默认Namespace无法创建。
    public static var invalidParameterValue_DefaultNamespace: TCScfError {
        TCScfError(.invalidParameterValue_DefaultNamespace)
    }
    
    /// DemoID  对应的函数模板 ，code 参数值有误，请确认后重试。
    public static var invalidParameterValue_Demo: TCScfError {
        TCScfError(.invalidParameterValue_Demo)
    }
    
    /// DemoId 不存在。
    public static var invalidParameterValue_DemoId: TCScfError {
        TCScfError(.invalidParameterValue_DemoId)
    }
    
    /// Description传入错误。
    public static var invalidParameterValue_Description: TCScfError {
        TCScfError(.invalidParameterValue_Description)
    }
    
    /// 环境变量DNS[OS_NAMESERVER]配置有误。
    public static var invalidParameterValue_DnsInfo: TCScfError {
        TCScfError(.invalidParameterValue_DnsInfo)
    }
    
    /// DynamicEnabled 参数传入错误。
    public static var invalidParameterValue_DynamicEnabled: TCScfError {
        TCScfError(.invalidParameterValue_DynamicEnabled)
    }
    
    /// EipConfig参数错误。
    public static var invalidParameterValue_EipConfig: TCScfError {
        TCScfError(.invalidParameterValue_EipConfig)
    }
    
    /// Enable取值与规范不符，请修正后再试。可参考：https://tencentcs.com/5jXKFnBW。
    public static var invalidParameterValue_Enable: TCScfError {
        TCScfError(.invalidParameterValue_Enable)
    }
    
    /// Environment传入错误。
    public static var invalidParameterValue_Environment: TCScfError {
        TCScfError(.invalidParameterValue_Environment)
    }
    
    /// 环境变量大小超限，请保持在 4KB 以内。
    public static var invalidParameterValue_EnvironmentExceededLimit: TCScfError {
        TCScfError(.invalidParameterValue_EnvironmentExceededLimit)
    }
    
    /// 不支持修改函数系统环境变量和运行环境变量。
    public static var invalidParameterValue_EnvironmentSystemProtect: TCScfError {
        TCScfError(.invalidParameterValue_EnvironmentSystemProtect)
    }
    
    /// Filters参数错误。
    public static var invalidParameterValue_Filters: TCScfError {
        TCScfError(.invalidParameterValue_Filters)
    }
    
    /// Function取值与规范不符，请修正后再试。可参考：https://tencentcs.com/5jXKFnBW。
    public static var invalidParameterValue_Function: TCScfError {
        TCScfError(.invalidParameterValue_Function)
    }
    
    /// 函数不存在。
    public static var invalidParameterValue_FunctionName: TCScfError {
        TCScfError(.invalidParameterValue_FunctionName)
    }
    
    /// 请求 id 传参错误。
    public static var invalidParameterValue_FunctionRequestId: TCScfError {
        TCScfError(.invalidParameterValue_FunctionRequestId)
    }
    
    /// FunctionType参数错误。
    public static var invalidParameterValue_FunctionType: TCScfError {
        TCScfError(.invalidParameterValue_FunctionType)
    }
    
    /// GitBranch不符合规范。
    public static var invalidParameterValue_GitBranch: TCScfError {
        TCScfError(.invalidParameterValue_GitBranch)
    }
    
    /// GitCommitId取值与规范不符，请修正后再试。可参考：https://tencentcs.com/5jXKFnBW。
    public static var invalidParameterValue_GitCommitId: TCScfError {
        TCScfError(.invalidParameterValue_GitCommitId)
    }
    
    /// GitDirectory不符合规范。
    public static var invalidParameterValue_GitDirectory: TCScfError {
        TCScfError(.invalidParameterValue_GitDirectory)
    }
    
    /// GitPassword不符合规范。
    public static var invalidParameterValue_GitPassword: TCScfError {
        TCScfError(.invalidParameterValue_GitPassword)
    }
    
    /// GitPasswordSecret 传参有误。
    public static var invalidParameterValue_GitPasswordSecret: TCScfError {
        TCScfError(.invalidParameterValue_GitPasswordSecret)
    }
    
    /// GitUrl不符合规范。
    public static var invalidParameterValue_GitUrl: TCScfError {
        TCScfError(.invalidParameterValue_GitUrl)
    }
    
    /// GitUserName不符合规范。
    public static var invalidParameterValue_GitUserName: TCScfError {
        TCScfError(.invalidParameterValue_GitUserName)
    }
    
    /// GitUserNameSecret 传参有误。
    public static var invalidParameterValue_GitUserNameSecret: TCScfError {
        TCScfError(.invalidParameterValue_GitUserNameSecret)
    }
    
    /// Handler传入错误。
    public static var invalidParameterValue_Handler: TCScfError {
        TCScfError(.invalidParameterValue_Handler)
    }
    
    /// IdleTimeOut参数传入错误。
    public static var invalidParameterValue_IdleTimeOut: TCScfError {
        TCScfError(.invalidParameterValue_IdleTimeOut)
    }
    
    /// ImageType 参数值有误。
    public static var invalidParameterValue_ImageType: TCScfError {
        TCScfError(.invalidParameterValue_ImageType)
    }
    
    /// imageUri 传入有误。
    public static var invalidParameterValue_ImageUri: TCScfError {
        TCScfError(.invalidParameterValue_ImageUri)
    }
    
    /// InlineZipFile非法。
    public static var invalidParameterValue_InlineZipFile: TCScfError {
        TCScfError(.invalidParameterValue_InlineZipFile)
    }
    
    /// InstanceConcurrencyConfig 参数传入错误。
    public static var invalidParameterValue_InstanceConcurrencyConfig: TCScfError {
        TCScfError(.invalidParameterValue_InstanceConcurrencyConfig)
    }
    
    /// InvokeType取值与规范不符，请修正后再试。
    public static var invalidParameterValue_InvokeType: TCScfError {
        TCScfError(.invalidParameterValue_InvokeType)
    }
    
    /// L5Enable取值与规范不符，请修正后再试。
    public static var invalidParameterValue_L5Enable: TCScfError {
        TCScfError(.invalidParameterValue_L5Enable)
    }
    
    /// LayerName参数传入错误。
    public static var invalidParameterValue_LayerName: TCScfError {
        TCScfError(.invalidParameterValue_LayerName)
    }
    
    /// Layers参数传入错误。
    public static var invalidParameterValue_Layers: TCScfError {
        TCScfError(.invalidParameterValue_Layers)
    }
    
    /// Limit传入错误。
    public static var invalidParameterValue_Limit: TCScfError {
        TCScfError(.invalidParameterValue_Limit)
    }
    
    /// 参数超出长度限制。
    public static var invalidParameterValue_LimitExceeded: TCScfError {
        TCScfError(.invalidParameterValue_LimitExceeded)
    }
    
    /// MaxConcurrency 参数传入错误。
    public static var invalidParameterValue_MaxConcurrency: TCScfError {
        TCScfError(.invalidParameterValue_MaxConcurrency)
    }
    
    /// Memory取值与规范不符，请修正后再试。可参考：https://tencentcs.com/5jXKFnBW。
    public static var invalidParameterValue_Memory: TCScfError {
        TCScfError(.invalidParameterValue_Memory)
    }
    
    /// MemorySize错误。
    public static var invalidParameterValue_MemorySize: TCScfError {
        TCScfError(.invalidParameterValue_MemorySize)
    }
    
    /// MinCapacity 参数传入错误。
    public static var invalidParameterValue_MinCapacity: TCScfError {
        TCScfError(.invalidParameterValue_MinCapacity)
    }
    
    /// Name参数传入错误。
    public static var invalidParameterValue_Name: TCScfError {
        TCScfError(.invalidParameterValue_Name)
    }
    
    /// Namespace参数传入错误。
    public static var invalidParameterValue_Namespace: TCScfError {
        TCScfError(.invalidParameterValue_Namespace)
    }
    
    /// 规则不正确，Namespace为英文字母、数字、-_ 符号组成，长度30。
    public static var invalidParameterValue_NamespaceInvalid: TCScfError {
        TCScfError(.invalidParameterValue_NamespaceInvalid)
    }
    
    /// NodeSpec 参数传入错误。
    public static var invalidParameterValue_NodeSpec: TCScfError {
        TCScfError(.invalidParameterValue_NodeSpec)
    }
    
    /// NodeType 参数传入错误。
    public static var invalidParameterValue_NodeType: TCScfError {
        TCScfError(.invalidParameterValue_NodeType)
    }
    
    /// 偏移量不合法。
    public static var invalidParameterValue_Offset: TCScfError {
        TCScfError(.invalidParameterValue_Offset)
    }
    
    /// Order传入错误。
    public static var invalidParameterValue_Order: TCScfError {
        TCScfError(.invalidParameterValue_Order)
    }
    
    /// OrderBy取值与规范不符，请修正后再试。可参考：https://tencentcs.com/5jXKFnBW。
    public static var invalidParameterValue_OrderBy: TCScfError {
        TCScfError(.invalidParameterValue_OrderBy)
    }
    
    /// Orderby传入错误。
    public static var invalidParameterValue_Orderby: TCScfError {
        TCScfError(.invalidParameterValue_Orderby)
    }
    
    /// 入参不是标准的json。
    public static var invalidParameterValue_Param: TCScfError {
        TCScfError(.invalidParameterValue_Param)
    }
    
    /// ProtocolType参数传入错误。
    public static var invalidParameterValue_ProtocolType: TCScfError {
        TCScfError(.invalidParameterValue_ProtocolType)
    }
    
    /// 定时预置的cron配置重复。
    public static var invalidParameterValue_ProvisionTriggerCronConfigDuplicate: TCScfError {
        TCScfError(.invalidParameterValue_ProvisionTriggerCronConfigDuplicate)
    }
    
    /// TriggerName参数传入错误。
    public static var invalidParameterValue_ProvisionTriggerName: TCScfError {
        TCScfError(.invalidParameterValue_ProvisionTriggerName)
    }
    
    /// TriggerName重复。
    public static var invalidParameterValue_ProvisionTriggerNameDuplicate: TCScfError {
        TCScfError(.invalidParameterValue_ProvisionTriggerNameDuplicate)
    }
    
    /// ProvisionType 参数传入错误。
    public static var invalidParameterValue_ProvisionType: TCScfError {
        TCScfError(.invalidParameterValue_ProvisionType)
    }
    
    /// PublicNetConfig参数错误。
    public static var invalidParameterValue_PublicNetConfig: TCScfError {
        TCScfError(.invalidParameterValue_PublicNetConfig)
    }
    
    /// 不支持的函数版本。
    public static var invalidParameterValue_Qualifier: TCScfError {
        TCScfError(.invalidParameterValue_Qualifier)
    }
    
    /// 查询版本详情，版本参数传入错误。
    public static var invalidParameterValue_QueryVersion: TCScfError {
        TCScfError(.invalidParameterValue_QueryVersion)
    }
    
    /// 企业版镜像实例ID[RegistryId]传值错误。
    public static var invalidParameterValue_RegistryId: TCScfError {
        TCScfError(.invalidParameterValue_RegistryId)
    }
    
    /// RetCode不合法。
    public static var invalidParameterValue_RetCode: TCScfError {
        TCScfError(.invalidParameterValue_RetCode)
    }
    
    /// RoutingConfig取值与规范不符，请修正后再试。可参考：https://tencentcs.com/5jXKFnBW。
    public static var invalidParameterValue_RoutingConfig: TCScfError {
        TCScfError(.invalidParameterValue_RoutingConfig)
    }
    
    /// Runtime传入错误。
    public static var invalidParameterValue_Runtime: TCScfError {
        TCScfError(.invalidParameterValue_Runtime)
    }
    
    /// searchkey 不是 Keyword,Tag 或者 Runtime。
    public static var invalidParameterValue_SearchKey: TCScfError {
        TCScfError(.invalidParameterValue_SearchKey)
    }
    
    /// SecretInfo错误。
    public static var invalidParameterValue_SecretInfo: TCScfError {
        TCScfError(.invalidParameterValue_SecretInfo)
    }
    
    /// ServiceName命名不规范。
    public static var invalidParameterValue_ServiceName: TCScfError {
        TCScfError(.invalidParameterValue_ServiceName)
    }
    
    /// Stamp取值与规范不符，请修正后再试。
    public static var invalidParameterValue_Stamp: TCScfError {
        TCScfError(.invalidParameterValue_Stamp)
    }
    
    /// 起始时间传入错误。
    public static var invalidParameterValue_StartTime: TCScfError {
        TCScfError(.invalidParameterValue_StartTime)
    }
    
    /// 需要同时指定开始日期与结束日期。
    public static var invalidParameterValue_StartTimeOrEndTime: TCScfError {
        TCScfError(.invalidParameterValue_StartTimeOrEndTime)
    }
    
    /// Status取值与规范不符，请修正后再试。
    public static var invalidParameterValue_Status: TCScfError {
        TCScfError(.invalidParameterValue_Status)
    }
    
    /// 系统环境变量错误。
    public static var invalidParameterValue_SystemEnvironment: TCScfError {
        TCScfError(.invalidParameterValue_SystemEnvironment)
    }
    
    /// 非法的TempCosObjectName。
    public static var invalidParameterValue_TempCosObjectName: TCScfError {
        TCScfError(.invalidParameterValue_TempCosObjectName)
    }
    
    /// TraceEnable取值与规范不符，请修正后再试。
    public static var invalidParameterValue_TraceEnable: TCScfError {
        TCScfError(.invalidParameterValue_TraceEnable)
    }
    
    /// TrackingTarget 参数输入错误。
    public static var invalidParameterValue_TrackingTarget: TCScfError {
        TCScfError(.invalidParameterValue_TrackingTarget)
    }
    
    /// TriggerCronConfig参数传入错误。
    public static var invalidParameterValue_TriggerCronConfig: TCScfError {
        TCScfError(.invalidParameterValue_TriggerCronConfig)
    }
    
    /// TriggerCronConfig参数定时触发间隔小于指定值。
    public static var invalidParameterValue_TriggerCronConfigTimeInterval: TCScfError {
        TCScfError(.invalidParameterValue_TriggerCronConfigTimeInterval)
    }
    
    /// TriggerDesc传入参数错误。
    public static var invalidParameterValue_TriggerDesc: TCScfError {
        TCScfError(.invalidParameterValue_TriggerDesc)
    }
    
    /// TriggerName传入错误。
    public static var invalidParameterValue_TriggerName: TCScfError {
        TCScfError(.invalidParameterValue_TriggerName)
    }
    
    /// TriggerProvisionedConcurrencyNum参数传入错误。
    public static var invalidParameterValue_TriggerProvisionedConcurrencyNum: TCScfError {
        TCScfError(.invalidParameterValue_TriggerProvisionedConcurrencyNum)
    }
    
    /// Type传入错误。
    public static var invalidParameterValue_Type: TCScfError {
        TCScfError(.invalidParameterValue_Type)
    }
    
    /// 开启cfs配置的同时必须开启vpc。
    public static var invalidParameterValue_VpcNotSetWhenOpenCfs: TCScfError {
        TCScfError(.invalidParameterValue_VpcNotSetWhenOpenCfs)
    }
    
    /// WebSocketsParams参数传入错误。
    public static var invalidParameterValue_WebSocketsParams: TCScfError {
        TCScfError(.invalidParameterValue_WebSocketsParams)
    }
    
    /// 检测到不是标准的zip文件，请重新压缩后再试。
    public static var invalidParameterValue_ZipFile: TCScfError {
        TCScfError(.invalidParameterValue_ZipFile)
    }
    
    /// 压缩文件base64解码失败: <code>Incorrect padding</code>，请修正后再试。
    public static var invalidParameterValue_ZipFileBase64BinasciiError: TCScfError {
        TCScfError(.invalidParameterValue_ZipFileBase64BinasciiError)
    }
    
    public static var invalidParameter_Cls: TCScfError {
        TCScfError(.invalidParameter_Cls)
    }
    
    /// FunctionName取值与规范不符，请修正后再试。可参考：https://tencentcs.com/5jXKFnBW。
    public static var invalidParameter_FunctionName: TCScfError {
        TCScfError(.invalidParameter_FunctionName)
    }
    
    /// 创建函数传参异常。
    public static var invalidParameter_ParamError: TCScfError {
        TCScfError(.invalidParameter_ParamError)
    }
    
    /// 请求参数不合法。
    public static var invalidParameter_Payload: TCScfError {
        TCScfError(.invalidParameter_Payload)
    }
    
    public static var invalidParameter_RequestTooLarge: TCScfError {
        TCScfError(.invalidParameter_RequestTooLarge)
    }
    
    /// RoleCheck 传参有误。
    public static var invalidParameter_RoleCheck: TCScfError {
        TCScfError(.invalidParameter_RoleCheck)
    }
    
    /// RoutingConfig参数传入错误。
    public static var invalidParameter_RoutingConfig: TCScfError {
        TCScfError(.invalidParameter_RoutingConfig)
    }
    
    /// 别名个数超过最大限制。
    public static var limitExceeded_Alias: TCScfError {
        TCScfError(.limitExceeded_Alias)
    }
    
    /// Cdn使用超过最大限制。
    public static var limitExceeded_Cdn: TCScfError {
        TCScfError(.limitExceeded_Cdn)
    }
    
    public static var limitExceeded_ContainerImageAccelerateQuota: TCScfError {
        TCScfError(.limitExceeded_ContainerImageAccelerateQuota)
    }
    
    /// eip资源超限。
    public static var limitExceeded_Eip: TCScfError {
        TCScfError(.limitExceeded_Eip)
    }
    
    /// 函数数量超出最大限制 ，可通过<a href="https://cloud.tencent.com/act/event/Online_service?from=scf%7Cindex">提交工单</a>申请提升限制。
    public static var limitExceeded_Function: TCScfError {
        TCScfError(.limitExceeded_Function)
    }
    
    /// 同一个主题下的函数超过最大限制。
    public static var limitExceeded_FunctionOnTopic: TCScfError {
        TCScfError(.limitExceeded_FunctionOnTopic)
    }
    
    /// FunctionProvisionedConcurrencyMemory数量达到限制，可提交工单申请提升限制：https://tencentcs.com/7Fixwt63。
    public static var limitExceeded_FunctionProvisionedConcurrencyMemory: TCScfError {
        TCScfError(.limitExceeded_FunctionProvisionedConcurrencyMemory)
    }
    
    /// 函数保留并发内存超限。
    public static var limitExceeded_FunctionReservedConcurrencyMemory: TCScfError {
        TCScfError(.limitExceeded_FunctionReservedConcurrencyMemory)
    }
    
    /// FunctionTotalProvisionedConcurrencyMemory达到限制，可提交工单申请提升限制：https://tencentcs.com/7Fixwt63。
    public static var limitExceeded_FunctionTotalProvisionedConcurrencyMemory: TCScfError {
        TCScfError(.limitExceeded_FunctionTotalProvisionedConcurrencyMemory)
    }
    
    /// 函数预置并发总数达到限制。
    public static var limitExceeded_FunctionTotalProvisionedConcurrencyNum: TCScfError {
        TCScfError(.limitExceeded_FunctionTotalProvisionedConcurrencyNum)
    }
    
    /// InitTimeout达到限制，可提交工单申请提升限制：https://tencentcs.com/7Fixwt63。
    public static var limitExceeded_InitTimeout: TCScfError {
        TCScfError(.limitExceeded_InitTimeout)
    }
    
    /// layer版本数量超出最大限制。
    public static var limitExceeded_LayerVersions: TCScfError {
        TCScfError(.limitExceeded_LayerVersions)
    }
    
    /// layer数量超出最大限制。
    public static var limitExceeded_Layers: TCScfError {
        TCScfError(.limitExceeded_Layers)
    }
    
    /// 动态扩容最大值超限。
    public static var limitExceeded_MaxCapacity: TCScfError {
        TCScfError(.limitExceeded_MaxCapacity)
    }
    
    /// 内存超出最大限制。
    public static var limitExceeded_Memory: TCScfError {
        TCScfError(.limitExceeded_Memory)
    }
    
    /// 函数异步重试配置消息保留时间超过限制。
    public static var limitExceeded_MsgTTL: TCScfError {
        TCScfError(.limitExceeded_MsgTTL)
    }
    
    /// 命名空间数量超过最大限制，可通过<a href="https://cloud.tencent.com/act/event/Online_service?from=scf%7Cindex">提交工单</a>申请提升限制。
    public static var limitExceeded_Namespace: TCScfError {
        TCScfError(.limitExceeded_Namespace)
    }
    
    /// Offset超出限制。
    public static var limitExceeded_Offset: TCScfError {
        TCScfError(.limitExceeded_Offset)
    }
    
    /// 定时预置数量超过最大限制。
    public static var limitExceeded_ProvisionTriggerAction: TCScfError {
        TCScfError(.limitExceeded_ProvisionTriggerAction)
    }
    
    /// 定时触发间隔小于最大限制。
    public static var limitExceeded_ProvisionTriggerInterval: TCScfError {
        TCScfError(.limitExceeded_ProvisionTriggerInterval)
    }
    
    /// 配额超限。
    public static var limitExceeded_Quota: TCScfError {
        TCScfError(.limitExceeded_Quota)
    }
    
    /// 函数异步重试配置异步重试次数超过限制。
    public static var limitExceeded_RetryNum: TCScfError {
        TCScfError(.limitExceeded_RetryNum)
    }
    
    /// Timeout超出最大限制。
    public static var limitExceeded_Timeout: TCScfError {
        TCScfError(.limitExceeded_Timeout)
    }
    
    /// 用户并发内存配额超限。
    public static var limitExceeded_TotalConcurrencyMemory: TCScfError {
        TCScfError(.limitExceeded_TotalConcurrencyMemory)
    }
    
    /// 触发器数量超出最大限制，可通过<a href="https://cloud.tencent.com/act/event/Online_service?from=scf%7Cindex">提交工单</a>申请提升限制。
    public static var limitExceeded_Trigger: TCScfError {
        TCScfError(.limitExceeded_Trigger)
    }
    
    /// UserTotalConcurrencyMemory达到限制，可提交工单申请提升限制：https://tencentcs.com/7Fixwt63。
    public static var limitExceeded_UserTotalConcurrencyMemory: TCScfError {
        TCScfError(.limitExceeded_UserTotalConcurrencyMemory)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCScfError {
        TCScfError(.missingParameter)
    }
    
    /// Code没有传入。
    public static var missingParameter_Code: TCScfError {
        TCScfError(.missingParameter_Code)
    }
    
    /// 缺失 Runtime 字段。
    public static var missingParameter_Runtime: TCScfError {
        TCScfError(.missingParameter_Runtime)
    }
    
    public static var operationDenied_AccountIsolate: TCScfError {
        TCScfError(.operationDenied_AccountIsolate)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCScfError {
        TCScfError(.resourceInUse)
    }
    
    /// Alias已被占用。
    public static var resourceInUse_Alias: TCScfError {
        TCScfError(.resourceInUse_Alias)
    }
    
    /// Cdn已被占用。
    public static var resourceInUse_Cdn: TCScfError {
        TCScfError(.resourceInUse_Cdn)
    }
    
    /// Cmq已被占用。
    public static var resourceInUse_Cmq: TCScfError {
        TCScfError(.resourceInUse_Cmq)
    }
    
    /// Cos已被占用。
    public static var resourceInUse_Cos: TCScfError {
        TCScfError(.resourceInUse_Cos)
    }
    
    /// 函数已存在。
    public static var resourceInUse_Function: TCScfError {
        TCScfError(.resourceInUse_Function)
    }
    
    /// FunctionName已存在。
    public static var resourceInUse_FunctionName: TCScfError {
        TCScfError(.resourceInUse_FunctionName)
    }
    
    /// Layer版本正在使用中。
    public static var resourceInUse_LayerVersion: TCScfError {
        TCScfError(.resourceInUse_LayerVersion)
    }
    
    /// Namespace已存在。
    public static var resourceInUse_Namespace: TCScfError {
        TCScfError(.resourceInUse_Namespace)
    }
    
    /// TriggerName已存在。
    public static var resourceInUse_Trigger: TCScfError {
        TCScfError(.resourceInUse_Trigger)
    }
    
    /// TriggerName已存在。
    public static var resourceInUse_TriggerName: TCScfError {
        TCScfError(.resourceInUse_TriggerName)
    }
    
    /// COS资源不足。
    public static var resourceInsufficient_COS: TCScfError {
        TCScfError(.resourceInsufficient_COS)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCScfError {
        TCScfError(.resourceNotFound)
    }
    
    /// 别名不存在。
    public static var resourceNotFound_Alias: TCScfError {
        TCScfError(.resourceNotFound_Alias)
    }
    
    /// 未找到指定的AsyncEvent，请创建后再试。
    public static var resourceNotFound_AsyncEvent: TCScfError {
        TCScfError(.resourceNotFound_AsyncEvent)
    }
    
    /// Cdn不存在。
    public static var resourceNotFound_Cdn: TCScfError {
        TCScfError(.resourceNotFound_Cdn)
    }
    
    /// 指定的cfs下未找到您所指定的挂载点。
    public static var resourceNotFound_CfsMountInsNotMatch: TCScfError {
        TCScfError(.resourceNotFound_CfsMountInsNotMatch)
    }
    
    /// CfsProtocolError 参数异常。
    public static var resourceNotFound_CfsProtocolError: TCScfError {
        TCScfError(.resourceNotFound_CfsProtocolError)
    }
    
    /// 检测cfs状态为不可用。
    public static var resourceNotFound_CfsStatusError: TCScfError {
        TCScfError(.resourceNotFound_CfsStatusError)
    }
    
    /// cfs与云函数所处vpc不一致。
    public static var resourceNotFound_CfsVpcNotMatch: TCScfError {
        TCScfError(.resourceNotFound_CfsVpcNotMatch)
    }
    
    /// Ckafka不存在。
    public static var resourceNotFound_Ckafka: TCScfError {
        TCScfError(.resourceNotFound_Ckafka)
    }
    
    /// Cmq不存在。
    public static var resourceNotFound_Cmq: TCScfError {
        TCScfError(.resourceNotFound_Cmq)
    }
    
    /// Cos不存在。
    public static var resourceNotFound_Cos: TCScfError {
        TCScfError(.resourceNotFound_Cos)
    }
    
    /// 不存在的Demo。
    public static var resourceNotFound_Demo: TCScfError {
        TCScfError(.resourceNotFound_Demo)
    }
    
    /// 函数不存在。
    public static var resourceNotFound_Function: TCScfError {
        TCScfError(.resourceNotFound_Function)
    }
    
    /// 函数不存在。
    public static var resourceNotFound_FunctionName: TCScfError {
        TCScfError(.resourceNotFound_FunctionName)
    }
    
    /// 函数版本不存在。
    public static var resourceNotFound_FunctionVersion: TCScfError {
        TCScfError(.resourceNotFound_FunctionVersion)
    }
    
    /// 获取cfs挂载点信息错误。
    public static var resourceNotFound_GetCfsMountInsError: TCScfError {
        TCScfError(.resourceNotFound_GetCfsMountInsError)
    }
    
    /// 获取cfs信息错误。
    public static var resourceNotFound_GetCfsNotMatch: TCScfError {
        TCScfError(.resourceNotFound_GetCfsNotMatch)
    }
    
    /// 未找到指定的ImageConfig，请创建后再试。
    public static var resourceNotFound_ImageConfig: TCScfError {
        TCScfError(.resourceNotFound_ImageConfig)
    }
    
    /// layer不存在。
    public static var resourceNotFound_Layer: TCScfError {
        TCScfError(.resourceNotFound_Layer)
    }
    
    /// Layer版本不存在。
    public static var resourceNotFound_LayerVersion: TCScfError {
        TCScfError(.resourceNotFound_LayerVersion)
    }
    
    /// Namespace不存在。
    public static var resourceNotFound_Namespace: TCScfError {
        TCScfError(.resourceNotFound_Namespace)
    }
    
    /// 版本不存在。
    public static var resourceNotFound_Qualifier: TCScfError {
        TCScfError(.resourceNotFound_Qualifier)
    }
    
    /// 角色不存在。
    public static var resourceNotFound_Role: TCScfError {
        TCScfError(.resourceNotFound_Role)
    }
    
    /// Role不存在。
    public static var resourceNotFound_RoleCheck: TCScfError {
        TCScfError(.resourceNotFound_RoleCheck)
    }
    
    /// Timer不存在。
    public static var resourceNotFound_Timer: TCScfError {
        TCScfError(.resourceNotFound_Timer)
    }
    
    /// 并发内存配额资源未找到。
    public static var resourceNotFound_TotalConcurrencyMemory: TCScfError {
        TCScfError(.resourceNotFound_TotalConcurrencyMemory)
    }
    
    /// 触发器不存在。
    public static var resourceNotFound_Trigger: TCScfError {
        TCScfError(.resourceNotFound_Trigger)
    }
    
    /// 版本不存在。
    public static var resourceNotFound_Version: TCScfError {
        TCScfError(.resourceNotFound_Version)
    }
    
    /// VPC或子网不存在。
    public static var resourceNotFound_Vpc: TCScfError {
        TCScfError(.resourceNotFound_Vpc)
    }
    
    /// 余额不足，请先充值。
    public static var resourceUnavailable_InsufficientBalance: TCScfError {
        TCScfError(.resourceUnavailable_InsufficientBalance)
    }
    
    /// Namespace不可用。
    public static var resourceUnavailable_Namespace: TCScfError {
        TCScfError(.resourceUnavailable_Namespace)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCScfError {
        TCScfError(.unauthorizedOperation)
    }
    
    /// CAM鉴权失败。
    public static var unauthorizedOperation_CAM: TCScfError {
        TCScfError(.unauthorizedOperation_CAM)
    }
    
    /// 无访问代码权限。
    public static var unauthorizedOperation_CodeSecret: TCScfError {
        TCScfError(.unauthorizedOperation_CodeSecret)
    }
    
    /// 没有权限。
    public static var unauthorizedOperation_CreateTrigger: TCScfError {
        TCScfError(.unauthorizedOperation_CreateTrigger)
    }
    
    /// 没有权限的操作。
    public static var unauthorizedOperation_DeleteFunction: TCScfError {
        TCScfError(.unauthorizedOperation_DeleteFunction)
    }
    
    /// 没有权限。
    public static var unauthorizedOperation_DeleteTrigger: TCScfError {
        TCScfError(.unauthorizedOperation_DeleteTrigger)
    }
    
    /// 不是从控制台调用的该接口。
    public static var unauthorizedOperation_NotMC: TCScfError {
        TCScfError(.unauthorizedOperation_NotMC)
    }
    
    /// Region错误。
    public static var unauthorizedOperation_Region: TCScfError {
        TCScfError(.unauthorizedOperation_Region)
    }
    
    /// 没有权限访问您的Cos资源。
    public static var unauthorizedOperation_Role: TCScfError {
        TCScfError(.unauthorizedOperation_Role)
    }
    
    /// TempCos的Appid和请求账户的APPID不一致。
    public static var unauthorizedOperation_TempCosAppid: TCScfError {
        TCScfError(.unauthorizedOperation_TempCosAppid)
    }
    
    /// 无法进行此操作。
    public static var unauthorizedOperation_UpdateFunctionCode: TCScfError {
        TCScfError(.unauthorizedOperation_UpdateFunctionCode)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCScfError {
        TCScfError(.unsupportedOperation)
    }
    
    /// 资源还有别名绑定，不支持当前操作，请解绑别名后重试。
    public static var unsupportedOperation_AliasBind: TCScfError {
        TCScfError(.unsupportedOperation_AliasBind)
    }
    
    /// 指定的配置AsyncRunEnable暂不支持，请修正后再试。
    public static var unsupportedOperation_AsyncRunEnable: TCScfError {
        TCScfError(.unsupportedOperation_AsyncRunEnable)
    }
    
    /// Cdn不支持。
    public static var unsupportedOperation_Cdn: TCScfError {
        TCScfError(.unsupportedOperation_Cdn)
    }
    
    /// Cos操作不支持。
    public static var unsupportedOperation_Cos: TCScfError {
        TCScfError(.unsupportedOperation_Cos)
    }
    
    /// 指定的配置EipFixed暂不支持。
    public static var unsupportedOperation_EipFixed: TCScfError {
        TCScfError(.unsupportedOperation_EipFixed)
    }
    
    public static var unsupportedOperation_NotSupportRegion: TCScfError {
        TCScfError(.unsupportedOperation_NotSupportRegion)
    }
    
    /// 不支持此地域。
    public static var unsupportedOperation_Region: TCScfError {
        TCScfError(.unsupportedOperation_Region)
    }
    
    /// Trigger操作不支持。
    public static var unsupportedOperation_Trigger: TCScfError {
        TCScfError(.unsupportedOperation_Trigger)
    }
    
    /// 指定的配置暂不支持，请修正后再试。
    public static var unsupportedOperation_UpdateFunctionEventInvokeConfig: TCScfError {
        TCScfError(.unsupportedOperation_UpdateFunctionEventInvokeConfig)
    }
    
    /// 指定的配置VpcConfig暂不支持。
    public static var unsupportedOperation_VpcConfig: TCScfError {
        TCScfError(.unsupportedOperation_VpcConfig)
    }
}

extension TCScfError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, MissingParameter.self, OperationDenied.self, ResourceInUse.self, ResourceInsufficient.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCScfError: Equatable {
    public static func == (lhs: TCScfError, rhs: TCScfError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCScfError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}