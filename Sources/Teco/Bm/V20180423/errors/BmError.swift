public struct TCBmError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_ExistRepairTask = "FailedOperation.ExistRepairTask"
        case failedOperation_TscAgentOffline = "FailedOperation.TscAgentOffline"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue_InvalidParameter = "InvalidParameterValue.InvalidParameter"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_UserCmdCount = "LimitExceeded.UserCmdCount"
        case resourceInUse_FlowBusy = "ResourceInUse.FlowBusy"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceInsufficient_DeviceInsufficient = "ResourceInsufficient.DeviceInsufficient"
        case resourceUnavailable = "ResourceUnavailable"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_FundInsufficient = "UnsupportedOperation.FundInsufficient"
        case unsupportedOperation_InvalidOperation = "UnsupportedOperation.InvalidOperation"
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
    
    /// 操作失败。
    public static var failedOperation: TCBmError {
        TCBmError(.failedOperation)
    }
    
    /// 存在未结束故障单，操作失败。
    ///
    /// 设备仍处于故障状态中，请前往 维护平台-维修任务 进行故障处理，处理完毕稍后再试。
    public static var failedOperation_ExistRepairTask: TCBmError {
        TCBmError(.failedOperation_ExistRepairTask)
    }
    
    /// Tsc Agent不在线。
    public static var failedOperation_TscAgentOffline: TCBmError {
        TCBmError(.failedOperation_TscAgentOffline)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCBmError {
        TCBmError(.invalidParameter)
    }
    
    /// 参数值错误。
    public static var invalidParameterValue_InvalidParameter: TCBmError {
        TCBmError(.invalidParameterValue_InvalidParameter)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCBmError {
        TCBmError(.limitExceeded)
    }
    
    /// 脚本数量超过上限。
    public static var limitExceeded_UserCmdCount: TCBmError {
        TCBmError(.limitExceeded_UserCmdCount)
    }
    
    /// 流程操作繁忙，请稍后重试。
    public static var resourceInUse_FlowBusy: TCBmError {
        TCBmError(.resourceInUse_FlowBusy)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCBmError {
        TCBmError(.resourceInsufficient)
    }
    
    /// 设备不足。
    public static var resourceInsufficient_DeviceInsufficient: TCBmError {
        TCBmError(.resourceInsufficient_DeviceInsufficient)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCBmError {
        TCBmError(.resourceUnavailable)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCBmError {
        TCBmError(.unauthorizedOperation)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCBmError {
        TCBmError(.unsupportedOperation)
    }
    
    /// 余额不足。
    public static var unsupportedOperation_FundInsufficient: TCBmError {
        TCBmError(.unsupportedOperation_FundInsufficient)
    }
    
    /// 设备不支持此操作。
    public static var unsupportedOperation_InvalidOperation: TCBmError {
        TCBmError(.unsupportedOperation_InvalidOperation)
    }
}

extension TCBmError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameterValue.self, LimitExceeded.self, ResourceInUse.self, ResourceInsufficient.self, UnsupportedOperation.self]
    }
}

extension TCBmError: Equatable {
    public static func == (lhs: TCBmError, rhs: TCBmError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBmError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCBmError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
