public struct TCBillingError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_AgentPayDealCannotDown = "FailedOperation.AgentPayDealCannotDown"
        case failedOperation_BalanceInsufficient = "FailedOperation.BalanceInsufficient"
        case failedOperation_InvalidAppId = "FailedOperation.InvalidAppId"
        case failedOperation_InvalidDeal = "FailedOperation.InvalidDeal"
        case failedOperation_InvalidVoucher = "FailedOperation.InvalidVoucher"
        case failedOperation_NeedPayTogeter = "FailedOperation.NeedPayTogeter"
        case failedOperation_NeedPayTogether = "FailedOperation.NeedPayTogether"
        case failedOperation_PayPriceError = "FailedOperation.PayPriceError"
        case failedOperation_PaySuccDeliverFailed = "FailedOperation.PaySuccDeliverFailed"
        case failedOperation_QueryCountFailed = "FailedOperation.QueryCountFailed"
        case failedOperation_SummaryDataNotReady = "FailedOperation.SummaryDataNotReady"
        case failedOperation_TagKeyNotExist = "FailedOperation.TagKeyNotExist"
        case internalError = "InternalError"
        case internalError_GatewayError = "InternalError.GatewayError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case unauthorizedOperation_CamNoAuth = "UnauthorizedOperation.CamNoAuth"
        case unauthorizedOperation_CertificationNeedUpgrade = "UnauthorizedOperation.CertificationNeedUpgrade"
        case unauthorizedOperation_NotCertification = "UnauthorizedOperation.NotCertification"
        case unsupportedOperation = "UnsupportedOperation"
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
    public static var authFailure: TCBillingError {
        TCBillingError(.authFailure)
    }
    
    /// 没有权限。
    public static var authFailure_UnauthorizedOperation: TCBillingError {
        TCBillingError(.authFailure_UnauthorizedOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCBillingError {
        TCBillingError(.failedOperation)
    }
    
    /// 代理支付设备不能降配。
    public static var failedOperation_AgentPayDealCannotDown: TCBillingError {
        TCBillingError(.failedOperation_AgentPayDealCannotDown)
    }
    
    /// 账户余额不足。
    public static var failedOperation_BalanceInsufficient: TCBillingError {
        TCBillingError(.failedOperation_BalanceInsufficient)
    }
    
    /// appId不符。
    public static var failedOperation_InvalidAppId: TCBillingError {
        TCBillingError(.failedOperation_InvalidAppId)
    }
    
    /// 订单状态错误，只有未支付订单才能支付。
    public static var failedOperation_InvalidDeal: TCBillingError {
        TCBillingError(.failedOperation_InvalidDeal)
    }
    
    /// 代金券不可用。
    public static var failedOperation_InvalidVoucher: TCBillingError {
        TCBillingError(.failedOperation_InvalidVoucher)
    }
    
    /// 一起购买的订单必须同时支付。
    public static var failedOperation_NeedPayTogeter: TCBillingError {
        TCBillingError(.failedOperation_NeedPayTogeter)
    }
    
    /// 套餐订单需一起购买。
    public static var failedOperation_NeedPayTogether: TCBillingError {
        TCBillingError(.failedOperation_NeedPayTogether)
    }
    
    /// 支付失败，请联系腾讯云工作人员处理。
    public static var failedOperation_PayPriceError: TCBillingError {
        TCBillingError(.failedOperation_PayPriceError)
    }
    
    /// 支付成功但发货失败，请联系腾讯云工作人员处理。
    public static var failedOperation_PaySuccDeliverFailed: TCBillingError {
        TCBillingError(.failedOperation_PaySuccDeliverFailed)
    }
    
    /// 获取数据条数失败。
    ///
    /// 尝试将NeedRecordNum设置为默认值或0。
    public static var failedOperation_QueryCountFailed: TCBillingError {
        TCBillingError(.failedOperation_QueryCountFailed)
    }
    
    /// 汇总数据正在构建中，请稍后再试。
    public static var failedOperation_SummaryDataNotReady: TCBillingError {
        TCBillingError(.failedOperation_SummaryDataNotReady)
    }
    
    /// 不存在该分账标签键。
    public static var failedOperation_TagKeyNotExist: TCBillingError {
        TCBillingError(.failedOperation_TagKeyNotExist)
    }
    
    /// 内部错误。
    public static var internalError: TCBillingError {
        TCBillingError(.internalError)
    }
    
    /// 网关错误。
    public static var internalError_GatewayError: TCBillingError {
        TCBillingError(.internalError_GatewayError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCBillingError {
        TCBillingError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCBillingError {
        TCBillingError(.invalidParameterValue)
    }
    
    /// 账号没有cam授权。
    public static var unauthorizedOperation_CamNoAuth: TCBillingError {
        TCBillingError(.unauthorizedOperation_CamNoAuth)
    }
    
    /// 因账号安全升级，购买云资源需完善您的实名信息。
    public static var unauthorizedOperation_CertificationNeedUpgrade: TCBillingError {
        TCBillingError(.unauthorizedOperation_CertificationNeedUpgrade)
    }
    
    /// 账号没有实名认证，支付失败。
    public static var unauthorizedOperation_NotCertification: TCBillingError {
        TCBillingError(.unauthorizedOperation_NotCertification)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCBillingError {
        TCBillingError(.unsupportedOperation)
    }
}

extension TCBillingError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InternalError.self, UnauthorizedOperation.self]
    }
}

extension TCBillingError: Equatable {
    public static func == (lhs: TCBillingError, rhs: TCBillingError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBillingError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCBillingError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
