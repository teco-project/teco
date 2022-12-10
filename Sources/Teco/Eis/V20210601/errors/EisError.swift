public struct TCEisError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_AuthenticationFailed = "FailedOperation.AuthenticationFailed"
        case failedOperation_InnerLogicTimeOut = "FailedOperation.InnerLogicTimeOut"
        case failedOperation_MetaCompilerError = "FailedOperation.MetaCompilerError"
        case failedOperation_UnSupportedOperationType = "FailedOperation.UnSupportedOperationType"
        case internalError_CheckRuntimeFailed = "InternalError.CheckRuntimeFailed"
        case internalError_CountRuntimeInstancesFailed = "InternalError.CountRuntimeInstancesFailed"
        case internalError_DatabaseError = "InternalError.DatabaseError"
        case internalError_ListRuntimeInstancesFailed = "InternalError.ListRuntimeInstancesFailed"
        case internalError_ListRuntimesFailed = "InternalError.ListRuntimesFailed"
        case internalError_MetaCompilerError = "InternalError.MetaCompilerError"
        case internalError_RpcPilotServerError = "InternalError.RpcPilotServerError"
        case invalidParameterValue_InvalidRuntimeMetricSearchCondition = "InvalidParameterValue.InvalidRuntimeMetricSearchCondition"
        case invalidParameterValue_NotSupportedActionForPublicRuntime = "InvalidParameterValue.NotSupportedActionForPublicRuntime"
        case invalidParameterValue_PilotZoneNotSupported = "InvalidParameterValue.PilotZoneNotSupported"
        case invalidParameterValue_RuntimeAlreadyDeleted = "InvalidParameterValue.RuntimeAlreadyDeleted"
        case invalidParameterValue_RuntimeIdNotExist = "InvalidParameterValue.RuntimeIdNotExist"
        case invalidParameterValue_RuntimeMetricRateNotSupport = "InvalidParameterValue.RuntimeMetricRateNotSupport"
        case invalidParameterValue_RuntimeNamespaceInvalid = "InvalidParameterValue.RuntimeNamespaceInvalid"
        case invalidParameterValue_RuntimeZoneNotExisted = "InvalidParameterValue.RuntimeZoneNotExisted"
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
    
    /// 操作失败。
    public static var failedOperation: TCEisError {
        TCEisError(.failedOperation)
    }
    
    /// 鉴权失败。
    public static var failedOperation_AuthenticationFailed: TCEisError {
        TCEisError(.failedOperation_AuthenticationFailed)
    }
    
    /// 接口处理超时。
    public static var failedOperation_InnerLogicTimeOut: TCEisError {
        TCEisError(.failedOperation_InnerLogicTimeOut)
    }
    
    /// 依赖服务错误。
    public static var failedOperation_MetaCompilerError: TCEisError {
        TCEisError(.failedOperation_MetaCompilerError)
    }
    
    /// 不支持的操作类型。
    public static var failedOperation_UnSupportedOperationType: TCEisError {
        TCEisError(.failedOperation_UnSupportedOperationType)
    }
    
    /// 检查运行时失败。
    public static var internalError_CheckRuntimeFailed: TCEisError {
        TCEisError(.internalError_CheckRuntimeFailed)
    }
    
    /// 获取运行时应用数量失败。
    public static var internalError_CountRuntimeInstancesFailed: TCEisError {
        TCEisError(.internalError_CountRuntimeInstancesFailed)
    }
    
    /// 数据库内部错误。
    public static var internalError_DatabaseError: TCEisError {
        TCEisError(.internalError_DatabaseError)
    }
    
    /// 获取运行时应用列表失败。
    public static var internalError_ListRuntimeInstancesFailed: TCEisError {
        TCEisError(.internalError_ListRuntimeInstancesFailed)
    }
    
    /// 获取运行时列表失败。
    public static var internalError_ListRuntimesFailed: TCEisError {
        TCEisError(.internalError_ListRuntimesFailed)
    }
    
    /// 依赖模块metacompiler错误。
    public static var internalError_MetaCompilerError: TCEisError {
        TCEisError(.internalError_MetaCompilerError)
    }
    
    /// rpc调用异常。
    public static var internalError_RpcPilotServerError: TCEisError {
        TCEisError(.internalError_RpcPilotServerError)
    }
    
    /// 指标查询参数错误。
    public static var invalidParameterValue_InvalidRuntimeMetricSearchCondition: TCEisError {
        TCEisError(.invalidParameterValue_InvalidRuntimeMetricSearchCondition)
    }
    
    /// 共享运行时不支持此操作。
    public static var invalidParameterValue_NotSupportedActionForPublicRuntime: TCEisError {
        TCEisError(.invalidParameterValue_NotSupportedActionForPublicRuntime)
    }
    
    /// 不支持的Zone。
    public static var invalidParameterValue_PilotZoneNotSupported: TCEisError {
        TCEisError(.invalidParameterValue_PilotZoneNotSupported)
    }
    
    /// 运行时已删除。
    public static var invalidParameterValue_RuntimeAlreadyDeleted: TCEisError {
        TCEisError(.invalidParameterValue_RuntimeAlreadyDeleted)
    }
    
    /// 运行时不存在。
    public static var invalidParameterValue_RuntimeIdNotExist: TCEisError {
        TCEisError(.invalidParameterValue_RuntimeIdNotExist)
    }
    
    /// 当前指标不支持查询百分比。
    public static var invalidParameterValue_RuntimeMetricRateNotSupport: TCEisError {
        TCEisError(.invalidParameterValue_RuntimeMetricRateNotSupport)
    }
    
    /// 运行时命名空间不合法。
    public static var invalidParameterValue_RuntimeNamespaceInvalid: TCEisError {
        TCEisError(.invalidParameterValue_RuntimeNamespaceInvalid)
    }
    
    /// 运行时地域不存在。
    public static var invalidParameterValue_RuntimeZoneNotExisted: TCEisError {
        TCEisError(.invalidParameterValue_RuntimeZoneNotExisted)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCEisError {
        TCEisError(.resourceUnavailable)
    }
}

extension TCEisError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameterValue.self]
    }
}

extension TCEisError: Equatable {
    public static func == (lhs: TCEisError, rhs: TCEisError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCEisError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}