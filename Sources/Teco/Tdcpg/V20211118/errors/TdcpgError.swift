public struct TCTdcpgError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_DatabaseAccessError = "FailedOperation.DatabaseAccessError"
        case failedOperation_FlowError = "FailedOperation.FlowError"
        case failedOperation_GetVpcFailed = "FailedOperation.GetVpcFailed"
        case failedOperation_InternalServiceAccessError = "FailedOperation.InternalServiceAccessError"
        case failedOperation_PayModeInvalid = "FailedOperation.PayModeInvalid"
        case failedOperation_SpecNotChange = "FailedOperation.SpecNotChange"
        case failedOperation_SpecStorageLack = "FailedOperation.SpecStorageLack"
        case failedOperation_StatusError = "FailedOperation.StatusError"
        case failedOperation_StoragePayModeInvalid = "FailedOperation.StoragePayModeInvalid"
        case failedOperation_TaskConflict = "FailedOperation.TaskConflict"
        case failedOperation_TradeAccessError = "FailedOperation.TradeAccessError"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AccountNotFound = "InvalidParameterValue.AccountNotFound"
        case invalidParameterValue_BackupDataPointInvalid = "InvalidParameterValue.BackupDataPointInvalid"
        case invalidParameterValue_ClusterNotFound = "InvalidParameterValue.ClusterNotFound"
        case invalidParameterValue_DatabaseVersionParamCountError = "InvalidParameterValue.DatabaseVersionParamCountError"
        case invalidParameterValue_DealNameNotFound = "InvalidParameterValue.DealNameNotFound"
        case invalidParameterValue_EndpointNotFound = "InvalidParameterValue.EndpointNotFound"
        case invalidParameterValue_IllegalInstanceName = "InvalidParameterValue.IllegalInstanceName"
        case invalidParameterValue_IllegalPassword = "InvalidParameterValue.IllegalPassword"
        case invalidParameterValue_InstanceNotFound = "InvalidParameterValue.InstanceNotFound"
        case invalidParameterValue_InvalidDBVersion = "InvalidParameterValue.InvalidDBVersion"
        case invalidParameterValue_InvalidDatabaseVersion = "InvalidParameterValue.InvalidDatabaseVersion"
        case invalidParameterValue_InvalidParameterValueError = "InvalidParameterValue.InvalidParameterValueError"
        case invalidParameterValue_InvalidSpec = "InvalidParameterValue.InvalidSpec"
        case invalidParameterValue_ParameterOutRangeError = "InvalidParameterValue.ParameterOutRangeError"
        case invalidParameterValue_RegionZoneUnavailable = "InvalidParameterValue.RegionZoneUnavailable"
        case invalidParameterValue_SourceBackupClusterIdInvalid = "InvalidParameterValue.SourceBackupClusterIdInvalid"
        case invalidParameterValue_StoragePoolNotFound = "InvalidParameterValue.StoragePoolNotFound"
        case invalidParameterValue_VpcDeniedError = "InvalidParameterValue.VpcDeniedError"
        case invalidParameterValue_VpcNotFound = "InvalidParameterValue.VpcNotFound"
        case invalidParameterValue_VpcSubnetIpLack = "InvalidParameterValue.VpcSubnetIpLack"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_ClusterInstanceLimit = "LimitExceeded.ClusterInstanceLimit"
        case limitExceeded_UserClusterLimit = "LimitExceeded.UserClusterLimit"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceUnavailable_InstanceStatusAbnormal = "ResourceUnavailable.InstanceStatusAbnormal"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_PermissionDenied = "UnauthorizedOperation.PermissionDenied"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
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
    public static var authFailure: TCTdcpgError {
        TCTdcpgError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCTdcpgError {
        TCTdcpgError(.failedOperation)
    }
    
    /// 元数据库访问失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_DatabaseAccessError: TCTdcpgError {
        TCTdcpgError(.failedOperation_DatabaseAccessError)
    }
    
    /// 创建流程失败,请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_FlowError: TCTdcpgError {
        TCTdcpgError(.failedOperation_FlowError)
    }
    
    /// 获取VPC信息异常，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_GetVpcFailed: TCTdcpgError {
        TCTdcpgError(.failedOperation_GetVpcFailed)
    }
    
    /// 内部服务访问失败，请稍后重试。如果持续不成功，请联系客服。
    public static var failedOperation_InternalServiceAccessError: TCTdcpgError {
        TCTdcpgError(.failedOperation_InternalServiceAccessError)
    }
    
    /// 当前的付费模式不支持此操作。
    public static var failedOperation_PayModeInvalid: TCTdcpgError {
        TCTdcpgError(.failedOperation_PayModeInvalid)
    }
    
    /// 规格没有变化，CPU/Memory至少升级一项。
    public static var failedOperation_SpecNotChange: TCTdcpgError {
        TCTdcpgError(.failedOperation_SpecNotChange)
    }
    
    /// 对应规格的存储上限不够，无法满足当前集群的数据存储。
    public static var failedOperation_SpecStorageLack: TCTdcpgError {
        TCTdcpgError(.failedOperation_SpecStorageLack)
    }
    
    /// 状态异常，不允许操作。
    public static var failedOperation_StatusError: TCTdcpgError {
        TCTdcpgError(.failedOperation_StatusError)
    }
    
    public static var failedOperation_StoragePayModeInvalid: TCTdcpgError {
        TCTdcpgError(.failedOperation_StoragePayModeInvalid)
    }
    
    /// 任务冲突，请稍后重试。如果持续不成功，请联系客服。
    public static var failedOperation_TaskConflict: TCTdcpgError {
        TCTdcpgError(.failedOperation_TaskConflict)
    }
    
    /// 请求计费服务异常，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_TradeAccessError: TCTdcpgError {
        TCTdcpgError(.failedOperation_TradeAccessError)
    }
    
    /// 内部错误。
    public static var internalError: TCTdcpgError {
        TCTdcpgError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTdcpgError {
        TCTdcpgError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue)
    }
    
    /// 账号不存在。
    public static var invalidParameterValue_AccountNotFound: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_AccountNotFound)
    }
    
    /// 未找到可回档的时间,请确认指定时间点是否在(创建集群时间点,当前时间点)之间。
    public static var invalidParameterValue_BackupDataPointInvalid: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_BackupDataPointInvalid)
    }
    
    /// 集群不存在。
    public static var invalidParameterValue_ClusterNotFound: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_ClusterNotFound)
    }
    
    public static var invalidParameterValue_DatabaseVersionParamCountError: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_DatabaseVersionParamCountError)
    }
    
    /// 订单未找到。
    public static var invalidParameterValue_DealNameNotFound: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_DealNameNotFound)
    }
    
    /// 接入点不存在。
    public static var invalidParameterValue_EndpointNotFound: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_EndpointNotFound)
    }
    
    /// 集群/实例名字非法，需要满足：长度在1-60个字符，只能由中文、字母、数字、'-'或'.'或'_'组成，区分大小写。
    public static var invalidParameterValue_IllegalInstanceName: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_IllegalInstanceName)
    }
    
    /// 密码设置无效，需要满足： 8-64个字符，至少包含 大写字母、小写字母、数字和符号~!@#$%^&amp;*_-+=`|(){}[]:;'&lt;&gt;,.?/中的任意三种
    public static var invalidParameterValue_IllegalPassword: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_IllegalPassword)
    }
    
    /// 实例不存在。
    public static var invalidParameterValue_InstanceNotFound: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_InstanceNotFound)
    }
    
    /// 数据库版本信息无法被识别。
    public static var invalidParameterValue_InvalidDBVersion: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_InvalidDBVersion)
    }
    
    public static var invalidParameterValue_InvalidDatabaseVersion: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_InvalidDatabaseVersion)
    }
    
    /// 传入的参数非法。
    public static var invalidParameterValue_InvalidParameterValueError: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_InvalidParameterValueError)
    }
    
    /// 规格信息(CPU/Memory)信息无法被识别。
    public static var invalidParameterValue_InvalidSpec: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_InvalidSpec)
    }
    
    /// 参数不合法。
    public static var invalidParameterValue_ParameterOutRangeError: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_ParameterOutRangeError)
    }
    
    /// 不支持当前地域/可用区的售卖。
    public static var invalidParameterValue_RegionZoneUnavailable: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_RegionZoneUnavailable)
    }
    
    /// 使用的备份数据来源集群ID非法。
    public static var invalidParameterValue_SourceBackupClusterIdInvalid: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_SourceBackupClusterIdInvalid)
    }
    
    /// 集群对应的存储已经被删除。
    public static var invalidParameterValue_StoragePoolNotFound: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_StoragePoolNotFound)
    }
    
    /// 您没有权限操作该VPC网络。
    public static var invalidParameterValue_VpcDeniedError: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_VpcDeniedError)
    }
    
    /// 未获取到VPC信息，请检查输入的VPC相关参数。
    public static var invalidParameterValue_VpcNotFound: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_VpcNotFound)
    }
    
    /// VPC子网中IP数量不够。
    public static var invalidParameterValue_VpcSubnetIpLack: TCTdcpgError {
        TCTdcpgError(.invalidParameterValue_VpcSubnetIpLack)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCTdcpgError {
        TCTdcpgError(.limitExceeded)
    }
    
    /// 当前集群下实例数量超过限制。
    public static var limitExceeded_ClusterInstanceLimit: TCTdcpgError {
        TCTdcpgError(.limitExceeded_ClusterInstanceLimit)
    }
    
    /// 用户集群数量超过限制。
    public static var limitExceeded_UserClusterLimit: TCTdcpgError {
        TCTdcpgError(.limitExceeded_UserClusterLimit)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCTdcpgError {
        TCTdcpgError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCTdcpgError {
        TCTdcpgError(.operationDenied)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCTdcpgError {
        TCTdcpgError(.resourceInsufficient)
    }
    
    /// 当前集群/实例状态不允许操作。
    public static var resourceUnavailable_InstanceStatusAbnormal: TCTdcpgError {
        TCTdcpgError(.resourceUnavailable_InstanceStatusAbnormal)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCTdcpgError {
        TCTdcpgError(.unauthorizedOperation)
    }
    
    /// 未经授权的操作。
    public static var unauthorizedOperation_PermissionDenied: TCTdcpgError {
        TCTdcpgError(.unauthorizedOperation_PermissionDenied)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCTdcpgError {
        TCTdcpgError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCTdcpgError {
        TCTdcpgError(.unsupportedOperation)
    }
}

extension TCTdcpgError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameterValue.self, LimitExceeded.self, ResourceUnavailable.self, UnauthorizedOperation.self]
    }
}

extension TCTdcpgError: Equatable {
    public static func == (lhs: TCTdcpgError, rhs: TCTdcpgError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTdcpgError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}