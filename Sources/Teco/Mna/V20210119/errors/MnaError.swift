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
    ///
    /// - 若错误码返回提示为无法确定运营商 ，请检查SrcPublicIpv4 是否填写正确或在接口中传入正确的运营商信息(DeviceInfo.Vendor)
    /// - 若错误码返回提示为该运营商无法支持加速，说明目前不支持该运营商加速服务
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
    ///
    /// 网络状况较良好，不建议发起加速。
    public static var operationDenied_AccelerationNotSuggest: TCMnaError {
        TCMnaError(.operationDenied_AccelerationNotSuggest)
    }
    
    /// 中国电信加速token过期。
    ///
    /// 重新申请中国电信加速token。
    public static var operationDenied_CTCCTokenExpired: TCMnaError {
        TCMnaError(.operationDenied_CTCCTokenExpired)
    }
    
    /// 相同加速间隔时间过短。
    ///
    /// 加速成功并且未取消，加速结束前5秒不能再发起相同源IP和目标IP的加速
    public static var operationDenied_CreateQosExceedLimit: TCMnaError {
        TCMnaError(.operationDenied_CreateQosExceedLimit)
    }
    
    /// 请求运营商加速超时。
    ///
    /// 运营商返回超时，请稍后重试。
    public static var operationDenied_RequestQosTimeout: TCMnaError {
        TCMnaError(.operationDenied_RequestQosTimeout)
    }
    
    /// 该用户加速已取消，不处于加速状态。
    ///
    /// 该用户已不在加速状态，不用再重复取消加速
    public static var operationDenied_UserNonAccelerated: TCMnaError {
        TCMnaError(.operationDenied_UserNonAccelerated)
    }
    
    /// 该用户不在运营商网络可加速范围内
    ///
    /// 请检查用户IP地址信息是否填写正确，填写的是蜂窝网络下的IP，若正确可能是运营商目前不支持该用户手机卡类型的加速
    public static var operationDenied_UserOutOfCoverage: TCMnaError {
        TCMnaError(.operationDenied_UserOutOfCoverage)
    }
    
    /// 运营商返回结果错误。
    ///
    /// 该错误可能由于当前用户网络下运营商无法保证该用户加速导致。
    public static var operationDenied_VendorReturnError: TCMnaError {
        TCMnaError(.operationDenied_VendorReturnError)
    }
    
    /// 运营商服务器临时错误。
    ///
    /// 运营商服务器临时错误，请稍后重试。
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

extension TCMnaError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
