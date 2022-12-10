public struct TCYunsouError: TCErrorType {
    enum Code: String {
        case failedOperation_AccountInfo = "FailedOperation.AccountInfo"
        case failedOperation_AppInfo = "FailedOperation.AppInfo"
        case failedOperation_Search = "FailedOperation.Search"
        case failedOperation_UploadDataApiFail = "FailedOperation.UploadDataApiFail"
        case invalidParameter = "InvalidParameter"
        case invalidParameter_DataContent = "InvalidParameter.DataContent"
        case limitExceeded_Search = "LimitExceeded.Search"
        case unauthorizedOperation = "UnauthorizedOperation"
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
    
    /// 查询用户信息失败。
    public static var failedOperation_AccountInfo: TCYunsouError {
        TCYunsouError(.failedOperation_AccountInfo)
    }
    
    /// 查询应用信息失败。
    public static var failedOperation_AppInfo: TCYunsouError {
        TCYunsouError(.failedOperation_AppInfo)
    }
    
    /// 搜索接口异常。
    public static var failedOperation_Search: TCYunsouError {
        TCYunsouError(.failedOperation_Search)
    }
    
    /// 数据上传异常。
    public static var failedOperation_UploadDataApiFail: TCYunsouError {
        TCYunsouError(.failedOperation_UploadDataApiFail)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCYunsouError {
        TCYunsouError(.invalidParameter)
    }
    
    /// 数据文件无效。
    public static var invalidParameter_DataContent: TCYunsouError {
        TCYunsouError(.invalidParameter_DataContent)
    }
    
    /// 请求的次数超过了频率限制。
    public static var limitExceeded_Search: TCYunsouError {
        TCYunsouError(.limitExceeded_Search)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCYunsouError {
        TCYunsouError(.unauthorizedOperation)
    }
}

extension TCYunsouError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameter.self, LimitExceeded.self]
    }
}

extension TCYunsouError: Equatable {
    public static func == (lhs: TCYunsouError, rhs: TCYunsouError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCYunsouError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCYunsouError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
