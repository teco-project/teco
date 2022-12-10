public struct TCClbError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_InvalidLBStatus = "FailedOperation.InvalidLBStatus"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_Duplicate = "InvalidParameterValue.Duplicate"
        case invalidParameterValue_InvalidFilter = "InvalidParameterValue.InvalidFilter"
        case invalidParameterValue_Length = "InvalidParameterValue.Length"
        case invalidParameterValue_Range = "InvalidParameterValue.Range"
        case invalidParameter_FormatError = "InvalidParameter.FormatError"
        case invalidParameter_InvalidFilter = "InvalidParameter.InvalidFilter"
        case invalidParameter_LBIdNotFound = "InvalidParameter.LBIdNotFound"
        case invalidParameter_ListenerIdNotFound = "InvalidParameter.ListenerIdNotFound"
        case invalidParameter_LocationNotFound = "InvalidParameter.LocationNotFound"
        case invalidParameter_PortCheckFailed = "InvalidParameter.PortCheckFailed"
        case invalidParameter_ProtocolCheckFailed = "InvalidParameter.ProtocolCheckFailed"
        case invalidParameter_RegionNotFound = "InvalidParameter.RegionNotFound"
        case invalidParameter_RewriteAlreadyExist = "InvalidParameter.RewriteAlreadyExist"
        case invalidParameter_SomeRewriteNotFound = "InvalidParameter.SomeRewriteNotFound"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourcesSoldOut = "ResourcesSoldOut"
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
    public static var authFailure: TCClbError {
        TCClbError(.authFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCClbError {
        TCClbError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCClbError {
        TCClbError(.failedOperation)
    }
    
    /// LB状态异常。
    public static var failedOperation_InvalidLBStatus: TCClbError {
        TCClbError(.failedOperation_InvalidLBStatus)
    }
    
    /// 内部错误。
    public static var internalError: TCClbError {
        TCClbError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCClbError {
        TCClbError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCClbError {
        TCClbError(.invalidParameterValue)
    }
    
    /// 参数值有重复。
    public static var invalidParameterValue_Duplicate: TCClbError {
        TCClbError(.invalidParameterValue_Duplicate)
    }
    
    /// Filter参数输入错误。
    public static var invalidParameterValue_InvalidFilter: TCClbError {
        TCClbError(.invalidParameterValue_InvalidFilter)
    }
    
    /// 参数长度错误。
    public static var invalidParameterValue_Length: TCClbError {
        TCClbError(.invalidParameterValue_Length)
    }
    
    /// 参数取值范围错误。
    public static var invalidParameterValue_Range: TCClbError {
        TCClbError(.invalidParameterValue_Range)
    }
    
    /// 参数格式错误。
    public static var invalidParameter_FormatError: TCClbError {
        TCClbError(.invalidParameter_FormatError)
    }
    
    /// 查询参数错误。
    ///
    /// 按文档接口说明传参。
    public static var invalidParameter_InvalidFilter: TCClbError {
        TCClbError(.invalidParameter_InvalidFilter)
    }
    
    /// 负载均衡实例ID错误。
    public static var invalidParameter_LBIdNotFound: TCClbError {
        TCClbError(.invalidParameter_LBIdNotFound)
    }
    
    /// 监听器ID错误。
    public static var invalidParameter_ListenerIdNotFound: TCClbError {
        TCClbError(.invalidParameter_ListenerIdNotFound)
    }
    
    /// 查找不到符合条件的转发规则。
    public static var invalidParameter_LocationNotFound: TCClbError {
        TCClbError(.invalidParameter_LocationNotFound)
    }
    
    /// 监听器端口检查失败，比如端口冲突。
    public static var invalidParameter_PortCheckFailed: TCClbError {
        TCClbError(.invalidParameter_PortCheckFailed)
    }
    
    /// 监听器协议检查失败，比如相关协议不支持对应操作。
    public static var invalidParameter_ProtocolCheckFailed: TCClbError {
        TCClbError(.invalidParameter_ProtocolCheckFailed)
    }
    
    /// 地域无效。
    public static var invalidParameter_RegionNotFound: TCClbError {
        TCClbError(.invalidParameter_RegionNotFound)
    }
    
    /// 转发规则已绑定重定向关系。
    public static var invalidParameter_RewriteAlreadyExist: TCClbError {
        TCClbError(.invalidParameter_RewriteAlreadyExist)
    }
    
    /// 一些重定向规则不存在。
    public static var invalidParameter_SomeRewriteNotFound: TCClbError {
        TCClbError(.invalidParameter_SomeRewriteNotFound)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCClbError {
        TCClbError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCClbError {
        TCClbError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCClbError {
        TCClbError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCClbError {
        TCClbError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCClbError {
        TCClbError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCClbError {
        TCClbError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCClbError {
        TCClbError(.resourceNotFound)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCClbError {
        TCClbError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCClbError {
        TCClbError(.unauthorizedOperation)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCClbError {
        TCClbError(.unsupportedOperation)
    }
}

extension TCClbError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameter.self, InvalidParameterValue.self]
    }
}

extension TCClbError: Equatable {
    public static func == (lhs: TCClbError, rhs: TCClbError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCClbError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCClbError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
