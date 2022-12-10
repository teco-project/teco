public struct TCMongodbError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_KernelResponseTimeout = "FailedOperation.KernelResponseTimeout"
        case internalError = "InternalError"
        case internalError_CheckAppIdFailed = "InternalError.CheckAppIdFailed"
        case internalError_FindInstanceFailed = "InternalError.FindInstanceFailed"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_BackupFileNotFound = "InvalidParameterValue.BackupFileNotFound"
        case invalidParameterValue_CheckAppIdFailed = "InvalidParameterValue.CheckAppIdFailed"
        case invalidParameterValue_ClusterTypeError = "InvalidParameterValue.ClusterTypeError"
        case invalidParameterValue_IllegalInstanceName = "InvalidParameterValue.IllegalInstanceName"
        case invalidParameterValue_IllegalInstanceStatus = "InvalidParameterValue.IllegalInstanceStatus"
        case invalidParameterValue_IllegalStatusToOffline = "InvalidParameterValue.IllegalStatusToOffline"
        case invalidParameterValue_InstanceHasBeenDeleted = "InvalidParameterValue.InstanceHasBeenDeleted"
        case invalidParameterValue_InstanceHasBeenIsolated = "InvalidParameterValue.InstanceHasBeenIsolated"
        case invalidParameterValue_InvalidTradeOperation = "InvalidParameterValue.InvalidTradeOperation"
        case invalidParameterValue_LockFailed = "InvalidParameterValue.LockFailed"
        case invalidParameterValue_MachineTypeError = "InvalidParameterValue.MachineTypeError"
        case invalidParameterValue_ModifyModeError = "InvalidParameterValue.ModifyModeError"
        case invalidParameterValue_MongoVersionError = "InvalidParameterValue.MongoVersionError"
        case invalidParameterValue_MongoVersionNotSupportQueryClient = "InvalidParameterValue.MongoVersionNotSupportQueryClient"
        case invalidParameterValue_NodeNotFoundInReplica = "InvalidParameterValue.NodeNotFoundInReplica"
        case invalidParameterValue_NotFoundInstance = "InvalidParameterValue.NotFoundInstance"
        case invalidParameterValue_OplogSizeOutOfRange = "InvalidParameterValue.OplogSizeOutOfRange"
        case invalidParameterValue_PasswordRuleFailed = "InvalidParameterValue.PasswordRuleFailed"
        case invalidParameterValue_PostPaidInstanceBeyondLimit = "InvalidParameterValue.PostPaidInstanceBeyondLimit"
        case invalidParameterValue_PrePaidInstanceUnableToIsolate = "InvalidParameterValue.PrePaidInstanceUnableToIsolate"
        case invalidParameterValue_ProjectNotFound = "InvalidParameterValue.ProjectNotFound"
        case invalidParameterValue_ProxyNotSupportQueryClient = "InvalidParameterValue.ProxyNotSupportQueryClient"
        case invalidParameterValue_QueryOutOfRange = "InvalidParameterValue.QueryOutOfRange"
        case invalidParameterValue_QueryTimeOutOfRange = "InvalidParameterValue.QueryTimeOutOfRange"
        case invalidParameterValue_QueryTimeRangeBeyondLimit = "InvalidParameterValue.QueryTimeRangeBeyondLimit"
        case invalidParameterValue_RegionError = "InvalidParameterValue.RegionError"
        case invalidParameterValue_RegionNotSupportOperation = "InvalidParameterValue.RegionNotSupportOperation"
        case invalidParameterValue_RegionNotSupportQueryClient = "InvalidParameterValue.RegionNotSupportQueryClient"
        case invalidParameterValue_ReplicaNotFound = "InvalidParameterValue.ReplicaNotFound"
        case invalidParameterValue_ReplicaSetNumError = "InvalidParameterValue.ReplicaSetNumError"
        case invalidParameterValue_SecondaryNumError = "InvalidParameterValue.SecondaryNumError"
        case invalidParameterValue_SetDiskLessThanUsed = "InvalidParameterValue.SetDiskLessThanUsed"
        case invalidParameterValue_SlowMSBelowLimit = "InvalidParameterValue.SlowMSBelowLimit"
        case invalidParameterValue_SpecNotOnSale = "InvalidParameterValue.SpecNotOnSale"
        case invalidParameterValue_StartTimeNotBeforeThanEndTime = "InvalidParameterValue.StartTimeNotBeforeThanEndTime"
        case invalidParameterValue_StatusAbnormal = "InvalidParameterValue.StatusAbnormal"
        case invalidParameterValue_TagNotFound = "InvalidParameterValue.TagNotFound"
        case invalidParameterValue_UserNotFound = "InvalidParameterValue.UserNotFound"
        case invalidParameterValue_VpcIdOrSubnetIdNotFound = "InvalidParameterValue.VpcIdOrSubnetIdNotFound"
        case invalidParameterValue_ZoneClosed = "InvalidParameterValue.ZoneClosed"
        case invalidParameterValue_ZoneError = "InvalidParameterValue.ZoneError"
        case invalidParameter_CurrentInstanceNotSupportModifyParams = "InvalidParameter.CurrentInstanceNotSupportModifyParams"
        case invalidParameter_InvalidVip = "InvalidParameter.InvalidVip"
        case invalidParameter_PermissionDenied = "InvalidParameter.PermissionDenied"
        case invalidParameter_ZoneClosed = "InvalidParameter.ZoneClosed"
        case resourceNotFound = "ResourceNotFound"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_VersionNotSupport = "UnsupportedOperation.VersionNotSupport"
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
    public static var authFailure: TCMongodbError {
        TCMongodbError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCMongodbError {
        TCMongodbError(.failedOperation)
    }
    
    public static var failedOperation_KernelResponseTimeout: TCMongodbError {
        TCMongodbError(.failedOperation_KernelResponseTimeout)
    }
    
    /// 内部错误。
    public static var internalError: TCMongodbError {
        TCMongodbError(.internalError)
    }
    
    /// appId校验失败。
    public static var internalError_CheckAppIdFailed: TCMongodbError {
        TCMongodbError(.internalError_CheckAppIdFailed)
    }
    
    /// 实例查询失败。
    public static var internalError_FindInstanceFailed: TCMongodbError {
        TCMongodbError(.internalError_FindInstanceFailed)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCMongodbError {
        TCMongodbError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCMongodbError {
        TCMongodbError(.invalidParameterValue)
    }
    
    /// 备份文件未找到。
    public static var invalidParameterValue_BackupFileNotFound: TCMongodbError {
        TCMongodbError(.invalidParameterValue_BackupFileNotFound)
    }
    
    /// appId校验失败。
    public static var invalidParameterValue_CheckAppIdFailed: TCMongodbError {
        TCMongodbError(.invalidParameterValue_CheckAppIdFailed)
    }
    
    /// 无效的实例类型。
    public static var invalidParameterValue_ClusterTypeError: TCMongodbError {
        TCMongodbError(.invalidParameterValue_ClusterTypeError)
    }
    
    /// 非法的实例名。
    public static var invalidParameterValue_IllegalInstanceName: TCMongodbError {
        TCMongodbError(.invalidParameterValue_IllegalInstanceName)
    }
    
    /// 非法的实例状态。
    public static var invalidParameterValue_IllegalInstanceStatus: TCMongodbError {
        TCMongodbError(.invalidParameterValue_IllegalInstanceStatus)
    }
    
    /// 实例状态不允许进行下线，进行下线操作的实例状态必须为隔离状态。
    public static var invalidParameterValue_IllegalStatusToOffline: TCMongodbError {
        TCMongodbError(.invalidParameterValue_IllegalStatusToOffline)
    }
    
    /// 实例已删除。
    public static var invalidParameterValue_InstanceHasBeenDeleted: TCMongodbError {
        TCMongodbError(.invalidParameterValue_InstanceHasBeenDeleted)
    }
    
    /// 实例已隔离。
    public static var invalidParameterValue_InstanceHasBeenIsolated: TCMongodbError {
        TCMongodbError(.invalidParameterValue_InstanceHasBeenIsolated)
    }
    
    /// 计费相关错误，不允许对当前实例进行对应的新购/续费/配置变更操作。
    public static var invalidParameterValue_InvalidTradeOperation: TCMongodbError {
        TCMongodbError(.invalidParameterValue_InvalidTradeOperation)
    }
    
    /// 实例锁定失败。
    public static var invalidParameterValue_LockFailed: TCMongodbError {
        TCMongodbError(.invalidParameterValue_LockFailed)
    }
    
    /// 错误的机型。
    public static var invalidParameterValue_MachineTypeError: TCMongodbError {
        TCMongodbError(.invalidParameterValue_MachineTypeError)
    }
    
    /// 内存和磁盘必须同时升配或降配。
    public static var invalidParameterValue_ModifyModeError: TCMongodbError {
        TCMongodbError(.invalidParameterValue_ModifyModeError)
    }
    
    /// 实例版本错误。
    public static var invalidParameterValue_MongoVersionError: TCMongodbError {
        TCMongodbError(.invalidParameterValue_MongoVersionError)
    }
    
    /// 实例版本不支持查询客户端信息。
    public static var invalidParameterValue_MongoVersionNotSupportQueryClient: TCMongodbError {
        TCMongodbError(.invalidParameterValue_MongoVersionNotSupportQueryClient)
    }
    
    /// 当前副本集/分片未找到该节点。
    public static var invalidParameterValue_NodeNotFoundInReplica: TCMongodbError {
        TCMongodbError(.invalidParameterValue_NodeNotFoundInReplica)
    }
    
    /// 未找到实例。
    public static var invalidParameterValue_NotFoundInstance: TCMongodbError {
        TCMongodbError(.invalidParameterValue_NotFoundInstance)
    }
    
    /// OplogSize参数设置错误，应介于磁盘容量的10%和90%之间。
    public static var invalidParameterValue_OplogSizeOutOfRange: TCMongodbError {
        TCMongodbError(.invalidParameterValue_OplogSizeOutOfRange)
    }
    
    /// 密码不符合规范。
    public static var invalidParameterValue_PasswordRuleFailed: TCMongodbError {
        TCMongodbError(.invalidParameterValue_PasswordRuleFailed)
    }
    
    /// 单个地域后付费实例数量超过限制。
    public static var invalidParameterValue_PostPaidInstanceBeyondLimit: TCMongodbError {
        TCMongodbError(.invalidParameterValue_PostPaidInstanceBeyondLimit)
    }
    
    /// 预付费实例不支持销毁。
    public static var invalidParameterValue_PrePaidInstanceUnableToIsolate: TCMongodbError {
        TCMongodbError(.invalidParameterValue_PrePaidInstanceUnableToIsolate)
    }
    
    /// 项目不存在。
    public static var invalidParameterValue_ProjectNotFound: TCMongodbError {
        TCMongodbError(.invalidParameterValue_ProjectNotFound)
    }
    
    /// proxy版本不支持查询客户端信息，请联系工作人员进行升级。
    public static var invalidParameterValue_ProxyNotSupportQueryClient: TCMongodbError {
        TCMongodbError(.invalidParameterValue_ProxyNotSupportQueryClient)
    }
    
    /// 查询offset超出范围。
    public static var invalidParameterValue_QueryOutOfRange: TCMongodbError {
        TCMongodbError(.invalidParameterValue_QueryOutOfRange)
    }
    
    /// 只能查询7天内的慢日志。
    public static var invalidParameterValue_QueryTimeOutOfRange: TCMongodbError {
        TCMongodbError(.invalidParameterValue_QueryTimeOutOfRange)
    }
    
    /// 只能查询7天内的慢日志。
    public static var invalidParameterValue_QueryTimeRangeBeyondLimit: TCMongodbError {
        TCMongodbError(.invalidParameterValue_QueryTimeRangeBeyondLimit)
    }
    
    /// 无效的地域。
    public static var invalidParameterValue_RegionError: TCMongodbError {
        TCMongodbError(.invalidParameterValue_RegionError)
    }
    
    /// 当前地域尚不支持该操作。
    public static var invalidParameterValue_RegionNotSupportOperation: TCMongodbError {
        TCMongodbError(.invalidParameterValue_RegionNotSupportOperation)
    }
    
    /// 地域尚不支持查询客户端信息。
    public static var invalidParameterValue_RegionNotSupportQueryClient: TCMongodbError {
        TCMongodbError(.invalidParameterValue_RegionNotSupportQueryClient)
    }
    
    /// 未找到副本集/分片。
    public static var invalidParameterValue_ReplicaNotFound: TCMongodbError {
        TCMongodbError(.invalidParameterValue_ReplicaNotFound)
    }
    
    /// 副本集（分片）数量错误。
    public static var invalidParameterValue_ReplicaSetNumError: TCMongodbError {
        TCMongodbError(.invalidParameterValue_ReplicaSetNumError)
    }
    
    /// 从节点数错误。
    public static var invalidParameterValue_SecondaryNumError: TCMongodbError {
        TCMongodbError(.invalidParameterValue_SecondaryNumError)
    }
    
    /// 设置的磁盘大小不得低于已用磁盘的1.2倍。
    public static var invalidParameterValue_SetDiskLessThanUsed: TCMongodbError {
        TCMongodbError(.invalidParameterValue_SetDiskLessThanUsed)
    }
    
    /// slowMS参数取值范围[100, 。
    public static var invalidParameterValue_SlowMSBelowLimit: TCMongodbError {
        TCMongodbError(.invalidParameterValue_SlowMSBelowLimit)
    }
    
    /// 购买规格错误。
    public static var invalidParameterValue_SpecNotOnSale: TCMongodbError {
        TCMongodbError(.invalidParameterValue_SpecNotOnSale)
    }
    
    /// 起始时间晚于结束时间。
    public static var invalidParameterValue_StartTimeNotBeforeThanEndTime: TCMongodbError {
        TCMongodbError(.invalidParameterValue_StartTimeNotBeforeThanEndTime)
    }
    
    /// 实例处于不允许操作的状态。
    public static var invalidParameterValue_StatusAbnormal: TCMongodbError {
        TCMongodbError(.invalidParameterValue_StatusAbnormal)
    }
    
    /// 未找到指定的标签。
    public static var invalidParameterValue_TagNotFound: TCMongodbError {
        TCMongodbError(.invalidParameterValue_TagNotFound)
    }
    
    /// 用户账户不存在。
    public static var invalidParameterValue_UserNotFound: TCMongodbError {
        TCMongodbError(.invalidParameterValue_UserNotFound)
    }
    
    /// 未找到虚拟网络（子网）。
    public static var invalidParameterValue_VpcIdOrSubnetIdNotFound: TCMongodbError {
        TCMongodbError(.invalidParameterValue_VpcIdOrSubnetIdNotFound)
    }
    
    /// 可用区已关闭售卖。
    public static var invalidParameterValue_ZoneClosed: TCMongodbError {
        TCMongodbError(.invalidParameterValue_ZoneClosed)
    }
    
    /// 无效的可用区。
    public static var invalidParameterValue_ZoneError: TCMongodbError {
        TCMongodbError(.invalidParameterValue_ZoneError)
    }
    
    /// 当前实例不支持设置参数。
    public static var invalidParameter_CurrentInstanceNotSupportModifyParams: TCMongodbError {
        TCMongodbError(.invalidParameter_CurrentInstanceNotSupportModifyParams)
    }
    
    /// 无效Vip信息。
    public static var invalidParameter_InvalidVip: TCMongodbError {
        TCMongodbError(.invalidParameter_InvalidVip)
    }
    
    /// 当前子帐号无权执行该操作。
    public static var invalidParameter_PermissionDenied: TCMongodbError {
        TCMongodbError(.invalidParameter_PermissionDenied)
    }
    
    /// 可用区已关闭售卖。
    public static var invalidParameter_ZoneClosed: TCMongodbError {
        TCMongodbError(.invalidParameter_ZoneClosed)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCMongodbError {
        TCMongodbError(.resourceNotFound)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCMongodbError {
        TCMongodbError(.unsupportedOperation)
    }
    
    /// 当前版本不支持该操作。
    public static var unsupportedOperation_VersionNotSupport: TCMongodbError {
        TCMongodbError(.unsupportedOperation_VersionNotSupport)
    }
}

extension TCMongodbError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, UnsupportedOperation.self]
    }
}

extension TCMongodbError: Equatable {
    public static func == (lhs: TCMongodbError, rhs: TCMongodbError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCMongodbError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}