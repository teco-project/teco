public struct TCDbdcError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_ModifyResourceInfoError = "FailedOperation.ModifyResourceInfoError"
        case failedOperation_OssAccessError = "FailedOperation.OssAccessError"
        case failedOperation_QueryResourceError = "FailedOperation.QueryResourceError"
        case failedOperation_QuerySpecInfoError = "FailedOperation.QuerySpecInfoError"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_InvalidParameterValueError = "InvalidParameterValue.InvalidParameterValueError"
        case invalidParameterValue_ResourceParameterError = "InvalidParameterValue.ResourceParameterError"
        case resourceNotFound_FetchResourceError = "ResourceNotFound.FetchResourceError"
        case resourceNotFound_FetchResourceListError = "ResourceNotFound.FetchResourceListError"
        case resourceUnavailable_ResourceStatusAbnormalError = "ResourceUnavailable.ResourceStatusAbnormalError"
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
    public static var authFailure: TCDbdcError {
        TCDbdcError(.authFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCDbdcError {
        TCDbdcError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCDbdcError {
        TCDbdcError(.failedOperation)
    }
    
    /// 修改资源信息失败。
    public static var failedOperation_ModifyResourceInfoError: TCDbdcError {
        TCDbdcError(.failedOperation_ModifyResourceInfoError)
    }
    
    /// 访问管控服务失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_OssAccessError: TCDbdcError {
        TCDbdcError(.failedOperation_OssAccessError)
    }
    
    /// 查询资源信息失败。
    public static var failedOperation_QueryResourceError: TCDbdcError {
        TCDbdcError(.failedOperation_QueryResourceError)
    }
    
    /// 获取独享集群规格信息失败。
    public static var failedOperation_QuerySpecInfoError: TCDbdcError {
        TCDbdcError(.failedOperation_QuerySpecInfoError)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCDbdcError {
        TCDbdcError(.invalidParameterValue)
    }
    
    /// 参数值传入错误。
    ///
    /// 参数值传入错误，请检查相关参数。
    public static var invalidParameterValue_InvalidParameterValueError: TCDbdcError {
        TCDbdcError(.invalidParameterValue_InvalidParameterValueError)
    }
    
    /// 集群的参数非法。
    public static var invalidParameterValue_ResourceParameterError: TCDbdcError {
        TCDbdcError(.invalidParameterValue_ResourceParameterError)
    }
    
    /// 获取资源失败，AppId：{{1}}，ResourceId：{{2}}。
    public static var resourceNotFound_FetchResourceError: TCDbdcError {
        TCDbdcError(.resourceNotFound_FetchResourceError)
    }
    
    /// 获取资源列表失败，ErrMsg：{{1}}。
    public static var resourceNotFound_FetchResourceListError: TCDbdcError {
        TCDbdcError(.resourceNotFound_FetchResourceListError)
    }
    
    /// 资源状态异常。
    public static var resourceUnavailable_ResourceStatusAbnormalError: TCDbdcError {
        TCDbdcError(.resourceUnavailable_ResourceStatusAbnormalError)
    }
}

extension TCDbdcError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameterValue.self, ResourceNotFound.self, ResourceUnavailable.self]
    }
}

extension TCDbdcError: Equatable {
    public static func == (lhs: TCDbdcError, rhs: TCDbdcError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCDbdcError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCDbdcError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
