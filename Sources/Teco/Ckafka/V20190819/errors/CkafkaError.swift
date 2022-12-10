public struct TCCkafkaError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_InstanceNotExist = "InvalidParameterValue.InstanceNotExist"
        case invalidParameterValue_NotAllowedEmpty = "InvalidParameterValue.NotAllowedEmpty"
        case invalidParameterValue_RepetitionValue = "InvalidParameterValue.RepetitionValue"
        case invalidParameterValue_SubnetIdInvalid = "InvalidParameterValue.SubnetIdInvalid"
        case invalidParameterValue_SubnetNotBelongToZone = "InvalidParameterValue.SubnetNotBelongToZone"
        case invalidParameterValue_VpcIdInvalid = "InvalidParameterValue.VpcIdInvalid"
        case invalidParameterValue_WrongAction = "InvalidParameterValue.WrongAction"
        case invalidParameterValue_ZoneNotSupport = "InvalidParameterValue.ZoneNotSupport"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_RouteOverLimit = "LimitExceeded.RouteOverLimit"
        case limitExceeded_RouteSASLOverLimit = "LimitExceeded.RouteSASLOverLimit"
        case operationDenied = "OperationDenied"
        case operationDenied_ResourceTaskPaused = "OperationDenied.ResourceTaskPaused"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_BatchDelInstanceLimit = "UnsupportedOperation.BatchDelInstanceLimit"
        case unsupportedOperation_OssReject = "UnsupportedOperation.OssReject"
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
    public static var authFailure: TCCkafkaError {
        TCCkafkaError(.authFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCCkafkaError {
        TCCkafkaError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCCkafkaError {
        TCCkafkaError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCCkafkaError {
        TCCkafkaError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCCkafkaError {
        TCCkafkaError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCCkafkaError {
        TCCkafkaError(.invalidParameterValue)
    }
    
    /// 实例不存在。
    public static var invalidParameterValue_InstanceNotExist: TCCkafkaError {
        TCCkafkaError(.invalidParameterValue_InstanceNotExist)
    }
    
    /// 参数不允许为空。
    public static var invalidParameterValue_NotAllowedEmpty: TCCkafkaError {
        TCCkafkaError(.invalidParameterValue_NotAllowedEmpty)
    }
    
    /// 已存在相同参数。
    public static var invalidParameterValue_RepetitionValue: TCCkafkaError {
        TCCkafkaError(.invalidParameterValue_RepetitionValue)
    }
    
    /// 无效的子网id。
    public static var invalidParameterValue_SubnetIdInvalid: TCCkafkaError {
        TCCkafkaError(.invalidParameterValue_SubnetIdInvalid)
    }
    
    /// 子网不属于zone。
    public static var invalidParameterValue_SubnetNotBelongToZone: TCCkafkaError {
        TCCkafkaError(.invalidParameterValue_SubnetNotBelongToZone)
    }
    
    /// 无效的 Vpc Id。
    public static var invalidParameterValue_VpcIdInvalid: TCCkafkaError {
        TCCkafkaError(.invalidParameterValue_VpcIdInvalid)
    }
    
    /// Action参数取值错误。
    public static var invalidParameterValue_WrongAction: TCCkafkaError {
        TCCkafkaError(.invalidParameterValue_WrongAction)
    }
    
    /// zone不支持。
    public static var invalidParameterValue_ZoneNotSupport: TCCkafkaError {
        TCCkafkaError(.invalidParameterValue_ZoneNotSupport)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCCkafkaError {
        TCCkafkaError(.limitExceeded)
    }
    
    /// 路由数超过限制。
    public static var limitExceeded_RouteOverLimit: TCCkafkaError {
        TCCkafkaError(.limitExceeded_RouteOverLimit)
    }
    
    /// SASL路由超过限制。
    public static var limitExceeded_RouteSASLOverLimit: TCCkafkaError {
        TCCkafkaError(.limitExceeded_RouteSASLOverLimit)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCCkafkaError {
        TCCkafkaError(.operationDenied)
    }
    
    /// 任务资源暂停。
    ///
    /// 恢复控制台任务状态。
    public static var operationDenied_ResourceTaskPaused: TCCkafkaError {
        TCCkafkaError(.operationDenied_ResourceTaskPaused)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCCkafkaError {
        TCCkafkaError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCCkafkaError {
        TCCkafkaError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCCkafkaError {
        TCCkafkaError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCCkafkaError {
        TCCkafkaError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCCkafkaError {
        TCCkafkaError(.resourceUnavailable)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCCkafkaError {
        TCCkafkaError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCCkafkaError {
        TCCkafkaError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCCkafkaError {
        TCCkafkaError(.unsupportedOperation)
    }
    
    /// 批量删除实例限制。
    public static var unsupportedOperation_BatchDelInstanceLimit: TCCkafkaError {
        TCCkafkaError(.unsupportedOperation_BatchDelInstanceLimit)
    }
    
    /// Oss拒绝该操作。
    public static var unsupportedOperation_OssReject: TCCkafkaError {
        TCCkafkaError(.unsupportedOperation_OssReject)
    }
}

extension TCCkafkaError {
    public static var domains: [TCErrorType.Type] {
        return [InvalidParameterValue.self, LimitExceeded.self, OperationDenied.self, UnsupportedOperation.self]
    }
}

extension TCCkafkaError: Equatable {
    public static func == (lhs: TCCkafkaError, rhs: TCCkafkaError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCkafkaError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCkafkaError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
