public struct TCTcaplusdbError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_OldPasswordHasExpired = "FailedOperation.OldPasswordHasExpired"
        case failedOperation_OldPasswordInUse = "FailedOperation.OldPasswordInUse"
        case failedOperation_PasswordFailure = "FailedOperation.PasswordFailure"
        case failedOperation_RegionMismatch = "FailedOperation.RegionMismatch"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_InvalidAppName = "InvalidParameterValue.InvalidAppName"
        case invalidParameterValue_InvalidClusterName = "InvalidParameterValue.InvalidClusterName"
        case invalidParameterValue_InvalidTableGroupName = "InvalidParameterValue.InvalidTableGroupName"
        case invalidParameterValue_InvalidTimeValue = "InvalidParameterValue.InvalidTimeValue"
        case invalidParameterValue_UnsupportIdlType = "InvalidParameterValue.UnsupportIdlType"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceInsufficient_BalanceError = "ResourceInsufficient.BalanceError"
        case resourceInsufficient_NoAvailableApp = "ResourceInsufficient.NoAvailableApp"
        case resourceInsufficient_NoAvailableCluster = "ResourceInsufficient.NoAvailableCluster"
        case resourceInsufficient_NoEnoughVipInVPC = "ResourceInsufficient.NoEnoughVipInVPC"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_DuplicateClusterName = "ResourceUnavailable.DuplicateClusterName"
        case resourceUnavailable_DuplicateTableGroupInfo = "ResourceUnavailable.DuplicateTableGroupInfo"
        case resourceUnavailable_DuplicateTableGroupName = "ResourceUnavailable.DuplicateTableGroupName"
        case resourceUnavailable_NoAvailableTableGroup = "ResourceUnavailable.NoAvailableTableGroup"
        case unauthorizedOperation = "UnauthorizedOperation"
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
    public static var authFailure: TCTcaplusdbError {
        TCTcaplusdbError(.authFailure)
    }
    
    /// 接口操作鉴权错误。
    public static var authFailure_UnauthorizedOperation: TCTcaplusdbError {
        TCTcaplusdbError(.authFailure_UnauthorizedOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCTcaplusdbError {
        TCTcaplusdbError(.failedOperation)
    }
    
    /// 旧密码已经失效。
    public static var failedOperation_OldPasswordHasExpired: TCTcaplusdbError {
        TCTcaplusdbError(.failedOperation_OldPasswordHasExpired)
    }
    
    /// 旧密码还未失效。
    public static var failedOperation_OldPasswordInUse: TCTcaplusdbError {
        TCTcaplusdbError(.failedOperation_OldPasswordInUse)
    }
    
    /// 密码错误。
    public static var failedOperation_PasswordFailure: TCTcaplusdbError {
        TCTcaplusdbError(.failedOperation_PasswordFailure)
    }
    
    /// 请求的地域不匹配。
    public static var failedOperation_RegionMismatch: TCTcaplusdbError {
        TCTcaplusdbError(.failedOperation_RegionMismatch)
    }
    
    /// 内部错误。
    public static var internalError: TCTcaplusdbError {
        TCTcaplusdbError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTcaplusdbError {
        TCTcaplusdbError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCTcaplusdbError {
        TCTcaplusdbError(.invalidParameterValue)
    }
    
    /// 应用名不合法。
    public static var invalidParameterValue_InvalidAppName: TCTcaplusdbError {
        TCTcaplusdbError(.invalidParameterValue_InvalidAppName)
    }
    
    /// 集群名称不合法。
    public static var invalidParameterValue_InvalidClusterName: TCTcaplusdbError {
        TCTcaplusdbError(.invalidParameterValue_InvalidClusterName)
    }
    
    /// 非法的表格组名称。
    public static var invalidParameterValue_InvalidTableGroupName: TCTcaplusdbError {
        TCTcaplusdbError(.invalidParameterValue_InvalidTableGroupName)
    }
    
    /// 非法的时间格式。
    public static var invalidParameterValue_InvalidTimeValue: TCTcaplusdbError {
        TCTcaplusdbError(.invalidParameterValue_InvalidTimeValue)
    }
    
    /// 不支持的应用数据描述类型。
    public static var invalidParameterValue_UnsupportIdlType: TCTcaplusdbError {
        TCTcaplusdbError(.invalidParameterValue_UnsupportIdlType)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCTcaplusdbError {
        TCTcaplusdbError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCTcaplusdbError {
        TCTcaplusdbError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCTcaplusdbError {
        TCTcaplusdbError(.operationDenied)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCTcaplusdbError {
        TCTcaplusdbError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCTcaplusdbError {
        TCTcaplusdbError(.resourceInsufficient)
    }
    
    /// 余额不足。
    public static var resourceInsufficient_BalanceError: TCTcaplusdbError {
        TCTcaplusdbError(.resourceInsufficient_BalanceError)
    }
    
    /// 没有可用的应用资源。
    public static var resourceInsufficient_NoAvailableApp: TCTcaplusdbError {
        TCTcaplusdbError(.resourceInsufficient_NoAvailableApp)
    }
    
    /// 没有可用的集群资源。
    public static var resourceInsufficient_NoAvailableCluster: TCTcaplusdbError {
        TCTcaplusdbError(.resourceInsufficient_NoAvailableCluster)
    }
    
    /// 私有网络中没有可用的vip资源。
    public static var resourceInsufficient_NoEnoughVipInVPC: TCTcaplusdbError {
        TCTcaplusdbError(.resourceInsufficient_NoEnoughVipInVPC)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCTcaplusdbError {
        TCTcaplusdbError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCTcaplusdbError {
        TCTcaplusdbError(.resourceUnavailable)
    }
    
    /// 集群名称重复。
    public static var resourceUnavailable_DuplicateClusterName: TCTcaplusdbError {
        TCTcaplusdbError(.resourceUnavailable_DuplicateClusterName)
    }
    
    /// 重复的表格组id或名称。
    public static var resourceUnavailable_DuplicateTableGroupInfo: TCTcaplusdbError {
        TCTcaplusdbError(.resourceUnavailable_DuplicateTableGroupInfo)
    }
    
    /// 重复的表格组名称。
    public static var resourceUnavailable_DuplicateTableGroupName: TCTcaplusdbError {
        TCTcaplusdbError(.resourceUnavailable_DuplicateTableGroupName)
    }
    
    /// 没有可用的表格组资源。
    public static var resourceUnavailable_NoAvailableTableGroup: TCTcaplusdbError {
        TCTcaplusdbError(.resourceUnavailable_NoAvailableTableGroup)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCTcaplusdbError {
        TCTcaplusdbError(.unauthorizedOperation)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCTcaplusdbError {
        TCTcaplusdbError(.unsupportedOperation)
    }
}

extension TCTcaplusdbError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InvalidParameterValue.self, ResourceInsufficient.self, ResourceUnavailable.self]
    }
}

extension TCTcaplusdbError: Equatable {
    public static func == (lhs: TCTcaplusdbError, rhs: TCTcaplusdbError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTcaplusdbError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTcaplusdbError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
