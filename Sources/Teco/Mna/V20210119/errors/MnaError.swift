public struct TCMnaError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case internalError = "InternalError"
        case internalError_ControlRequestError = "InternalError.ControlRequestError"
        case internalError_DuplicateDataKey = "InternalError.DuplicateDataKey"
        case internalError_DuplicateDeviceName = "InternalError.DuplicateDeviceName"
        case internalError_FileIOError = "InternalError.FileIOError"
        case internalError_NetworkInfoRequestError = "InternalError.NetworkInfoRequestError"
        case internalError_UndefinedEncryptedKey = "InternalError.UndefinedEncryptedKey"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_VendorNotFound = "InvalidParameterValue.VendorNotFound"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case operationDenied_AccelerationNotSuggest = "OperationDenied.AccelerationNotSuggest"
        case operationDenied_CTCCTokenExpired = "OperationDenied.CTCCTokenExpired"
        case operationDenied_CreateQosExceedLimit = "OperationDenied.CreateQosExceedLimit"
        case operationDenied_RequestQosTimeout = "OperationDenied.RequestQosTimeout"
        case operationDenied_UserNonAccelerated = "OperationDenied.UserNonAccelerated"
        case operationDenied_UserOutOfCoverage = "OperationDenied.UserOutOfCoverage"
        case operationDenied_VendorReturnError = "OperationDenied.VendorReturnError"
        case operationDenied_VendorServerError = "OperationDenied.VendorServerError"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceUnavailable = "ResourceUnavailable"
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
    public static var authFailure: TCMnaError {
        TCMnaError(.authFailure)
    }
    
    /// 内部错误。
    public static var internalError: TCMnaError {
        TCMnaError(.internalError)
    }
    
    public static var internalError_ControlRequestError: TCMnaError {
        TCMnaError(.internalError_ControlRequestError)
    }
    
    public static var internalError_DuplicateDataKey: TCMnaError {
        TCMnaError(.internalError_DuplicateDataKey)
    }
    
    public static var internalError_DuplicateDeviceName: TCMnaError {
        TCMnaError(.internalError_DuplicateDeviceName)
    }
    
    public static var internalError_FileIOError: TCMnaError {
        TCMnaError(.internalError_FileIOError)
    }
    
    public static var internalError_NetworkInfoRequestError: TCMnaError {
        TCMnaError(.internalError_NetworkInfoRequestError)
    }
    
    public static var internalError_UndefinedEncryptedKey: TCMnaError {
        TCMnaError(.internalError_UndefinedEncryptedKey)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCMnaError {
        TCMnaError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCMnaError {
        TCMnaError(.invalidParameterValue)
    }
    
    /// 无法获取到可加速的运营商信息
    public static var invalidParameterValue_VendorNotFound: TCMnaError {
        TCMnaError(.invalidParameterValue_VendorNotFound)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCMnaError {
        TCMnaError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCMnaError {
        TCMnaError(.operationDenied)
    }
    
    /// 不建议加速。
    public static var operationDenied_AccelerationNotSuggest: TCMnaError {
        TCMnaError(.operationDenied_AccelerationNotSuggest)
    }
    
    /// 中国电信加速token过期。
    public static var operationDenied_CTCCTokenExpired: TCMnaError {
        TCMnaError(.operationDenied_CTCCTokenExpired)
    }
    
    /// 相同加速间隔时间过短。
    public static var operationDenied_CreateQosExceedLimit: TCMnaError {
        TCMnaError(.operationDenied_CreateQosExceedLimit)
    }
    
    /// 请求运营商加速超时。
    public static var operationDenied_RequestQosTimeout: TCMnaError {
        TCMnaError(.operationDenied_RequestQosTimeout)
    }
    
    /// 该用户加速已取消，不处于加速状态。
    public static var operationDenied_UserNonAccelerated: TCMnaError {
        TCMnaError(.operationDenied_UserNonAccelerated)
    }
    
    /// 该用户不在运营商网络可加速范围内
    public static var operationDenied_UserOutOfCoverage: TCMnaError {
        TCMnaError(.operationDenied_UserOutOfCoverage)
    }
    
    /// 运营商返回结果错误。
    public static var operationDenied_VendorReturnError: TCMnaError {
        TCMnaError(.operationDenied_VendorReturnError)
    }
    
    /// 运营商服务器临时错误。
    public static var operationDenied_VendorServerError: TCMnaError {
        TCMnaError(.operationDenied_VendorServerError)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCMnaError {
        TCMnaError(.requestLimitExceeded)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCMnaError {
        TCMnaError(.resourceUnavailable)
    }
}

extension TCMnaError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self, InvalidParameterValue.self, OperationDenied.self]
    }
}

extension TCMnaError: Equatable {
    public static func == (lhs: TCMnaError, rhs: TCMnaError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCMnaError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}