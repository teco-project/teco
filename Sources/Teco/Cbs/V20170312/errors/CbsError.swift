public struct TCCbsError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case insufficientRefundQuota = "InsufficientRefundQuota"
        case insufficientSnapshotQuota = "InsufficientSnapshotQuota"
        case internalError = "InternalError"
        case internalError_ComponentError = "InternalError.ComponentError"
        case internalError_FailQueryResource = "InternalError.FailQueryResource"
        case internalError_ResourceOpFailed = "InternalError.ResourceOpFailed"
        case invalidAccount_InsufficientBalance = "InvalidAccount.InsufficientBalance"
        case invalidAutoSnapshotPolicyId_NotFound = "InvalidAutoSnapshotPolicyId.NotFound"
        case invalidDiskId_NotFound = "InvalidDiskId.NotFound"
        case invalidDisk_AlreadyBound = "InvalidDisk.AlreadyBound"
        case invalidDisk_Busy = "InvalidDisk.Busy"
        case invalidDisk_Expire = "InvalidDisk.Expire"
        case invalidDisk_NotPortable = "InvalidDisk.NotPortable"
        case invalidDisk_NotSupportSnapshot = "InvalidDisk.NotSupportSnapshot"
        case invalidDisk_NotSupported = "InvalidDisk.NotSupported"
        case invalidDisk_SnapshotCreating = "InvalidDisk.SnapshotCreating"
        case invalidDisk_TypeError = "InvalidDisk.TypeError"
        case invalidFilter = "InvalidFilter"
        case invalidInstanceId_NotFound = "InvalidInstanceId.NotFound"
        case invalidInstance_NotSupported = "InvalidInstance.NotSupported"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_BindDiskLimitExceeded = "InvalidParameterValue.BindDiskLimitExceeded"
        case invalidParameterValue_LimitExceeded = "InvalidParameterValue.LimitExceeded"
        case invalidParameter_DiskConfigNotSupported = "InvalidParameter.DiskConfigNotSupported"
        case invalidParameter_DiskSizeNotMatch = "InvalidParameter.DiskSizeNotMatch"
        case invalidParameter_ProjectIdNotExist = "InvalidParameter.ProjectIdNotExist"
        case invalidParameter_ShouldConvertSnapshotToImage = "InvalidParameter.ShouldConvertSnapshotToImage"
        case invalidSnapshotId_NotFound = "InvalidSnapshotId.NotFound"
        case invalidSnapshot_NotSupported = "InvalidSnapshot.NotSupported"
        case limitExceeded_AutoSnapshotPolicyOutOfQuota = "LimitExceeded.AutoSnapshotPolicyOutOfQuota"
        case limitExceeded_InstanceAttachedDisk = "LimitExceeded.InstanceAttachedDisk"
        case missingParameter = "MissingParameter"
        case resourceBusy = "ResourceBusy"
        case resourceInUse = "ResourceInUse"
        case resourceInUse_CopySnapshotConflict = "ResourceInUse.CopySnapshotConflict"
        case resourceInUse_DiskMigrating = "ResourceInUse.DiskMigrating"
        case resourceInUse_DiskRollbacking = "ResourceInUse.DiskRollbacking"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceInsufficient_OverQuota = "ResourceInsufficient.OverQuota"
        case resourceInsufficient_OverRefundQuota = "ResourceInsufficient.OverRefundQuota"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_NotFound = "ResourceNotFound.NotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_Attached = "ResourceUnavailable.Attached"
        case resourceUnavailable_DiskSnapshotChainTooLarge = "ResourceUnavailable.DiskSnapshotChainTooLarge"
        case resourceUnavailable_Expire = "ResourceUnavailable.Expire"
        case resourceUnavailable_NotPortable = "ResourceUnavailable.NotPortable"
        case resourceUnavailable_NotSupportRefund = "ResourceUnavailable.NotSupportRefund"
        case resourceUnavailable_NotSupported = "ResourceUnavailable.NotSupported"
        case resourceUnavailable_RepeatRefund = "ResourceUnavailable.RepeatRefund"
        case resourceUnavailable_SnapshotCreating = "ResourceUnavailable.SnapshotCreating"
        case resourceUnavailable_TooManyCreatingSnapshot = "ResourceUnavailable.TooManyCreatingSnapshot"
        case resourceUnavailable_TypeError = "ResourceUnavailable.TypeError"
        case resourceUnavailable_ZoneNotMatch = "ResourceUnavailable.ZoneNotMatch"
        case tradeDealConflict = "TradeDealConflict"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_MFAExpired = "UnauthorizedOperation.MFAExpired"
        case unauthorizedOperation_NotCertification = "UnauthorizedOperation.NotCertification"
        case unauthorizedOperation_NotHavePaymentRight = "UnauthorizedOperation.NotHavePaymentRight"
        case unauthorizedOperation_RoleNotExists = "UnauthorizedOperation.RoleNotExists"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_DetachPod = "UnsupportedOperation.DetachPod"
        case unsupportedOperation_DiskEncrypt = "UnsupportedOperation.DiskEncrypt"
        case unsupportedOperation_InstanceNotStopped = "UnsupportedOperation.InstanceNotStopped"
        case unsupportedOperation_SnapHasShared = "UnsupportedOperation.SnapHasShared"
        case unsupportedOperation_SnapshotHasBindedImage = "UnsupportedOperation.SnapshotHasBindedImage"
        case unsupportedOperation_SnapshotNotSupportCopy = "UnsupportedOperation.SnapshotNotSupportCopy"
        case unsupportedOperation_StateError = "UnsupportedOperation.StateError"
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
    public static var authFailure: TCCbsError {
        TCCbsError(.authFailure)
    }
    
    /// 云盘退还数量已达上限，不能再退还。
    public static var insufficientRefundQuota: TCCbsError {
        TCCbsError(.insufficientRefundQuota)
    }
    
    /// 快照配额不足。
    public static var insufficientSnapshotQuota: TCCbsError {
        TCCbsError(.insufficientSnapshotQuota)
    }
    
    /// 内部错误。
    public static var internalError: TCCbsError {
        TCCbsError(.internalError)
    }
    
    /// 依赖组件请求失败，请联系客服人员解决。
    public static var internalError_ComponentError: TCCbsError {
        TCCbsError(.internalError_ComponentError)
    }
    
    /// 查询资源失败。
    public static var internalError_FailQueryResource: TCCbsError {
        TCCbsError(.internalError_FailQueryResource)
    }
    
    /// 对资源的操作失败，具体错误信息请查看错误描述 Message 字段，稍后重试或者联系客服人员帮忙解决。
    public static var internalError_ResourceOpFailed: TCCbsError {
        TCCbsError(.internalError_ResourceOpFailed)
    }
    
    /// 账户余额不足。
    public static var invalidAccount_InsufficientBalance: TCCbsError {
        TCCbsError(.invalidAccount_InsufficientBalance)
    }
    
    /// 输入的<code>AutoSnapshotPolicyId</code>不存在。
    public static var invalidAutoSnapshotPolicyId_NotFound: TCCbsError {
        TCCbsError(.invalidAutoSnapshotPolicyId_NotFound)
    }
    
    /// 输入的<code>DiskId</code>不存在。
    public static var invalidDiskId_NotFound: TCCbsError {
        TCCbsError(.invalidDiskId_NotFound)
    }
    
    /// 云盘已绑定定期快照策略。
    public static var invalidDisk_AlreadyBound: TCCbsError {
        TCCbsError(.invalidDisk_AlreadyBound)
    }
    
    /// 云硬盘忙，请稍后重试。
    public static var invalidDisk_Busy: TCCbsError {
        TCCbsError(.invalidDisk_Busy)
    }
    
    /// 云盘已过期。
    public static var invalidDisk_Expire: TCCbsError {
        TCCbsError(.invalidDisk_Expire)
    }
    
    /// 不支持非弹性云盘。
    public static var invalidDisk_NotPortable: TCCbsError {
        TCCbsError(.invalidDisk_NotPortable)
    }
    
    /// 云硬盘没有快照能力。
    public static var invalidDisk_NotSupportSnapshot: TCCbsError {
        TCCbsError(.invalidDisk_NotSupportSnapshot)
    }
    
    /// 云硬盘不支持该操作。
    public static var invalidDisk_NotSupported: TCCbsError {
        TCCbsError(.invalidDisk_NotSupported)
    }
    
    /// 云硬盘正在创建快照，请稍后重试。
    public static var invalidDisk_SnapshotCreating: TCCbsError {
        TCCbsError(.invalidDisk_SnapshotCreating)
    }
    
    /// 云硬盘类型错误。
    public static var invalidDisk_TypeError: TCCbsError {
        TCCbsError(.invalidDisk_TypeError)
    }
    
    /// 指定的Filter不被支持。
    public static var invalidFilter: TCCbsError {
        TCCbsError(.invalidFilter)
    }
    
    /// 输入实例的<code>InstanceId</code>不存在。
    public static var invalidInstanceId_NotFound: TCCbsError {
        TCCbsError(.invalidInstanceId_NotFound)
    }
    
    /// 云服务器不支持挂载云盘。
    public static var invalidInstance_NotSupported: TCCbsError {
        TCCbsError(.invalidInstance_NotSupported)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCCbsError {
        TCCbsError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCCbsError {
        TCCbsError(.invalidParameterValue)
    }
    
    /// 标签绑定云盘超过限制。
    public static var invalidParameterValue_BindDiskLimitExceeded: TCCbsError {
        TCCbsError(.invalidParameterValue_BindDiskLimitExceeded)
    }
    
    /// 参数值数量超过限制。
    public static var invalidParameterValue_LimitExceeded: TCCbsError {
        TCCbsError(.invalidParameterValue_LimitExceeded)
    }
    
    /// 当前地域不支持当前配置的云盘。
    public static var invalidParameter_DiskConfigNotSupported: TCCbsError {
        TCCbsError(.invalidParameter_DiskConfigNotSupported)
    }
    
    /// 云硬盘大小与快照大小不匹配。
    public static var invalidParameter_DiskSizeNotMatch: TCCbsError {
        TCCbsError(.invalidParameter_DiskSizeNotMatch)
    }
    
    /// 项目ID不存在。
    public static var invalidParameter_ProjectIdNotExist: TCCbsError {
        TCCbsError(.invalidParameter_ProjectIdNotExist)
    }
    
    /// 需要将快照转化成镜像后再执行操作。
    public static var invalidParameter_ShouldConvertSnapshotToImage: TCCbsError {
        TCCbsError(.invalidParameter_ShouldConvertSnapshotToImage)
    }
    
    /// 输入的<code>SnapshotId</code>不存在。
    public static var invalidSnapshotId_NotFound: TCCbsError {
        TCCbsError(.invalidSnapshotId_NotFound)
    }
    
    /// 快照不支持该操作。
    public static var invalidSnapshot_NotSupported: TCCbsError {
        TCCbsError(.invalidSnapshot_NotSupported)
    }
    
    /// 定期快照策略数量已达到上限。
    public static var limitExceeded_AutoSnapshotPolicyOutOfQuota: TCCbsError {
        TCCbsError(.limitExceeded_AutoSnapshotPolicyOutOfQuota)
    }
    
    /// 实例挂载云盘数量超过限制。
    public static var limitExceeded_InstanceAttachedDisk: TCCbsError {
        TCCbsError(.limitExceeded_InstanceAttachedDisk)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCCbsError {
        TCCbsError(.missingParameter)
    }
    
    /// 资源繁忙，请稍后重试。
    public static var resourceBusy: TCCbsError {
        TCCbsError(.resourceBusy)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCCbsError {
        TCCbsError(.resourceInUse)
    }
    
    /// 指定快照正在复制到目标地域。
    public static var resourceInUse_CopySnapshotConflict: TCCbsError {
        TCCbsError(.resourceInUse_CopySnapshotConflict)
    }
    
    /// 云硬盘当前已在迁移中，请稍后重试。
    public static var resourceInUse_DiskMigrating: TCCbsError {
        TCCbsError(.resourceInUse_DiskMigrating)
    }
    
    /// 云硬盘正在执行快照回滚操作，请稍后重试。
    public static var resourceInUse_DiskRollbacking: TCCbsError {
        TCCbsError(.resourceInUse_DiskRollbacking)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCCbsError {
        TCCbsError(.resourceInsufficient)
    }
    
    /// 配额不足。
    public static var resourceInsufficient_OverQuota: TCCbsError {
        TCCbsError(.resourceInsufficient_OverQuota)
    }
    
    /// 云盘退还数量已达上限，不能再退还。
    public static var resourceInsufficient_OverRefundQuota: TCCbsError {
        TCCbsError(.resourceInsufficient_OverRefundQuota)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCCbsError {
        TCCbsError(.resourceNotFound)
    }
    
    /// 资源不存在。
    public static var resourceNotFound_NotFound: TCCbsError {
        TCCbsError(.resourceNotFound_NotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCCbsError {
        TCCbsError(.resourceUnavailable)
    }
    
    /// 云硬盘已挂载至其他云服务器上。
    public static var resourceUnavailable_Attached: TCCbsError {
        TCCbsError(.resourceUnavailable_Attached)
    }
    
    public static var resourceUnavailable_DiskSnapshotChainTooLarge: TCCbsError {
        TCCbsError(.resourceUnavailable_DiskSnapshotChainTooLarge)
    }
    
    /// 云硬盘已过期。
    public static var resourceUnavailable_Expire: TCCbsError {
        TCCbsError(.resourceUnavailable_Expire)
    }
    
    /// 非弹性云硬盘不支持此操作。
    public static var resourceUnavailable_NotPortable: TCCbsError {
        TCCbsError(.resourceUnavailable_NotPortable)
    }
    
    /// 云盘不支持退还。
    public static var resourceUnavailable_NotSupportRefund: TCCbsError {
        TCCbsError(.resourceUnavailable_NotSupportRefund)
    }
    
    /// 资源不支持此操作。
    public static var resourceUnavailable_NotSupported: TCCbsError {
        TCCbsError(.resourceUnavailable_NotSupported)
    }
    
    /// 云硬盘已退还。
    public static var resourceUnavailable_RepeatRefund: TCCbsError {
        TCCbsError(.resourceUnavailable_RepeatRefund)
    }
    
    /// 快照尚未创建完成，暂时不可使用。
    public static var resourceUnavailable_SnapshotCreating: TCCbsError {
        TCCbsError(.resourceUnavailable_SnapshotCreating)
    }
    
    /// 全网正在创建的快照数量过多。
    public static var resourceUnavailable_TooManyCreatingSnapshot: TCCbsError {
        TCCbsError(.resourceUnavailable_TooManyCreatingSnapshot)
    }
    
    /// 云硬盘类型错误，如尝试挂载系统盘至云服务器上。
    public static var resourceUnavailable_TypeError: TCCbsError {
        TCCbsError(.resourceUnavailable_TypeError)
    }
    
    /// 云硬盘与实例不在同一可用区。
    public static var resourceUnavailable_ZoneNotMatch: TCCbsError {
        TCCbsError(.resourceUnavailable_ZoneNotMatch)
    }
    
    /// 订单冲突。
    public static var tradeDealConflict: TCCbsError {
        TCCbsError(.tradeDealConflict)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCCbsError {
        TCCbsError(.unauthorizedOperation)
    }
    
    /// MFA鉴权过期，请重试。
    public static var unauthorizedOperation_MFAExpired: TCCbsError {
        TCCbsError(.unauthorizedOperation_MFAExpired)
    }
    
    /// 账号没有实名认证，支付失败。
    public static var unauthorizedOperation_NotCertification: TCCbsError {
        TCCbsError(.unauthorizedOperation_NotCertification)
    }
    
    /// 没有支付权限。
    public static var unauthorizedOperation_NotHavePaymentRight: TCCbsError {
        TCCbsError(.unauthorizedOperation_NotHavePaymentRight)
    }
    
    /// 授权角色不存在。
    public static var unauthorizedOperation_RoleNotExists: TCCbsError {
        TCCbsError(.unauthorizedOperation_RoleNotExists)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCCbsError {
        TCCbsError(.unsupportedOperation)
    }
    
    /// 暂不支持从EKS上卸载云硬盘。
    public static var unsupportedOperation_DetachPod: TCCbsError {
        TCCbsError(.unsupportedOperation_DetachPod)
    }
    
    /// 磁盘已加密。
    public static var unsupportedOperation_DiskEncrypt: TCCbsError {
        TCCbsError(.unsupportedOperation_DiskEncrypt)
    }
    
    /// 云盘挂载的实例未关机。
    public static var unsupportedOperation_InstanceNotStopped: TCCbsError {
        TCCbsError(.unsupportedOperation_InstanceNotStopped)
    }
    
    /// 该快照已经共享，请先解除共享。
    public static var unsupportedOperation_SnapHasShared: TCCbsError {
        TCCbsError(.unsupportedOperation_SnapHasShared)
    }
    
    /// 该快照创建了自定义快照，请先删除对应镜像。
    public static var unsupportedOperation_SnapshotHasBindedImage: TCCbsError {
        TCCbsError(.unsupportedOperation_SnapshotHasBindedImage)
    }
    
    /// 快照不支持跨地域复制。
    public static var unsupportedOperation_SnapshotNotSupportCopy: TCCbsError {
        TCCbsError(.unsupportedOperation_SnapshotNotSupportCopy)
    }
    
    /// 资源当前状态不支持该操作。
    public static var unsupportedOperation_StateError: TCCbsError {
        TCCbsError(.unsupportedOperation_StateError)
    }
}

extension TCCbsError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self, InvalidAccount.self, InvalidAutoSnapshotPolicyId.self, InvalidDisk.self, InvalidDiskId.self, InvalidInstance.self, InvalidInstanceId.self, InvalidParameter.self, InvalidParameterValue.self, InvalidSnapshot.self, InvalidSnapshotId.self, LimitExceeded.self, ResourceInUse.self, ResourceInsufficient.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCCbsError: Equatable {
    public static func == (lhs: TCCbsError, rhs: TCCbsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCbsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}