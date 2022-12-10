public struct TCMsError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case internalError = "InternalError"
        case internalError_ApkServerError = "InternalError.ApkServerError"
        case internalError_ServerError = "InternalError.ServerError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_InvalidCoexistItemIdsFilters = "InvalidParameterValue.InvalidCoexistItemIdsFilters"
        case invalidParameterValue_InvalidFilter = "InvalidParameterValue.InvalidFilter"
        case invalidParameterValue_InvalidItemIds = "InvalidParameterValue.InvalidItemIds"
        case invalidParameterValue_InvalidLimit = "InvalidParameterValue.InvalidLimit"
        case invalidParameterValue_InvalidOffset = "InvalidParameterValue.InvalidOffset"
        case invalidParameterValue_InvalidOrderDirection = "InvalidParameterValue.InvalidOrderDirection"
        case invalidParameterValue_InvalidOrderField = "InvalidParameterValue.InvalidOrderField"
        case invalidParameter_MissingServiceInfo = "InvalidParameter.MissingServiceInfo"
        case invalidParameter_ParameterError = "InvalidParameter.ParameterError"
        case invalidParameter_PlanIdNotFound = "InvalidParameter.PlanIdNotFound"
        case limitExceeded = "LimitExceeded"
        case missingParameter_MissingAppInfo = "MissingParameter.MissingAppInfo"
        case missingParameter_MissingItemId = "MissingParameter.MissingItemId"
        case missingParameter_MissingItemIds = "MissingParameter.MissingItemIds"
        case resourceNotFound_ItemIdNotFound = "ResourceNotFound.ItemIdNotFound"
        case resourceNotFound_PlanIdNotFound = "ResourceNotFound.PlanIdNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_NotBind = "ResourceUnavailable.NotBind"
        case resourceUnavailable_NotFound = "ResourceUnavailable.NotFound"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_NotWhiteUser = "UnauthorizedOperation.NotWhiteUser"
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
    public static var authFailure: TCMsError {
        TCMsError(.authFailure)
    }
    
    /// 内部错误。
    public static var internalError: TCMsError {
        TCMsError(.internalError)
    }
    
    /// 请联系客服或稍后重试。
    public static var internalError_ApkServerError: TCMsError {
        TCMsError(.internalError_ApkServerError)
    }
    
    /// 服务端无法响应。
    public static var internalError_ServerError: TCMsError {
        TCMsError(.internalError_ServerError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCMsError {
        TCMsError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCMsError {
        TCMsError(.invalidParameterValue)
    }
    
    /// 不能同时指定ItemIds和Filters。
    public static var invalidParameterValue_InvalidCoexistItemIdsFilters: TCMsError {
        TCMsError(.invalidParameterValue_InvalidCoexistItemIdsFilters)
    }
    
    /// 无效的过滤器。
    public static var invalidParameterValue_InvalidFilter: TCMsError {
        TCMsError(.invalidParameterValue_InvalidFilter)
    }
    
    /// ItemIds不合法。
    public static var invalidParameterValue_InvalidItemIds: TCMsError {
        TCMsError(.invalidParameterValue_InvalidItemIds)
    }
    
    /// Limit不是有效的数字。
    public static var invalidParameterValue_InvalidLimit: TCMsError {
        TCMsError(.invalidParameterValue_InvalidLimit)
    }
    
    /// Offset不是有效的数字。
    public static var invalidParameterValue_InvalidOffset: TCMsError {
        TCMsError(.invalidParameterValue_InvalidOffset)
    }
    
    /// OrderDirection参数。
    public static var invalidParameterValue_InvalidOrderDirection: TCMsError {
        TCMsError(.invalidParameterValue_InvalidOrderDirection)
    }
    
    /// OrderField取值不合法。
    public static var invalidParameterValue_InvalidOrderField: TCMsError {
        TCMsError(.invalidParameterValue_InvalidOrderField)
    }
    
    /// ServiceInfo结构体参数缺失。
    public static var invalidParameter_MissingServiceInfo: TCMsError {
        TCMsError(.invalidParameter_MissingServiceInfo)
    }
    
    /// 参数格式错误。
    public static var invalidParameter_ParameterError: TCMsError {
        TCMsError(.invalidParameter_ParameterError)
    }
    
    /// 不能找到指定的加固策略。
    public static var invalidParameter_PlanIdNotFound: TCMsError {
        TCMsError(.invalidParameter_PlanIdNotFound)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCMsError {
        TCMsError(.limitExceeded)
    }
    
    /// AppInfo结构体参数缺失。
    public static var missingParameter_MissingAppInfo: TCMsError {
        TCMsError(.missingParameter_MissingAppInfo)
    }
    
    /// 缺少ItemId字段。
    public static var missingParameter_MissingItemId: TCMsError {
        TCMsError(.missingParameter_MissingItemId)
    }
    
    /// 缺少ItemIds字段。
    public static var missingParameter_MissingItemIds: TCMsError {
        TCMsError(.missingParameter_MissingItemIds)
    }
    
    /// ItemId不存在。
    public static var resourceNotFound_ItemIdNotFound: TCMsError {
        TCMsError(.resourceNotFound_ItemIdNotFound)
    }
    
    /// 无法找到指定的加固策略。
    public static var resourceNotFound_PlanIdNotFound: TCMsError {
        TCMsError(.resourceNotFound_PlanIdNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCMsError {
        TCMsError(.resourceUnavailable)
    }
    
    /// 资源未绑定应用包名。
    public static var resourceUnavailable_NotBind: TCMsError {
        TCMsError(.resourceUnavailable_NotBind)
    }
    
    /// 找不到该资源。
    public static var resourceUnavailable_NotFound: TCMsError {
        TCMsError(.resourceUnavailable_NotFound)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCMsError {
        TCMsError(.unauthorizedOperation)
    }
    
    /// 不是白名单用户。
    public static var unauthorizedOperation_NotWhiteUser: TCMsError {
        TCMsError(.unauthorizedOperation_NotWhiteUser)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCMsError {
        TCMsError(.unsupportedOperation)
    }
}

extension TCMsError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self, InvalidParameter.self, InvalidParameterValue.self, MissingParameter.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self]
    }
}

extension TCMsError: Equatable {
    public static func == (lhs: TCMsError, rhs: TCMsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCMsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCMsError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
