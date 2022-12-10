public struct TCTseError: TCErrorType {
    enum Code: String {
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case failedOperation = "FailedOperation"
        case internalError_CreateError = "InternalError.CreateError"
        case internalError_GetCredential = "InternalError.GetCredential"
        case internalError_GetRoleError = "InternalError.GetRoleError"
        case internalError_IOError = "InternalError.IOError"
        case internalError_InternalError = "InternalError.InternalError"
        case internalError_OperationFailed = "InternalError.OperationFailed"
        case internalError_QueryError = "InternalError.QueryError"
        case internalError_TKEFailure = "InternalError.TKEFailure"
        case internalError_TagFailure = "InternalError.TagFailure"
        case internalError_UnknownError = "InternalError.UnknownError"
        case internalError_UpdateError = "InternalError.UpdateError"
        case internalError_VPCFailure = "InternalError.VPCFailure"
        case invalidParameterValue_Action = "InvalidParameterValue.Action"
        case invalidParameterValue_BadRequestFormat = "InvalidParameterValue.BadRequestFormat"
        case invalidParameterValue_CreateError = "InvalidParameterValue.CreateError"
        case invalidParameterValue_InvalidParameterValue = "InvalidParameterValue.InvalidParameterValue"
        case invalidParameterValue_OperationFailed = "InvalidParameterValue.OperationFailed"
        case invalidParameterValue_QueryError = "InvalidParameterValue.QueryError"
        case invalidParameterValue_UpdateError = "InvalidParameterValue.UpdateError"
        case limitExceeded = "LimitExceeded"
        case missingParameter_CreateError = "MissingParameter.CreateError"
        case missingParameter_UpdateError = "MissingParameter.UpdateError"
        case operationDenied = "OperationDenied"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_InstanceNotFound = "ResourceNotFound.InstanceNotFound"
        case resourceNotFound_ResourceNotFound = "ResourceNotFound.ResourceNotFound"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_CamNoAuth = "UnauthorizedOperation.CamNoAuth"
        case unauthorizedOperation_CamPassRoleNotExist = "UnauthorizedOperation.CamPassRoleNotExist"
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
    
    /// 未授权操作错误。
    public static var authFailure_UnauthorizedOperation: TCTseError {
        TCTseError(.authFailure_UnauthorizedOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCTseError {
        TCTseError(.failedOperation)
    }
    
    /// 创建内部错误。
    public static var internalError_CreateError: TCTseError {
        TCTseError(.internalError_CreateError)
    }
    
    /// 获取凭证失败。
    public static var internalError_GetCredential: TCTseError {
        TCTseError(.internalError_GetCredential)
    }
    
    /// 角色获取错误。
    public static var internalError_GetRoleError: TCTseError {
        TCTseError(.internalError_GetRoleError)
    }
    
    /// 内部服务调用异常。
    public static var internalError_IOError: TCTseError {
        TCTseError(.internalError_IOError)
    }
    
    /// 服务内部错误。
    public static var internalError_InternalError: TCTseError {
        TCTseError(.internalError_InternalError)
    }
    
    /// 操作失败。
    public static var internalError_OperationFailed: TCTseError {
        TCTseError(.internalError_OperationFailed)
    }
    
    /// 查询内部错误。
    public static var internalError_QueryError: TCTseError {
        TCTseError(.internalError_QueryError)
    }
    
    /// TKE相关操作失败。
    public static var internalError_TKEFailure: TCTseError {
        TCTseError(.internalError_TKEFailure)
    }
    
    /// 标签操作失败。
    public static var internalError_TagFailure: TCTseError {
        TCTseError(.internalError_TagFailure)
    }
    
    /// 未知错误。
    public static var internalError_UnknownError: TCTseError {
        TCTseError(.internalError_UnknownError)
    }
    
    /// 更新内部错误。
    public static var internalError_UpdateError: TCTseError {
        TCTseError(.internalError_UpdateError)
    }
    
    /// 访问VPC内部错误。
    public static var internalError_VPCFailure: TCTseError {
        TCTseError(.internalError_VPCFailure)
    }
    
    public static var invalidParameterValue_Action: TCTseError {
        TCTseError(.invalidParameterValue_Action)
    }
    
    /// 请求格式不正确。
    public static var invalidParameterValue_BadRequestFormat: TCTseError {
        TCTseError(.invalidParameterValue_BadRequestFormat)
    }
    
    /// 无效请求参数导致创建失败。
    public static var invalidParameterValue_CreateError: TCTseError {
        TCTseError(.invalidParameterValue_CreateError)
    }
    
    /// 无效的参数值。
    public static var invalidParameterValue_InvalidParameterValue: TCTseError {
        TCTseError(.invalidParameterValue_InvalidParameterValue)
    }
    
    /// 无效请求参数导致操作失败。
    public static var invalidParameterValue_OperationFailed: TCTseError {
        TCTseError(.invalidParameterValue_OperationFailed)
    }
    
    /// 无效请求参数，查询失败。
    public static var invalidParameterValue_QueryError: TCTseError {
        TCTseError(.invalidParameterValue_QueryError)
    }
    
    /// 无效请求参数导致更新失败。
    public static var invalidParameterValue_UpdateError: TCTseError {
        TCTseError(.invalidParameterValue_UpdateError)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCTseError {
        TCTseError(.limitExceeded)
    }
    
    /// 缺失参数导致创建失败。
    public static var missingParameter_CreateError: TCTseError {
        TCTseError(.missingParameter_CreateError)
    }
    
    /// 缺失参数导致更新失败。
    public static var missingParameter_UpdateError: TCTseError {
        TCTseError(.missingParameter_UpdateError)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCTseError {
        TCTseError(.operationDenied)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCTseError {
        TCTseError(.resourceNotFound)
    }
    
    /// 实例不存在。
    public static var resourceNotFound_InstanceNotFound: TCTseError {
        TCTseError(.resourceNotFound_InstanceNotFound)
    }
    
    /// 资源不存在。
    public static var resourceNotFound_ResourceNotFound: TCTseError {
        TCTseError(.resourceNotFound_ResourceNotFound)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCTseError {
        TCTseError(.unauthorizedOperation)
    }
    
    /// cam认证失败。
    public static var unauthorizedOperation_CamNoAuth: TCTseError {
        TCTseError(.unauthorizedOperation_CamNoAuth)
    }
    
    /// 子账号缺少passRole权限。
    public static var unauthorizedOperation_CamPassRoleNotExist: TCTseError {
        TCTseError(.unauthorizedOperation_CamPassRoleNotExist)
    }
}

extension TCTseError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, InternalError.self, InvalidParameterValue.self, MissingParameter.self, ResourceNotFound.self, UnauthorizedOperation.self]
    }
}

extension TCTseError: Equatable {
    public static func == (lhs: TCTseError, rhs: TCTseError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTseError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}