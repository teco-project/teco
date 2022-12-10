public struct TCCdbError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_SubAccountDenied = "AuthFailure.SubAccountDenied"
        case cdbError = "CdbError"
        case cdbError_BackupError = "CdbError.BackupError"
        case cdbError_DatabaseError = "CdbError.DatabaseError"
        case cdbError_ImportError = "CdbError.ImportError"
        case cdbError_TaskError = "CdbError.TaskError"
        case failedOperation = "FailedOperation"
        case failedOperation_AsyncTaskStatusError = "FailedOperation.AsyncTaskStatusError"
        case failedOperation_AuditConfigNotExist = "FailedOperation.AuditConfigNotExist"
        case failedOperation_CdbInstanceLockFailError = "FailedOperation.CdbInstanceLockFailError"
        case failedOperation_CreateAccountError = "FailedOperation.CreateAccountError"
        case failedOperation_CreateAuditFailError = "FailedOperation.CreateAuditFailError"
        case failedOperation_CreateAuditLogFileError = "FailedOperation.CreateAuditLogFileError"
        case failedOperation_CreateRoVipError = "FailedOperation.CreateRoVipError"
        case failedOperation_DBOperationActionError = "FailedOperation.DBOperationActionError"
        case failedOperation_DeleteAuditFailError = "FailedOperation.DeleteAuditFailError"
        case failedOperation_DescribeProxyGroupError = "FailedOperation.DescribeProxyGroupError"
        case failedOperation_GetPrivilegeError = "FailedOperation.GetPrivilegeError"
        case failedOperation_InstanceQueryError = "FailedOperation.InstanceQueryError"
        case failedOperation_JsonMarshalError = "FailedOperation.JsonMarshalError"
        case failedOperation_JsonUnmarshalError = "FailedOperation.JsonUnmarshalError"
        case failedOperation_NotDelayRo = "FailedOperation.NotDelayRo"
        case failedOperation_PrivilegeDataIllegal = "FailedOperation.PrivilegeDataIllegal"
        case failedOperation_ProxyGroupStatusError = "FailedOperation.ProxyGroupStatusError"
        case failedOperation_QueryLogError = "FailedOperation.QueryLogError"
        case failedOperation_RepeatCreateProxyError = "FailedOperation.RepeatCreateProxyError"
        case failedOperation_ResponseValueError = "FailedOperation.ResponseValueError"
        case failedOperation_StartFlowError = "FailedOperation.StartFlowError"
        case failedOperation_StatusConflict = "FailedOperation.StatusConflict"
        case failedOperation_SubmitAsyncTaskError = "FailedOperation.SubmitAsyncTaskError"
        case failedOperation_TimeoutError = "FailedOperation.TimeoutError"
        case failedOperation_TypeInConflict = "FailedOperation.TypeInConflict"
        case internalError = "InternalError"
        case internalError_AsyncRequestError = "InternalError.AsyncRequestError"
        case internalError_AuditCreateLogFileError = "InternalError.AuditCreateLogFileError"
        case internalError_AuditDeleteLogFileError = "InternalError.AuditDeleteLogFileError"
        case internalError_AuditDeletePolicyError = "InternalError.AuditDeletePolicyError"
        case internalError_AuditError = "InternalError.AuditError"
        case internalError_AuditModifyStatusError = "InternalError.AuditModifyStatusError"
        case internalError_AuditOssLogicError = "InternalError.AuditOssLogicError"
        case internalError_AuthError = "InternalError.AuthError"
        case internalError_CauthError = "InternalError.CauthError"
        case internalError_CdbCgwError = "InternalError.CdbCgwError"
        case internalError_CdbError = "InternalError.CdbError"
        case internalError_CosError = "InternalError.CosError"
        case internalError_DBError = "InternalError.DBError"
        case internalError_DBOperationError = "InternalError.DBOperationError"
        case internalError_DBRecordNotExistError = "InternalError.DBRecordNotExistError"
        case internalError_DatabaseAccessError = "InternalError.DatabaseAccessError"
        case internalError_DesError = "InternalError.DesError"
        case internalError_DfwError = "InternalError.DfwError"
        case internalError_ExeSqlError = "InternalError.ExeSqlError"
        case internalError_ExecHttpRequestError = "InternalError.ExecHttpRequestError"
        case internalError_ExecuteSQLError = "InternalError.ExecuteSQLError"
        case internalError_FtpError = "InternalError.FtpError"
        case internalError_HttpError = "InternalError.HttpError"
        case internalError_InnerCommonError = "InternalError.InnerCommonError"
        case internalError_InternalAssertError = "InternalError.InternalAssertError"
        case internalError_InternalHttpServerError = "InternalError.InternalHttpServerError"
        case internalError_InternalRequestError = "InternalError.InternalRequestError"
        case internalError_InternalServiceErrorErr = "InternalError.InternalServiceErrorErr"
        case internalError_JSONError = "InternalError.JSONError"
        case internalError_NetworkError = "InternalError.NetworkError"
        case internalError_OssError = "InternalError.OssError"
        case internalError_ParamError = "InternalError.ParamError"
        case internalError_RegexpCompileError = "InternalError.RegexpCompileError"
        case internalError_ResourceNotMatch = "InternalError.ResourceNotMatch"
        case internalError_ResourceNotUnique = "InternalError.ResourceNotUnique"
        case internalError_SecurityGroupError = "InternalError.SecurityGroupError"
        case internalError_ServerError = "InternalError.ServerError"
        case internalError_ServiceError = "InternalError.ServiceError"
        case internalError_TagError = "InternalError.TagError"
        case internalError_TaskError = "InternalError.TaskError"
        case internalError_TaskFrameError = "InternalError.TaskFrameError"
        case internalError_TimeWindowError = "InternalError.TimeWindowError"
        case internalError_TradeError = "InternalError.TradeError"
        case internalError_TransactionBeginError = "InternalError.TransactionBeginError"
        case internalError_UndefinedError = "InternalError.UndefinedError"
        case internalError_UnknownError = "InternalError.UnknownError"
        case internalError_VpcError = "InternalError.VpcError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AccountDescriptionCharacterError = "InvalidParameterValue.AccountDescriptionCharacterError"
        case invalidParameterValue_AccountDescriptionLengthError = "InvalidParameterValue.AccountDescriptionLengthError"
        case invalidParameterValue_AccountHostRuleError = "InvalidParameterValue.AccountHostRuleError"
        case invalidParameterValue_AccountPasswordCharacterError = "InvalidParameterValue.AccountPasswordCharacterError"
        case invalidParameterValue_AccountPasswordLengthError = "InvalidParameterValue.AccountPasswordLengthError"
        case invalidParameterValue_AccountPasswordRuleError = "InvalidParameterValue.AccountPasswordRuleError"
        case invalidParameterValue_DataConvertError = "InvalidParameterValue.DataConvertError"
        case invalidParameterValue_InvalidParameterValueError = "InvalidParameterValue.InvalidParameterValueError"
        case invalidParameterValue_UserNameRuleError = "InvalidParameterValue.UserNameRuleError"
        case invalidParameterValue_UserNotExistError = "InvalidParameterValue.UserNotExistError"
        case invalidParameterValue_VerifyAccountNoRootError = "InvalidParameterValue.VerifyAccountNoRootError"
        case invalidParameterValue_VerifyAccountPasswordError = "InvalidParameterValue.VerifyAccountPasswordError"
        case invalidParameterValue_VerifyAccountPrivError = "InvalidParameterValue.VerifyAccountPrivError"
        case invalidParameter_ControllerNotFoundError = "InvalidParameter.ControllerNotFoundError"
        case invalidParameter_DeployGroupNotEmpty = "InvalidParameter.DeployGroupNotEmpty"
        case invalidParameter_ExceptionParam = "InvalidParameter.ExceptionParam"
        case invalidParameter_InstanceNameNotFound = "InvalidParameter.InstanceNameNotFound"
        case invalidParameter_InstanceNotFound = "InvalidParameter.InstanceNotFound"
        case invalidParameter_InvalidAsyncRequestId = "InvalidParameter.InvalidAsyncRequestId"
        case invalidParameter_InvalidName = "InvalidParameter.InvalidName"
        case invalidParameter_InvalidParameterError = "InvalidParameter.InvalidParameterError"
        case invalidParameter_JsonUnmarshalError = "InvalidParameter.JsonUnmarshalError"
        case invalidParameter_OverDeployGroupQuota = "InvalidParameter.OverDeployGroupQuota"
        case invalidParameter_ResourceExists = "InvalidParameter.ResourceExists"
        case invalidParameter_ResourceNotExists = "InvalidParameter.ResourceNotExists"
        case invalidParameter_ResourceNotFound = "InvalidParameter.ResourceNotFound"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case missingParameter_AccountMissingParameterError = "MissingParameter.AccountMissingParameterError"
        case missingParameter_MissingParamError = "MissingParameter.MissingParamError"
        case operationDenied = "OperationDenied"
        case operationDenied_ActionInProcess = "OperationDenied.ActionInProcess"
        case operationDenied_ActionNotSupport = "OperationDenied.ActionNotSupport"
        case operationDenied_AtLeastAllRuleAuditPolicyError = "OperationDenied.AtLeastAllRuleAuditPolicyError"
        case operationDenied_AtLeastAuditPolicyError = "OperationDenied.AtLeastAuditPolicyError"
        case operationDenied_AuditFileOverQuotaError = "OperationDenied.AuditFileOverQuotaError"
        case operationDenied_AuditPolicyConflictError = "OperationDenied.AuditPolicyConflictError"
        case operationDenied_AuditPolicyExistError = "OperationDenied.AuditPolicyExistError"
        case operationDenied_AuditPolicyNotExistError = "OperationDenied.AuditPolicyNotExistError"
        case operationDenied_AuditPolicyOverQuotaError = "OperationDenied.AuditPolicyOverQuotaError"
        case operationDenied_AuditRuleDeleteError = "OperationDenied.AuditRuleDeleteError"
        case operationDenied_AuditRuleExistError = "OperationDenied.AuditRuleExistError"
        case operationDenied_AuditRuleHasBind = "OperationDenied.AuditRuleHasBind"
        case operationDenied_AuditRuleNotExistError = "OperationDenied.AuditRuleNotExistError"
        case operationDenied_AuditStatusError = "OperationDenied.AuditStatusError"
        case operationDenied_AuditTaskConflictError = "OperationDenied.AuditTaskConflictError"
        case operationDenied_ConflictRoStatus = "OperationDenied.ConflictRoStatus"
        case operationDenied_ConflictStatus = "OperationDenied.ConflictStatus"
        case operationDenied_DBBrainPolicyConflict = "OperationDenied.DBBrainPolicyConflict"
        case operationDenied_DelayReplicationRunning = "OperationDenied.DelayReplicationRunning"
        case operationDenied_DeleteRootAccountError = "OperationDenied.DeleteRootAccountError"
        case operationDenied_FunctionDenied = "OperationDenied.FunctionDenied"
        case operationDenied_InstTypeNotSupport = "OperationDenied.InstTypeNotSupport"
        case operationDenied_InstanceLockerConflict = "OperationDenied.InstanceLockerConflict"
        case operationDenied_InstanceStatusError = "OperationDenied.InstanceStatusError"
        case operationDenied_InstanceTaskRunning = "OperationDenied.InstanceTaskRunning"
        case operationDenied_InstanceTaskStatusError = "OperationDenied.InstanceTaskStatusError"
        case operationDenied_InstanceUnsupportedOperateError = "OperationDenied.InstanceUnsupportedOperateError"
        case operationDenied_ModifyAuditStatusError = "OperationDenied.ModifyAuditStatusError"
        case operationDenied_NotSupportBasic = "OperationDenied.NotSupportBasic"
        case operationDenied_NotSupportModifyLocalRootHostError = "OperationDenied.NotSupportModifyLocalRootHostError"
        case operationDenied_OtherOderInProcess = "OperationDenied.OtherOderInProcess"
        case operationDenied_OverQuota = "OperationDenied.OverQuota"
        case operationDenied_ProxyUpgradeTaskStatusError = "OperationDenied.ProxyUpgradeTaskStatusError"
        case operationDenied_ResultOverLimit = "OperationDenied.ResultOverLimit"
        case operationDenied_SubAccountOperationDenied = "OperationDenied.SubAccountOperationDenied"
        case operationDenied_UnSupportRefundError = "OperationDenied.UnSupportRefundError"
        case operationDenied_UnsupportOpenAuditError = "OperationDenied.UnsupportOpenAuditError"
        case operationDenied_UserHasNoStrategy = "OperationDenied.UserHasNoStrategy"
        case operationDenied_WrongPassword = "OperationDenied.WrongPassword"
        case operationDenied_WrongStatus = "OperationDenied.WrongStatus"
        case overQuota = "OverQuota"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_CdbInstanceNotFoundError = "ResourceNotFound.CdbInstanceNotFoundError"
        case resourceNotFound_InstanceNotFundError = "ResourceNotFound.InstanceNotFundError"
        case resourceUnavailable = "ResourceUnavailable"
        case unauthorizedOperation_NotEnoughPrivileges = "UnauthorizedOperation.NotEnoughPrivileges"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_PrivilegesUnsupportedError = "UnsupportedOperation.PrivilegesUnsupportedError"
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
    
    /// CAM签名/鉴权错误。
    public static var authFailure: TCCdbError {
        TCCdbError(.authFailure)
    }
    
    /// 子账号无权限。
    public static var authFailure_SubAccountDenied: TCCdbError {
        TCCdbError(.authFailure_SubAccountDenied)
    }
    
    /// 后端错误或者流程错误。
    public static var cdbError: TCCdbError {
        TCCdbError(.cdbError)
    }
    
    /// 备份错误。
    public static var cdbError_BackupError: TCCdbError {
        TCCdbError(.cdbError_BackupError)
    }
    
    /// 后端数据库错误。
    public static var cdbError_DatabaseError: TCCdbError {
        TCCdbError(.cdbError_DatabaseError)
    }
    
    /// 导入任务错误。
    public static var cdbError_ImportError: TCCdbError {
        TCCdbError(.cdbError_ImportError)
    }
    
    /// 后端任务错误。
    public static var cdbError_TaskError: TCCdbError {
        TCCdbError(.cdbError_TaskError)
    }
    
    /// 操作失败。
    public static var failedOperation: TCCdbError {
        TCCdbError(.failedOperation)
    }
    
    /// 异步任务状态异常。
    public static var failedOperation_AsyncTaskStatusError: TCCdbError {
        TCCdbError(.failedOperation_AsyncTaskStatusError)
    }
    
    /// 审计不存在。
    public static var failedOperation_AuditConfigNotExist: TCCdbError {
        TCCdbError(.failedOperation_AuditConfigNotExist)
    }
    
    /// 实例互斥操作锁定失败,请稍后重试。
    public static var failedOperation_CdbInstanceLockFailError: TCCdbError {
        TCCdbError(.failedOperation_CdbInstanceLockFailError)
    }
    
    /// 创建失败，请检查用户是否已存在。
    public static var failedOperation_CreateAccountError: TCCdbError {
        TCCdbError(.failedOperation_CreateAccountError)
    }
    
    /// 创建审计规则失败。
    public static var failedOperation_CreateAuditFailError: TCCdbError {
        TCCdbError(.failedOperation_CreateAuditFailError)
    }
    
    /// 创建审计日志文件失败。
    public static var failedOperation_CreateAuditLogFileError: TCCdbError {
        TCCdbError(.failedOperation_CreateAuditLogFileError)
    }
    
    /// 申请只读实例独立VIP失败。
    public static var failedOperation_CreateRoVipError: TCCdbError {
        TCCdbError(.failedOperation_CreateRoVipError)
    }
    
    /// 数据库操作失败。
    public static var failedOperation_DBOperationActionError: TCCdbError {
        TCCdbError(.failedOperation_DBOperationActionError)
    }
    
    /// 删除审计失败。
    public static var failedOperation_DeleteAuditFailError: TCCdbError {
        TCCdbError(.failedOperation_DeleteAuditFailError)
    }
    
    /// 查询数据库代理失败。
    public static var failedOperation_DescribeProxyGroupError: TCCdbError {
        TCCdbError(.failedOperation_DescribeProxyGroupError)
    }
    
    /// 获取权限错误。
    public static var failedOperation_GetPrivilegeError: TCCdbError {
        TCCdbError(.failedOperation_GetPrivilegeError)
    }
    
    /// 查询失败。
    public static var failedOperation_InstanceQueryError: TCCdbError {
        TCCdbError(.failedOperation_InstanceQueryError)
    }
    
    /// json序列化失败。
    public static var failedOperation_JsonMarshalError: TCCdbError {
        TCCdbError(.failedOperation_JsonMarshalError)
    }
    
    /// json反序列化失败。
    public static var failedOperation_JsonUnmarshalError: TCCdbError {
        TCCdbError(.failedOperation_JsonUnmarshalError)
    }
    
    /// 不是延迟复制RO。
    public static var failedOperation_NotDelayRo: TCCdbError {
        TCCdbError(.failedOperation_NotDelayRo)
    }
    
    /// 执行的权限修改操作非法。您可以参照产品文档，了解当前实例支持哪些权限修改操作，如有疑问，请您咨询客服进行处理。
    public static var failedOperation_PrivilegeDataIllegal: TCCdbError {
        TCCdbError(.failedOperation_PrivilegeDataIllegal)
    }
    
    /// 数据库代理状态异常。
    public static var failedOperation_ProxyGroupStatusError: TCCdbError {
        TCCdbError(.failedOperation_ProxyGroupStatusError)
    }
    
    /// 查询日志失败。
    public static var failedOperation_QueryLogError: TCCdbError {
        TCCdbError(.failedOperation_QueryLogError)
    }
    
    /// 代理创建中或则已存在，请勿重复创建。
    public static var failedOperation_RepeatCreateProxyError: TCCdbError {
        TCCdbError(.failedOperation_RepeatCreateProxyError)
    }
    
    /// 后台请求服务异常，请您联系客服解决。
    public static var failedOperation_ResponseValueError: TCCdbError {
        TCCdbError(.failedOperation_ResponseValueError)
    }
    
    /// 操作发起失败，请稍后重试。如果操作持续不成功，请您联系客服进行处理。
    public static var failedOperation_StartFlowError: TCCdbError {
        TCCdbError(.failedOperation_StartFlowError)
    }
    
    /// 任务状态冲突。
    public static var failedOperation_StatusConflict: TCCdbError {
        TCCdbError(.failedOperation_StatusConflict)
    }
    
    /// 提交任务失败，请稍后重试。如果持续提交失败，请您联系客服进行处理。
    public static var failedOperation_SubmitAsyncTaskError: TCCdbError {
        TCCdbError(.failedOperation_SubmitAsyncTaskError)
    }
    
    /// 查询超时。
    public static var failedOperation_TimeoutError: TCCdbError {
        TCCdbError(.failedOperation_TimeoutError)
    }
    
    /// 类型错误，无法执行该操作。
    public static var failedOperation_TypeInConflict: TCCdbError {
        TCCdbError(.failedOperation_TypeInConflict)
    }
    
    /// 内部错误。
    public static var internalError: TCCdbError {
        TCCdbError(.internalError)
    }
    
    /// 查询异步任务错误。
    public static var internalError_AsyncRequestError: TCCdbError {
        TCCdbError(.internalError_AsyncRequestError)
    }
    
    /// 创建审计日志文件错误。
    public static var internalError_AuditCreateLogFileError: TCCdbError {
        TCCdbError(.internalError_AuditCreateLogFileError)
    }
    
    /// 删除审计日志错误。
    public static var internalError_AuditDeleteLogFileError: TCCdbError {
        TCCdbError(.internalError_AuditDeleteLogFileError)
    }
    
    /// 审计内部服务错误。
    public static var internalError_AuditDeletePolicyError: TCCdbError {
        TCCdbError(.internalError_AuditDeletePolicyError)
    }
    
    /// 审计内部服务错误。
    public static var internalError_AuditError: TCCdbError {
        TCCdbError(.internalError_AuditError)
    }
    
    /// 修改审计状态失败。
    public static var internalError_AuditModifyStatusError: TCCdbError {
        TCCdbError(.internalError_AuditModifyStatusError)
    }
    
    /// 审计服务内部异常。
    public static var internalError_AuditOssLogicError: TCCdbError {
        TCCdbError(.internalError_AuditOssLogicError)
    }
    
    /// 鉴权失败。
    public static var internalError_AuthError: TCCdbError {
        TCCdbError(.internalError_AuthError)
    }
    
    /// 鉴权失败。
    public static var internalError_CauthError: TCCdbError {
        TCCdbError(.internalError_CauthError)
    }
    
    /// 系统内部错误。
    public static var internalError_CdbCgwError: TCCdbError {
        TCCdbError(.internalError_CdbCgwError)
    }
    
    /// 系统错误。
    public static var internalError_CdbError: TCCdbError {
        TCCdbError(.internalError_CdbError)
    }
    
    /// 获取文件信息失败。
    public static var internalError_CosError: TCCdbError {
        TCCdbError(.internalError_CosError)
    }
    
    /// 数据库异常。
    public static var internalError_DBError: TCCdbError {
        TCCdbError(.internalError_DBError)
    }
    
    /// 数据库操作失败。
    public static var internalError_DBOperationError: TCCdbError {
        TCCdbError(.internalError_DBOperationError)
    }
    
    /// 数据库记录不存在。
    public static var internalError_DBRecordNotExistError: TCCdbError {
        TCCdbError(.internalError_DBRecordNotExistError)
    }
    
    /// 数据库内部错误。
    public static var internalError_DatabaseAccessError: TCCdbError {
        TCCdbError(.internalError_DatabaseAccessError)
    }
    
    /// 系统内部错误。
    public static var internalError_DesError: TCCdbError {
        TCCdbError(.internalError_DesError)
    }
    
    /// 安全组操作错误。
    public static var internalError_DfwError: TCCdbError {
        TCCdbError(.internalError_DfwError)
    }
    
    /// sql错误。
    public static var internalError_ExeSqlError: TCCdbError {
        TCCdbError(.internalError_ExeSqlError)
    }
    
    public static var internalError_ExecHttpRequestError: TCCdbError {
        TCCdbError(.internalError_ExecHttpRequestError)
    }
    
    /// sql执行失败。
    public static var internalError_ExecuteSQLError: TCCdbError {
        TCCdbError(.internalError_ExecuteSQLError)
    }
    
    /// 文件传输异常。
    public static var internalError_FtpError: TCCdbError {
        TCCdbError(.internalError_FtpError)
    }
    
    /// Http请求异常。
    public static var internalError_HttpError: TCCdbError {
        TCCdbError(.internalError_HttpError)
    }
    
    /// 内部服务错误。
    public static var internalError_InnerCommonError: TCCdbError {
        TCCdbError(.internalError_InnerCommonError)
    }
    
    /// 内部服务异常，请您联系客服进行处理。
    public static var internalError_InternalAssertError: TCCdbError {
        TCCdbError(.internalError_InternalAssertError)
    }
    
    /// 请求执行异常。
    public static var internalError_InternalHttpServerError: TCCdbError {
        TCCdbError(.internalError_InternalHttpServerError)
    }
    
    /// 后台请求服务失败，请稍后重试。
    public static var internalError_InternalRequestError: TCCdbError {
        TCCdbError(.internalError_InternalRequestError)
    }
    
    /// 访问内部服务错误。
    public static var internalError_InternalServiceErrorErr: TCCdbError {
        TCCdbError(.internalError_InternalServiceErrorErr)
    }
    
    /// json解析失败。
    public static var internalError_JSONError: TCCdbError {
        TCCdbError(.internalError_JSONError)
    }
    
    /// 网络错误。
    public static var internalError_NetworkError: TCCdbError {
        TCCdbError(.internalError_NetworkError)
    }
    
    /// 高可用版服务错误。
    public static var internalError_OssError: TCCdbError {
        TCCdbError(.internalError_OssError)
    }
    
    /// 参数错误。
    public static var internalError_ParamError: TCCdbError {
        TCCdbError(.internalError_ParamError)
    }
    
    /// 正则表达式编译错误。
    public static var internalError_RegexpCompileError: TCCdbError {
        TCCdbError(.internalError_RegexpCompileError)
    }
    
    /// 资源不匹配。
    public static var internalError_ResourceNotMatch: TCCdbError {
        TCCdbError(.internalError_ResourceNotMatch)
    }
    
    /// 资源不唯一。
    public static var internalError_ResourceNotUnique: TCCdbError {
        TCCdbError(.internalError_ResourceNotUnique)
    }
    
    /// 安全组错误。
    public static var internalError_SecurityGroupError: TCCdbError {
        TCCdbError(.internalError_SecurityGroupError)
    }
    
    /// 系统内部错误。
    public static var internalError_ServerError: TCCdbError {
        TCCdbError(.internalError_ServerError)
    }
    
    /// 内部服务异常。
    public static var internalError_ServiceError: TCCdbError {
        TCCdbError(.internalError_ServiceError)
    }
    
    /// 更改tag失败，请稍后重试。
    public static var internalError_TagError: TCCdbError {
        TCCdbError(.internalError_TagError)
    }
    
    /// 任务异常。
    public static var internalError_TaskError: TCCdbError {
        TCCdbError(.internalError_TaskError)
    }
    
    /// 异步任务错误。
    public static var internalError_TaskFrameError: TCCdbError {
        TCCdbError(.internalError_TaskFrameError)
    }
    
    /// 时间窗错误。
    public static var internalError_TimeWindowError: TCCdbError {
        TCCdbError(.internalError_TimeWindowError)
    }
    
    /// 交易系统错误。
    public static var internalError_TradeError: TCCdbError {
        TCCdbError(.internalError_TradeError)
    }
    
    /// 操作失败。
    public static var internalError_TransactionBeginError: TCCdbError {
        TCCdbError(.internalError_TransactionBeginError)
    }
    
    /// 未知错误。
    public static var internalError_UndefinedError: TCCdbError {
        TCCdbError(.internalError_UndefinedError)
    }
    
    /// 未知错误。
    public static var internalError_UnknownError: TCCdbError {
        TCCdbError(.internalError_UnknownError)
    }
    
    /// 私有网络或子网错误。
    public static var internalError_VpcError: TCCdbError {
        TCCdbError(.internalError_VpcError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCCdbError {
        TCCdbError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCCdbError {
        TCCdbError(.invalidParameterValue)
    }
    
    /// 账号描述信息包含特殊字符。
    public static var invalidParameterValue_AccountDescriptionCharacterError: TCCdbError {
        TCCdbError(.invalidParameterValue_AccountDescriptionCharacterError)
    }
    
    /// 账号描述信息长度超过255个字符。
    public static var invalidParameterValue_AccountDescriptionLengthError: TCCdbError {
        TCCdbError(.invalidParameterValue_AccountDescriptionLengthError)
    }
    
    /// 账号主机参数规则错误。
    public static var invalidParameterValue_AccountHostRuleError: TCCdbError {
        TCCdbError(.invalidParameterValue_AccountHostRuleError)
    }
    
    /// 账号密码中包含无效的字符。
    public static var invalidParameterValue_AccountPasswordCharacterError: TCCdbError {
        TCCdbError(.invalidParameterValue_AccountPasswordCharacterError)
    }
    
    /// 账号密码不符合长度。
    public static var invalidParameterValue_AccountPasswordLengthError: TCCdbError {
        TCCdbError(.invalidParameterValue_AccountPasswordLengthError)
    }
    
    /// 密码规则错误，至少包含字母、数字和字符（_+-&amp;=!@#$%^*()）中的两种，长度为8-64个字符。
    public static var invalidParameterValue_AccountPasswordRuleError: TCCdbError {
        TCCdbError(.invalidParameterValue_AccountPasswordRuleError)
    }
    
    /// 数据转换失败。
    public static var invalidParameterValue_DataConvertError: TCCdbError {
        TCCdbError(.invalidParameterValue_DataConvertError)
    }
    
    /// 参数值无效。
    public static var invalidParameterValue_InvalidParameterValueError: TCCdbError {
        TCCdbError(.invalidParameterValue_InvalidParameterValueError)
    }
    
    /// 账号用户名规则错误。
    public static var invalidParameterValue_UserNameRuleError: TCCdbError {
        TCCdbError(.invalidParameterValue_UserNameRuleError)
    }
    
    /// 账号信息不存在。
    public static var invalidParameterValue_UserNotExistError: TCCdbError {
        TCCdbError(.invalidParameterValue_UserNotExistError)
    }
    
    /// 未找到root账号信息。
    public static var invalidParameterValue_VerifyAccountNoRootError: TCCdbError {
        TCCdbError(.invalidParameterValue_VerifyAccountNoRootError)
    }
    
    /// 账号密码无效。
    public static var invalidParameterValue_VerifyAccountPasswordError: TCCdbError {
        TCCdbError(.invalidParameterValue_VerifyAccountPasswordError)
    }
    
    /// 账号无GRANT权限。
    public static var invalidParameterValue_VerifyAccountPrivError: TCCdbError {
        TCCdbError(.invalidParameterValue_VerifyAccountPrivError)
    }
    
    /// 未找到该接口。
    public static var invalidParameter_ControllerNotFoundError: TCCdbError {
        TCCdbError(.invalidParameter_ControllerNotFoundError)
    }
    
    /// 置放群组下存在资源。
    public static var invalidParameter_DeployGroupNotEmpty: TCCdbError {
        TCCdbError(.invalidParameter_DeployGroupNotEmpty)
    }
    
    /// 异常参数。
    public static var invalidParameter_ExceptionParam: TCCdbError {
        TCCdbError(.invalidParameter_ExceptionParam)
    }
    
    /// 未找到该实例。
    public static var invalidParameter_InstanceNameNotFound: TCCdbError {
        TCCdbError(.invalidParameter_InstanceNameNotFound)
    }
    
    /// 实例不存在。
    public static var invalidParameter_InstanceNotFound: TCCdbError {
        TCCdbError(.invalidParameter_InstanceNotFound)
    }
    
    /// 异步任务不存在。
    public static var invalidParameter_InvalidAsyncRequestId: TCCdbError {
        TCCdbError(.invalidParameter_InvalidAsyncRequestId)
    }
    
    /// 非法的名称。
    public static var invalidParameter_InvalidName: TCCdbError {
        TCCdbError(.invalidParameter_InvalidName)
    }
    
    /// 无效的参数值。
    public static var invalidParameter_InvalidParameterError: TCCdbError {
        TCCdbError(.invalidParameter_InvalidParameterError)
    }
    
    /// Json反序列化错误。
    public static var invalidParameter_JsonUnmarshalError: TCCdbError {
        TCCdbError(.invalidParameter_JsonUnmarshalError)
    }
    
    /// 超出置放群组资源数量配额。
    public static var invalidParameter_OverDeployGroupQuota: TCCdbError {
        TCCdbError(.invalidParameter_OverDeployGroupQuota)
    }
    
    /// 资源已存在。
    public static var invalidParameter_ResourceExists: TCCdbError {
        TCCdbError(.invalidParameter_ResourceExists)
    }
    
    /// 资源不存在。
    public static var invalidParameter_ResourceNotExists: TCCdbError {
        TCCdbError(.invalidParameter_ResourceNotExists)
    }
    
    /// 未找到相关资源。
    public static var invalidParameter_ResourceNotFound: TCCdbError {
        TCCdbError(.invalidParameter_ResourceNotFound)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCCdbError {
        TCCdbError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCCdbError {
        TCCdbError(.missingParameter)
    }
    
    /// 缺失账号相关参数。
    public static var missingParameter_AccountMissingParameterError: TCCdbError {
        TCCdbError(.missingParameter_AccountMissingParameterError)
    }
    
    /// 缺少必要参数。
    public static var missingParameter_MissingParamError: TCCdbError {
        TCCdbError(.missingParameter_MissingParamError)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCCdbError {
        TCCdbError(.operationDenied)
    }
    
    /// 实例正在执行其他任务。
    public static var operationDenied_ActionInProcess: TCCdbError {
        TCCdbError(.operationDenied_ActionInProcess)
    }
    
    /// 不支持的操作。
    public static var operationDenied_ActionNotSupport: TCCdbError {
        TCCdbError(.operationDenied_ActionNotSupport)
    }
    
    /// 已开启安全审计，至少保留一个全审计。
    public static var operationDenied_AtLeastAllRuleAuditPolicyError: TCCdbError {
        TCCdbError(.operationDenied_AtLeastAllRuleAuditPolicyError)
    }
    
    /// 至少保留一个审计策略。
    public static var operationDenied_AtLeastAuditPolicyError: TCCdbError {
        TCCdbError(.operationDenied_AtLeastAuditPolicyError)
    }
    
    /// 审计日志文件数超过最大限制数。
    public static var operationDenied_AuditFileOverQuotaError: TCCdbError {
        TCCdbError(.operationDenied_AuditFileOverQuotaError)
    }
    
    /// 审计策略冲突。
    public static var operationDenied_AuditPolicyConflictError: TCCdbError {
        TCCdbError(.operationDenied_AuditPolicyConflictError)
    }
    
    /// 审计策略已存在。
    public static var operationDenied_AuditPolicyExistError: TCCdbError {
        TCCdbError(.operationDenied_AuditPolicyExistError)
    }
    
    /// 审计策略不存在。
    public static var operationDenied_AuditPolicyNotExistError: TCCdbError {
        TCCdbError(.operationDenied_AuditPolicyNotExistError)
    }
    
    /// 审计策略数量超限。
    public static var operationDenied_AuditPolicyOverQuotaError: TCCdbError {
        TCCdbError(.operationDenied_AuditPolicyOverQuotaError)
    }
    
    /// 审计规则删除失败。
    public static var operationDenied_AuditRuleDeleteError: TCCdbError {
        TCCdbError(.operationDenied_AuditRuleDeleteError)
    }
    
    /// 审计规则已存在。
    public static var operationDenied_AuditRuleExistError: TCCdbError {
        TCCdbError(.operationDenied_AuditRuleExistError)
    }
    
    /// 审计规则已绑定。
    public static var operationDenied_AuditRuleHasBind: TCCdbError {
        TCCdbError(.operationDenied_AuditRuleHasBind)
    }
    
    /// 审计规则不存在。
    public static var operationDenied_AuditRuleNotExistError: TCCdbError {
        TCCdbError(.operationDenied_AuditRuleNotExistError)
    }
    
    /// 审计状态异常。
    public static var operationDenied_AuditStatusError: TCCdbError {
        TCCdbError(.operationDenied_AuditStatusError)
    }
    
    /// 审计任务冲突。
    public static var operationDenied_AuditTaskConflictError: TCCdbError {
        TCCdbError(.operationDenied_AuditTaskConflictError)
    }
    
    /// 当前RO组有RO实例处于非法状态，不允许执行当前操作。
    public static var operationDenied_ConflictRoStatus: TCCdbError {
        TCCdbError(.operationDenied_ConflictRoStatus)
    }
    
    /// 当前只读组配置正在变更中，请勿重复发起请求。
    public static var operationDenied_ConflictStatus: TCCdbError {
        TCCdbError(.operationDenied_ConflictStatus)
    }
    
    /// 已开通安全审计,不支持规则审计。
    public static var operationDenied_DBBrainPolicyConflict: TCCdbError {
        TCCdbError(.operationDenied_DBBrainPolicyConflict)
    }
    
    /// 延迟复制正在运行，不允许执行操作。
    public static var operationDenied_DelayReplicationRunning: TCCdbError {
        TCCdbError(.operationDenied_DelayReplicationRunning)
    }
    
    /// root账号禁止被删除。
    public static var operationDenied_DeleteRootAccountError: TCCdbError {
        TCCdbError(.operationDenied_DeleteRootAccountError)
    }
    
    /// 该实例无此功能权限。
    public static var operationDenied_FunctionDenied: TCCdbError {
        TCCdbError(.operationDenied_FunctionDenied)
    }
    
    public static var operationDenied_InstTypeNotSupport: TCCdbError {
        TCCdbError(.operationDenied_InstTypeNotSupport)
    }
    
    /// 实例锁冲突，请稍后重试。
    public static var operationDenied_InstanceLockerConflict: TCCdbError {
        TCCdbError(.operationDenied_InstanceLockerConflict)
    }
    
    /// 实例状态异常。
    public static var operationDenied_InstanceStatusError: TCCdbError {
        TCCdbError(.operationDenied_InstanceStatusError)
    }
    
    /// 当前实例正在进行其他任务，不能执行延迟复制。
    public static var operationDenied_InstanceTaskRunning: TCCdbError {
        TCCdbError(.operationDenied_InstanceTaskRunning)
    }
    
    public static var operationDenied_InstanceTaskStatusError: TCCdbError {
        TCCdbError(.operationDenied_InstanceTaskStatusError)
    }
    
    /// 实例不支持该操作。
    public static var operationDenied_InstanceUnsupportedOperateError: TCCdbError {
        TCCdbError(.operationDenied_InstanceUnsupportedOperateError)
    }
    
    /// 修改审计状态失败。
    public static var operationDenied_ModifyAuditStatusError: TCCdbError {
        TCCdbError(.operationDenied_ModifyAuditStatusError)
    }
    
    /// 基础版实例不支持当前操作（功能）。
    public static var operationDenied_NotSupportBasic: TCCdbError {
        TCCdbError(.operationDenied_NotSupportBasic)
    }
    
    /// 不支持修改本地root账号host信息。
    public static var operationDenied_NotSupportModifyLocalRootHostError: TCCdbError {
        TCCdbError(.operationDenied_NotSupportModifyLocalRootHostError)
    }
    
    /// 当前有其他订单正在处于下单过程中，请稍后重试。
    public static var operationDenied_OtherOderInProcess: TCCdbError {
        TCCdbError(.operationDenied_OtherOderInProcess)
    }
    
    /// 资源配额超限。
    public static var operationDenied_OverQuota: TCCdbError {
        TCCdbError(.operationDenied_OverQuota)
    }
    
    /// 数据库代理升级任务中，不允许该操作。
    public static var operationDenied_ProxyUpgradeTaskStatusError: TCCdbError {
        TCCdbError(.operationDenied_ProxyUpgradeTaskStatusError)
    }
    
    /// 结果集超过限制，请缩小检索范围。
    public static var operationDenied_ResultOverLimit: TCCdbError {
        TCCdbError(.operationDenied_ResultOverLimit)
    }
    
    /// 腾讯云子账号权限不足，不允许执行当前操作。
    public static var operationDenied_SubAccountOperationDenied: TCCdbError {
        TCCdbError(.operationDenied_SubAccountOperationDenied)
    }
    
    /// 该实例暂不支持退款。
    public static var operationDenied_UnSupportRefundError: TCCdbError {
        TCCdbError(.operationDenied_UnSupportRefundError)
    }
    
    /// 不支持开通审计。
    public static var operationDenied_UnsupportOpenAuditError: TCCdbError {
        TCCdbError(.operationDenied_UnsupportOpenAuditError)
    }
    
    /// 用户没有该策略权限。
    public static var operationDenied_UserHasNoStrategy: TCCdbError {
        TCCdbError(.operationDenied_UserHasNoStrategy)
    }
    
    /// 密码错误或校验未通过。
    public static var operationDenied_WrongPassword: TCCdbError {
        TCCdbError(.operationDenied_WrongPassword)
    }
    
    /// 后端任务状态非法。
    public static var operationDenied_WrongStatus: TCCdbError {
        TCCdbError(.operationDenied_WrongStatus)
    }
    
    /// 超限错误。
    public static var overQuota: TCCdbError {
        TCCdbError(.overQuota)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCCdbError {
        TCCdbError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCCdbError {
        TCCdbError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCCdbError {
        TCCdbError(.resourceNotFound)
    }
    
    /// 未找到数据库实例，请确认您的实例状态是否正常。
    public static var resourceNotFound_CdbInstanceNotFoundError: TCCdbError {
        TCCdbError(.resourceNotFound_CdbInstanceNotFoundError)
    }
    
    /// 该实例不存在。
    public static var resourceNotFound_InstanceNotFundError: TCCdbError {
        TCCdbError(.resourceNotFound_InstanceNotFundError)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCCdbError {
        TCCdbError(.resourceUnavailable)
    }
    
    /// 认证失败，没有足够权限。
    public static var unauthorizedOperation_NotEnoughPrivileges: TCCdbError {
        TCCdbError(.unauthorizedOperation_NotEnoughPrivileges)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCCdbError {
        TCCdbError(.unsupportedOperation)
    }
    
    /// 权限不支持。
    public static var unsupportedOperation_PrivilegesUnsupportedError: TCCdbError {
        TCCdbError(.unsupportedOperation_PrivilegesUnsupportedError)
    }
}

extension TCCdbError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, CdbError.self, FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, MissingParameter.self, OperationDenied.self, ResourceNotFound.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCCdbError: Equatable {
    public static func == (lhs: TCCdbError, rhs: TCCdbError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCdbError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}