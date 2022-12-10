public struct TCCccError: TCErrorType {
    enum Code: String {
        case failedOperation_CallOutFailed = "FailedOperation.CallOutFailed"
        case failedOperation_CalleeIsLimited = "FailedOperation.CalleeIsLimited"
        case failedOperation_CallerOverFrequency = "FailedOperation.CallerOverFrequency"
        case failedOperation_CurStateNotAllowModify = "FailedOperation.CurStateNotAllowModify"
        case failedOperation_DuplicatedAccount = "FailedOperation.DuplicatedAccount"
        case failedOperation_NoCallOutNumber = "FailedOperation.NoCallOutNumber"
        case failedOperation_PermissionDenied = "FailedOperation.PermissionDenied"
        case failedOperation_SeatStatusBusy = "FailedOperation.SeatStatusBusy"
        case internalError = "InternalError"
        case internalError_DBError = "InternalError.DBError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AccountNotExist = "InvalidParameterValue.AccountNotExist"
        case invalidParameterValue_InstanceNotExist = "InvalidParameterValue.InstanceNotExist"
        case invalidParameterValue_PhoneNumIsBoundOtherAccount = "InvalidParameterValue.PhoneNumIsBoundOtherAccount"
        case invalidParameterValue_RecordNotExist = "InvalidParameterValue.RecordNotExist"
        case invalidParameterValue_SkillGroupError = "InvalidParameterValue.SkillGroupError"
        case invalidParameterValue_SkillGroupExist = "InvalidParameterValue.SkillGroupExist"
        case invalidParameter_InstanceNotExist = "InvalidParameter.InstanceNotExist"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_OutOfCountLimit = "LimitExceeded.OutOfCountLimit"
        case operationDenied_NotInWhiteList = "OperationDenied.NotInWhiteList"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
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
    
    /// 外呼失败。
    public static var failedOperation_CallOutFailed: TCCccError {
        TCCccError(.failedOperation_CallOutFailed)
    }
    
    public static var failedOperation_CalleeIsLimited: TCCccError {
        TCCccError(.failedOperation_CalleeIsLimited)
    }
    
    public static var failedOperation_CallerOverFrequency: TCCccError {
        TCCccError(.failedOperation_CallerOverFrequency)
    }
    
    public static var failedOperation_CurStateNotAllowModify: TCCccError {
        TCCccError(.failedOperation_CurStateNotAllowModify)
    }
    
    /// 重复账号。
    public static var failedOperation_DuplicatedAccount: TCCccError {
        TCCccError(.failedOperation_DuplicatedAccount)
    }
    
    public static var failedOperation_NoCallOutNumber: TCCccError {
        TCCccError(.failedOperation_NoCallOutNumber)
    }
    
    /// 权限不足。
    public static var failedOperation_PermissionDenied: TCCccError {
        TCCccError(.failedOperation_PermissionDenied)
    }
    
    public static var failedOperation_SeatStatusBusy: TCCccError {
        TCCccError(.failedOperation_SeatStatusBusy)
    }
    
    /// 内部错误。
    public static var internalError: TCCccError {
        TCCccError(.internalError)
    }
    
    /// 内部数据库访问失败。
    public static var internalError_DBError: TCCccError {
        TCCccError(.internalError_DBError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCCccError {
        TCCccError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCCccError {
        TCCccError(.invalidParameterValue)
    }
    
    /// 账号不存在。
    public static var invalidParameterValue_AccountNotExist: TCCccError {
        TCCccError(.invalidParameterValue_AccountNotExist)
    }
    
    /// 实例不存在。
    public static var invalidParameterValue_InstanceNotExist: TCCccError {
        TCCccError(.invalidParameterValue_InstanceNotExist)
    }
    
    public static var invalidParameterValue_PhoneNumIsBoundOtherAccount: TCCccError {
        TCCccError(.invalidParameterValue_PhoneNumIsBoundOtherAccount)
    }
    
    /// 查询记录不存在。
    public static var invalidParameterValue_RecordNotExist: TCCccError {
        TCCccError(.invalidParameterValue_RecordNotExist)
    }
    
    public static var invalidParameterValue_SkillGroupError: TCCccError {
        TCCccError(.invalidParameterValue_SkillGroupError)
    }
    
    public static var invalidParameterValue_SkillGroupExist: TCCccError {
        TCCccError(.invalidParameterValue_SkillGroupExist)
    }
    
    /// 实例不存在。
    public static var invalidParameter_InstanceNotExist: TCCccError {
        TCCccError(.invalidParameter_InstanceNotExist)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCCccError {
        TCCccError(.limitExceeded)
    }
    
    /// 超出数量限制。
    public static var limitExceeded_OutOfCountLimit: TCCccError {
        TCCccError(.limitExceeded_OutOfCountLimit)
    }
    
    /// 不在白名单中。
    public static var operationDenied_NotInWhiteList: TCCccError {
        TCCccError(.operationDenied_NotInWhiteList)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCCccError {
        TCCccError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCCccError {
        TCCccError(.unsupportedOperation)
    }
}

extension TCCccError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, OperationDenied.self]
    }
}

extension TCCccError: Equatable {
    public static func == (lhs: TCCccError, rhs: TCCccError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCccError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}