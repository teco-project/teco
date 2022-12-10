public struct TCEsError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_UnAuthorizedOperation = "AuthFailure.UnAuthorizedOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_ClusterResourceLimitError = "FailedOperation.ClusterResourceLimitError"
        case failedOperation_DiskCountParamError = "FailedOperation.DiskCountParamError"
        case failedOperation_ErrorClusterState = "FailedOperation.ErrorClusterState"
        case failedOperation_ErrorClusterStateNoReplication = "FailedOperation.ErrorClusterStateNoReplication"
        case failedOperation_ErrorClusterStateUnhealth = "FailedOperation.ErrorClusterStateUnhealth"
        case failedOperation_NoPayment = "FailedOperation.NoPayment"
        case failedOperation_NotAuthenticated = "FailedOperation.NotAuthenticated"
        case failedOperation_UnsupportResetNodeTypeAndScaleoutDisk = "FailedOperation.UnsupportResetNodeTypeAndScaleoutDisk"
        case failedOperation_UnsupportResetScaledownAndModifyDisk = "FailedOperation.UnsupportResetScaledownAndModifyDisk"
        case failedOperation_UnsupportReverseRegulationNodeTypeAndDisk = "FailedOperation.UnsupportReverseRegulationNodeTypeAndDisk"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case missingParameter = "MissingParameter"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceInsufficient_Balance = "ResourceInsufficient.Balance"
        case resourceInsufficient_HiddenZone = "ResourceInsufficient.HiddenZone"
        case resourceInsufficient_Subnet = "ResourceInsufficient.Subnet"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
    }
    
    private let error: Code
    
    public let context: TCErrorContext?
    
    public var errorCode: String {
        self.error.rawValue
    }
    
    /// Initializer used by ``TCClient`` to match an error of this type.
    ///
    /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
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
    public static var authFailure: TCEsError {
        TCEsError(.authFailure)
    }
    
    /// 操作未授权。
    public static var authFailure_UnAuthorizedOperation: TCEsError {
        TCEsError(.authFailure_UnAuthorizedOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCEsError {
        TCEsError(.failedOperation)
    }
    
    /// 集群资源配额限制错误。
    public static var failedOperation_ClusterResourceLimitError: TCEsError {
        TCEsError(.failedOperation_ClusterResourceLimitError)
    }
    
    /// 节点磁盘块数参数检查失败。
    ///
    /// 检查节点的磁盘块数是否符合要求，4C16G以下配置节点不支持多盘。
    public static var failedOperation_DiskCountParamError: TCEsError {
        TCEsError(.failedOperation_DiskCountParamError)
    }
    
    /// 集群状态错误。
    public static var failedOperation_ErrorClusterState: TCEsError {
        TCEsError(.failedOperation_ErrorClusterState)
    }
    
    /// 集群索引没有副本存在。
    ///
    /// 给集群中0副本的索引添加副本
    public static var failedOperation_ErrorClusterStateNoReplication: TCEsError {
        TCEsError(.failedOperation_ErrorClusterStateNoReplication)
    }
    
    /// 集群状态不健康。
    ///
    /// 等集群状态健康后在进行操作。
    public static var failedOperation_ErrorClusterStateUnhealth: TCEsError {
        TCEsError(.failedOperation_ErrorClusterStateUnhealth)
    }
    
    /// 账户未绑定信用卡或paypal，无法支付。
    public static var failedOperation_NoPayment: TCEsError {
        TCEsError(.failedOperation_NoPayment)
    }
    
    /// 用户未实名认证。
    public static var failedOperation_NotAuthenticated: TCEsError {
        TCEsError(.failedOperation_NotAuthenticated)
    }
    
    /// 不支持在滚动重启扩容计算资源同时扩容磁盘数量。
    public static var failedOperation_UnsupportResetNodeTypeAndScaleoutDisk: TCEsError {
        TCEsError(.failedOperation_UnsupportResetNodeTypeAndScaleoutDisk)
    }
    
    /// 不支持滚动缩容计算资源同时修改磁盘大小。
    public static var failedOperation_UnsupportResetScaledownAndModifyDisk: TCEsError {
        TCEsError(.failedOperation_UnsupportResetScaledownAndModifyDisk)
    }
    
    /// 不支持反向调节节点配置和磁盘容量。
    ///
    /// 只能同时扩容节点配置和磁盘容量或磁盘数量。
    public static var failedOperation_UnsupportReverseRegulationNodeTypeAndDisk: TCEsError {
        TCEsError(.failedOperation_UnsupportReverseRegulationNodeTypeAndDisk)
    }
    
    /// 内部错误。
    public static var internalError: TCEsError {
        TCEsError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCEsError {
        TCEsError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCEsError {
        TCEsError(.invalidParameterValue)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCEsError {
        TCEsError(.missingParameter)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCEsError {
        TCEsError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCEsError {
        TCEsError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCEsError {
        TCEsError(.resourceInsufficient)
    }
    
    /// 账户余额不足。
    public static var resourceInsufficient_Balance: TCEsError {
        TCEsError(.resourceInsufficient_Balance)
    }
    
    /// 隐藏可用区专用主节点资源不足。
    public static var resourceInsufficient_HiddenZone: TCEsError {
        TCEsError(.resourceInsufficient_HiddenZone)
    }
    
    /// 子网剩余ip数量不足。
    public static var resourceInsufficient_Subnet: TCEsError {
        TCEsError(.resourceInsufficient_Subnet)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCEsError {
        TCEsError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCEsError {
        TCEsError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCEsError {
        TCEsError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCEsError {
        TCEsError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCEsError {
        TCEsError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCEsError {
        TCEsError(.unsupportedOperation)
    }
}

extension TCEsError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, ResourceInsufficient.self]
    }
}

extension TCEsError: Equatable {
    public static func == (lhs: TCEsError, rhs: TCEsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCEsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCEsError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
