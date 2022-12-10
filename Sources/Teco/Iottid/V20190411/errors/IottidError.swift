public struct TCIottidError: TCErrorType {
    enum Code: String {
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AppId = "InvalidParameterValue.AppId"
        case invalidParameterValue_Count = "InvalidParameterValue.Count"
        case invalidParameterValue_Data = "InvalidParameterValue.Data"
        case invalidParameterValue_EmptyString = "InvalidParameterValue.EmptyString"
        case invalidParameterValue_Limit = "InvalidParameterValue.Limit"
        case invalidParameterValue_OrderId = "InvalidParameterValue.OrderId"
        case invalidParameterValue_OverLimit = "InvalidParameterValue.OverLimit"
        case invalidParameterValue_PermissionDenied = "InvalidParameterValue.PermissionDenied"
        case invalidParameterValue_Quantity = "InvalidParameterValue.Quantity"
        case invalidParameterValue_Tid = "InvalidParameterValue.Tid"
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
    
    /// 内部错误。
    public static var internalError: TCIottidError {
        TCIottidError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCIottidError {
        TCIottidError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCIottidError {
        TCIottidError(.invalidParameterValue)
    }
    
    /// AppId错误。
    public static var invalidParameterValue_AppId: TCIottidError {
        TCIottidError(.invalidParameterValue_AppId)
    }
    
    /// 数量错误。
    public static var invalidParameterValue_Count: TCIottidError {
        TCIottidError(.invalidParameterValue_Count)
    }
    
    /// 验证数据错误。
    public static var invalidParameterValue_Data: TCIottidError {
        TCIottidError(.invalidParameterValue_Data)
    }
    
    /// 输入字符串为空。
    public static var invalidParameterValue_EmptyString: TCIottidError {
        TCIottidError(.invalidParameterValue_EmptyString)
    }
    
    /// 超过数量限制。
    public static var invalidParameterValue_Limit: TCIottidError {
        TCIottidError(.invalidParameterValue_Limit)
    }
    
    /// 订单编号错误。
    public static var invalidParameterValue_OrderId: TCIottidError {
        TCIottidError(.invalidParameterValue_OrderId)
    }
    
    /// 超过数量限制。
    public static var invalidParameterValue_OverLimit: TCIottidError {
        TCIottidError(.invalidParameterValue_OverLimit)
    }
    
    /// 无权限操作。
    public static var invalidParameterValue_PermissionDenied: TCIottidError {
        TCIottidError(.invalidParameterValue_PermissionDenied)
    }
    
    /// 数量错误。
    public static var invalidParameterValue_Quantity: TCIottidError {
        TCIottidError(.invalidParameterValue_Quantity)
    }
    
    /// TID编码错误。
    public static var invalidParameterValue_Tid: TCIottidError {
        TCIottidError(.invalidParameterValue_Tid)
    }
}

extension TCIottidError {
    public static var domains: [TCErrorType.Type] {
        return [InvalidParameterValue.self]
    }
}

extension TCIottidError: Equatable {
    public static func == (lhs: TCIottidError, rhs: TCIottidError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIottidError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}