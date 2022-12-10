public struct TCApmError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_AccessTagFail = "FailedOperation.AccessTagFail"
        case failedOperation_AppIdNotMatchInstanceInfo = "FailedOperation.AppIdNotMatchInstanceInfo"
        case failedOperation_DemoInstanceNotAllowModified = "FailedOperation.DemoInstanceNotAllowModified"
        case failedOperation_InstanceIdIsEmpty = "FailedOperation.InstanceIdIsEmpty"
        case failedOperation_InstanceNotFound = "FailedOperation.InstanceNotFound"
        case failedOperation_InvalidInstanceID = "FailedOperation.InvalidInstanceID"
        case failedOperation_MetricFiltersLackParams = "FailedOperation.MetricFiltersLackParams"
        case failedOperation_NotInnerVPC = "FailedOperation.NotInnerVPC"
        case failedOperation_QueryTimeIntervalIsNotSupported = "FailedOperation.QueryTimeIntervalIsNotSupported"
        case failedOperation_RegionNotSupport = "FailedOperation.RegionNotSupport"
        case failedOperation_SendRequest = "FailedOperation.SendRequest"
        case failedOperation_ViewNameNotExistOrIllegal = "FailedOperation.ViewNameNotExistOrIllegal"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameter_FiltersFieldsNotExistOrIllegal = "InvalidParameter.FiltersFieldsNotExistOrIllegal"
        case invalidParameter_GroupByFieldsNotExistOrIllegal = "InvalidParameter.GroupByFieldsNotExistOrIllegal"
        case invalidParameter_MetricFiltersLackParams = "InvalidParameter.MetricFiltersLackParams"
        case invalidParameter_MetricsFieldNotExistOrIllegal = "InvalidParameter.MetricsFieldNotExistOrIllegal"
        case invalidParameter_MetricsFieldsNotAllowEmpty = "InvalidParameter.MetricsFieldsNotAllowEmpty"
        case invalidParameter_PeriodIsIllegal = "InvalidParameter.PeriodIsIllegal"
        case invalidParameter_QueryTimeIntervalIsNotSupported = "InvalidParameter.QueryTimeIntervalIsNotSupported"
        case invalidParameter_ViewNameNotExistOrIllegal = "InvalidParameter.ViewNameNotExistOrIllegal"
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
    public static var authFailure: TCApmError {
        TCApmError(.authFailure)
    }
    
    /// AuthFailure.UnauthorizedOperation
    public static var authFailure_UnauthorizedOperation: TCApmError {
        TCApmError(.authFailure_UnauthorizedOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCApmError {
        TCApmError(.failedOperation)
    }
    
    public static var failedOperation_AccessTagFail: TCApmError {
        TCApmError(.failedOperation_AccessTagFail)
    }
    
    /// appid和实例信息不匹配。
    public static var failedOperation_AppIdNotMatchInstanceInfo: TCApmError {
        TCApmError(.failedOperation_AppIdNotMatchInstanceInfo)
    }
    
    public static var failedOperation_DemoInstanceNotAllowModified: TCApmError {
        TCApmError(.failedOperation_DemoInstanceNotAllowModified)
    }
    
    /// 实例ID为空。
    public static var failedOperation_InstanceIdIsEmpty: TCApmError {
        TCApmError(.failedOperation_InstanceIdIsEmpty)
    }
    
    /// apm实例不存在。
    public static var failedOperation_InstanceNotFound: TCApmError {
        TCApmError(.failedOperation_InstanceNotFound)
    }
    
    public static var failedOperation_InvalidInstanceID: TCApmError {
        TCApmError(.failedOperation_InvalidInstanceID)
    }
    
    public static var failedOperation_MetricFiltersLackParams: TCApmError {
        TCApmError(.failedOperation_MetricFiltersLackParams)
    }
    
    /// 非内网vpc。
    public static var failedOperation_NotInnerVPC: TCApmError {
        TCApmError(.failedOperation_NotInnerVPC)
    }
    
    public static var failedOperation_QueryTimeIntervalIsNotSupported: TCApmError {
        TCApmError(.failedOperation_QueryTimeIntervalIsNotSupported)
    }
    
    public static var failedOperation_RegionNotSupport: TCApmError {
        TCApmError(.failedOperation_RegionNotSupport)
    }
    
    /// 发送查询请求失败。
    public static var failedOperation_SendRequest: TCApmError {
        TCApmError(.failedOperation_SendRequest)
    }
    
    public static var failedOperation_ViewNameNotExistOrIllegal: TCApmError {
        TCApmError(.failedOperation_ViewNameNotExistOrIllegal)
    }
    
    /// 内部错误。
    public static var internalError: TCApmError {
        TCApmError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCApmError {
        TCApmError(.invalidParameter)
    }
    
    /// filters中的字段不存在或非法。
    public static var invalidParameter_FiltersFieldsNotExistOrIllegal: TCApmError {
        TCApmError(.invalidParameter_FiltersFieldsNotExistOrIllegal)
    }
    
    /// groupby中的字段不存在或非法。
    public static var invalidParameter_GroupByFieldsNotExistOrIllegal: TCApmError {
        TCApmError(.invalidParameter_GroupByFieldsNotExistOrIllegal)
    }
    
    /// filters中必须存在service.name字段，否则会报错。
    public static var invalidParameter_MetricFiltersLackParams: TCApmError {
        TCApmError(.invalidParameter_MetricFiltersLackParams)
    }
    
    /// metrics中的字段不存在或非法。
    public static var invalidParameter_MetricsFieldNotExistOrIllegal: TCApmError {
        TCApmError(.invalidParameter_MetricsFieldNotExistOrIllegal)
    }
    
    /// metrics中不允许为空。
    public static var invalidParameter_MetricsFieldsNotAllowEmpty: TCApmError {
        TCApmError(.invalidParameter_MetricsFieldsNotAllowEmpty)
    }
    
    /// period不为空，0或60。
    public static var invalidParameter_PeriodIsIllegal: TCApmError {
        TCApmError(.invalidParameter_PeriodIsIllegal)
    }
    
    /// 查询时间不支持，最多只能查询最近2天、最多一个小时的数据。
    public static var invalidParameter_QueryTimeIntervalIsNotSupported: TCApmError {
        TCApmError(.invalidParameter_QueryTimeIntervalIsNotSupported)
    }
    
    /// 视图名称不存在或非法。
    public static var invalidParameter_ViewNameNotExistOrIllegal: TCApmError {
        TCApmError(.invalidParameter_ViewNameNotExistOrIllegal)
    }
}

extension TCApmError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InvalidParameter.self]
    }
}

extension TCApmError: Equatable {
    public static func == (lhs: TCApmError, rhs: TCApmError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCApmError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCApmError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
