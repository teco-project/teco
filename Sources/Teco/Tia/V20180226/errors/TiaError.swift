public struct TCTiaError: TCErrorType {
    enum Code: String {
        case failedOperation_AlreadyExists = "FailedOperation.AlreadyExists"
        case failedOperation_TimeOut = "FailedOperation.TimeOut"
        case internalError = "InternalError"
        case internalError_System = "InternalError.System"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_Code = "InvalidParameterValue.Code"
        case invalidParameterValue_Description = "InvalidParameterValue.Description"
        case invalidParameterValue_Environment = "InvalidParameterValue.Environment"
        case invalidParameterValue_FunctionName = "InvalidParameterValue.FunctionName"
        case invalidParameterValue_Handler = "InvalidParameterValue.Handler"
        case invalidParameterValue_Order = "InvalidParameterValue.Order"
        case invalidParameterValue_Orderby = "InvalidParameterValue.Orderby"
        case invalidParameterValue_Runtime = "InvalidParameterValue.Runtime"
        case limitExceeded_Function = "LimitExceeded.Function"
        case limitExceeded_Memory = "LimitExceeded.Memory"
        case limitExceeded_Timeout = "LimitExceeded.Timeout"
        case missingParameter_Code = "MissingParameter.Code"
        case resourceInUse_FunctionName = "ResourceInUse.FunctionName"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_FunctionName = "ResourceNotFound.FunctionName"
        case resourceUnavailable = "ResourceUnavailable"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_CAM = "UnauthorizedOperation.CAM"
        case unauthorizedOperation_Region = "UnauthorizedOperation.Region"
        case unsupportedOperation_UnsupportedVersion = "UnsupportedOperation.UnsupportedVersion"
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
    
    /// 资源已存在。
    public static var failedOperation_AlreadyExists: TCTiaError {
        TCTiaError(.failedOperation_AlreadyExists)
    }
    
    /// 操作超时。
    public static var failedOperation_TimeOut: TCTiaError {
        TCTiaError(.failedOperation_TimeOut)
    }
    
    /// 内部错误。
    public static var internalError: TCTiaError {
        TCTiaError(.internalError)
    }
    
    /// 内部系统错误。
    public static var internalError_System: TCTiaError {
        TCTiaError(.internalError_System)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTiaError {
        TCTiaError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCTiaError {
        TCTiaError(.invalidParameterValue)
    }
    
    /// Code传入错误。
    public static var invalidParameterValue_Code: TCTiaError {
        TCTiaError(.invalidParameterValue_Code)
    }
    
    /// Description传入错误。
    public static var invalidParameterValue_Description: TCTiaError {
        TCTiaError(.invalidParameterValue_Description)
    }
    
    /// Environment传入错误。
    public static var invalidParameterValue_Environment: TCTiaError {
        TCTiaError(.invalidParameterValue_Environment)
    }
    
    /// 函数不存在。
    public static var invalidParameterValue_FunctionName: TCTiaError {
        TCTiaError(.invalidParameterValue_FunctionName)
    }
    
    /// Handler传入错误。
    public static var invalidParameterValue_Handler: TCTiaError {
        TCTiaError(.invalidParameterValue_Handler)
    }
    
    /// Order传入错误。
    public static var invalidParameterValue_Order: TCTiaError {
        TCTiaError(.invalidParameterValue_Order)
    }
    
    /// Orderby传入错误。
    public static var invalidParameterValue_Orderby: TCTiaError {
        TCTiaError(.invalidParameterValue_Orderby)
    }
    
    /// Runtime传入错误。
    public static var invalidParameterValue_Runtime: TCTiaError {
        TCTiaError(.invalidParameterValue_Runtime)
    }
    
    /// 函数数量超出最大限制。
    public static var limitExceeded_Function: TCTiaError {
        TCTiaError(.limitExceeded_Function)
    }
    
    /// 内存超出最大限制。
    public static var limitExceeded_Memory: TCTiaError {
        TCTiaError(.limitExceeded_Memory)
    }
    
    /// Timeout超出最大限制。
    public static var limitExceeded_Timeout: TCTiaError {
        TCTiaError(.limitExceeded_Timeout)
    }
    
    /// Code没有传入。
    public static var missingParameter_Code: TCTiaError {
        TCTiaError(.missingParameter_Code)
    }
    
    /// FunctionName已存在。
    public static var resourceInUse_FunctionName: TCTiaError {
        TCTiaError(.resourceInUse_FunctionName)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCTiaError {
        TCTiaError(.resourceNotFound)
    }
    
    /// 函数不存在。
    public static var resourceNotFound_FunctionName: TCTiaError {
        TCTiaError(.resourceNotFound_FunctionName)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCTiaError {
        TCTiaError(.resourceUnavailable)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCTiaError {
        TCTiaError(.unauthorizedOperation)
    }
    
    /// CAM鉴权失败。
    public static var unauthorizedOperation_CAM: TCTiaError {
        TCTiaError(.unauthorizedOperation_CAM)
    }
    
    /// Region错误。
    public static var unauthorizedOperation_Region: TCTiaError {
        TCTiaError(.unauthorizedOperation_Region)
    }
    
    /// 集群版本过低。
    public static var unsupportedOperation_UnsupportedVersion: TCTiaError {
        TCTiaError(.unsupportedOperation_UnsupportedVersion)
    }
}

extension TCTiaError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameterValue.self, LimitExceeded.self, MissingParameter.self, ResourceInUse.self, ResourceNotFound.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCTiaError: Equatable {
    public static func == (lhs: TCTiaError, rhs: TCTiaError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTiaError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}