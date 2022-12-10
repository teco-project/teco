public struct TCSslError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_AuthError = "FailedOperation.AuthError"
        case failedOperation_CAMAuthorizedFail = "FailedOperation.CAMAuthorizedFail"
        case failedOperation_CancelOrderFailed = "FailedOperation.CancelOrderFailed"
        case failedOperation_CannotBeDeletedIssued = "FailedOperation.CannotBeDeletedIssued"
        case failedOperation_CannotBeDeletedWithinHour = "FailedOperation.CannotBeDeletedWithinHour"
        case failedOperation_CannotGetOrder = "FailedOperation.CannotGetOrder"
        case failedOperation_CertificateExists = "FailedOperation.CertificateExists"
        case failedOperation_CertificateHasRenewed = "FailedOperation.CertificateHasRenewed"
        case failedOperation_CertificateHostingTypeNumberLimit = "FailedOperation.CertificateHostingTypeNumberLimit"
        case failedOperation_CertificateInvalid = "FailedOperation.CertificateInvalid"
        case failedOperation_CertificateMismatch = "FailedOperation.CertificateMismatch"
        case failedOperation_CertificateNotFound = "FailedOperation.CertificateNotFound"
        case failedOperation_ConfirmLetterTooLarge = "FailedOperation.ConfirmLetterTooLarge"
        case failedOperation_ConfirmLetterTooSmall = "FailedOperation.ConfirmLetterTooSmall"
        case failedOperation_DeleteResourceFailed = "FailedOperation.DeleteResourceFailed"
        case failedOperation_ExceedsFreeLimit = "FailedOperation.ExceedsFreeLimit"
        case failedOperation_FileTooLarge = "FailedOperation.FileTooLarge"
        case failedOperation_FileTooSmall = "FailedOperation.FileTooSmall"
        case failedOperation_IllegalManagerStatus = "FailedOperation.IllegalManagerStatus"
        case failedOperation_InvalidCertificateSource = "FailedOperation.InvalidCertificateSource"
        case failedOperation_InvalidCertificateStatusCode = "FailedOperation.InvalidCertificateStatusCode"
        case failedOperation_InvalidConfirmLetterFormat = "FailedOperation.InvalidConfirmLetterFormat"
        case failedOperation_InvalidConfirmLetterFormatWosign = "FailedOperation.InvalidConfirmLetterFormatWosign"
        case failedOperation_InvalidFileType = "FailedOperation.InvalidFileType"
        case failedOperation_InvalidParam = "FailedOperation.InvalidParam"
        case failedOperation_MainDomainCertificateCountLimit = "FailedOperation.MainDomainCertificateCountLimit"
        case failedOperation_NetworkError = "FailedOperation.NetworkError"
        case failedOperation_NoProjectPermission = "FailedOperation.NoProjectPermission"
        case failedOperation_NoRealNameAuth = "FailedOperation.NoRealNameAuth"
        case failedOperation_OrderAlreadyReplaced = "FailedOperation.OrderAlreadyReplaced"
        case failedOperation_OrderReplaceFailed = "FailedOperation.OrderReplaceFailed"
        case failedOperation_PackageCountLimit = "FailedOperation.PackageCountLimit"
        case failedOperation_PackageExpired = "FailedOperation.PackageExpired"
        case failedOperation_RevokeFailed = "FailedOperation.RevokeFailed"
        case failedOperation_RevokeResourceFailed = "FailedOperation.RevokeResourceFailed"
        case failedOperation_RoleNotFoundAuthorization = "FailedOperation.RoleNotFoundAuthorization"
        case internalError = "InternalError"
        case internalError_BackendResponseEmpty = "InternalError.BackendResponseEmpty"
        case internalError_BackendResponseError = "InternalError.BackendResponseError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_CertificateIdNumberLimit = "InvalidParameter.CertificateIdNumberLimit"
        case invalidParameter_CertificatesNumberExceeded = "InvalidParameter.CertificatesNumberExceeded"
        case invalidParameter_ContainsInvalidCertificateId = "InvalidParameter.ContainsInvalidCertificateId"
        case invalidParameter_PackageIdsInvalid = "InvalidParameter.PackageIdsInvalid"
        case invalidParameter_WithDetailReason = "InvalidParameter.WithDetailReason"
        case limitExceeded_RateLimitExceeded = "LimitExceeded.RateLimitExceeded"
        case missingParameter = "MissingParameter"
        case resourceNotFound_Manager = "ResourceNotFound.Manager"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownParameter = "UnknownParameter"
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
    public static var authFailure: TCSslError {
        TCSslError(.authFailure)
    }
    
    /// 操作未授权。
    public static var authFailure_UnauthorizedOperation: TCSslError {
        TCSslError(.authFailure_UnauthorizedOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCSslError {
        TCSslError(.failedOperation)
    }
    
    /// 请检查是否有权限。
    public static var failedOperation_AuthError: TCSslError {
        TCSslError(.failedOperation_AuthError)
    }
    
    /// CAM鉴权出现错误。
    public static var failedOperation_CAMAuthorizedFail: TCSslError {
        TCSslError(.failedOperation_CAMAuthorizedFail)
    }
    
    /// 取消订单失败。
    public static var failedOperation_CancelOrderFailed: TCSslError {
        TCSslError(.failedOperation_CancelOrderFailed)
    }
    
    /// 该证书已颁发， 不能删除。
    public static var failedOperation_CannotBeDeletedIssued: TCSslError {
        TCSslError(.failedOperation_CannotBeDeletedIssued)
    }
    
    /// 免费证书申请1小时内不允许删除。
    public static var failedOperation_CannotBeDeletedWithinHour: TCSslError {
        TCSslError(.failedOperation_CannotBeDeletedWithinHour)
    }
    
    /// 获取订单信息失败，请稍后重试。
    public static var failedOperation_CannotGetOrder: TCSslError {
        TCSslError(.failedOperation_CannotGetOrder)
    }
    
    /// 证书已存在。
    public static var failedOperation_CertificateExists: TCSslError {
        TCSslError(.failedOperation_CertificateExists)
    }
    
    /// 已替换证书，无法进行托管。
    public static var failedOperation_CertificateHasRenewed: TCSslError {
        TCSslError(.failedOperation_CertificateHasRenewed)
    }
    
    /// 证书资源托管数量超过限制。
    public static var failedOperation_CertificateHostingTypeNumberLimit: TCSslError {
        TCSslError(.failedOperation_CertificateHostingTypeNumberLimit)
    }
    
    /// 证书不符合标准。
    public static var failedOperation_CertificateInvalid: TCSslError {
        TCSslError(.failedOperation_CertificateInvalid)
    }
    
    /// 证书与私钥不对应。
    public static var failedOperation_CertificateMismatch: TCSslError {
        TCSslError(.failedOperation_CertificateMismatch)
    }
    
    /// 证书不存在。
    public static var failedOperation_CertificateNotFound: TCSslError {
        TCSslError(.failedOperation_CertificateNotFound)
    }
    
    /// 证书确认函文件过大（需小于1.4M）。
    public static var failedOperation_ConfirmLetterTooLarge: TCSslError {
        TCSslError(.failedOperation_ConfirmLetterTooLarge)
    }
    
    /// 证书确认函文件过小（需大于1KB）。
    public static var failedOperation_ConfirmLetterTooSmall: TCSslError {
        TCSslError(.failedOperation_ConfirmLetterTooSmall)
    }
    
    /// 证书已关联云资源，无法删除。
    public static var failedOperation_DeleteResourceFailed: TCSslError {
        TCSslError(.failedOperation_DeleteResourceFailed)
    }
    
    /// 免费证书数量超出限制。
    public static var failedOperation_ExceedsFreeLimit: TCSslError {
        TCSslError(.failedOperation_ExceedsFreeLimit)
    }
    
    /// 文件尺寸太大（需小于1.4MB）。
    public static var failedOperation_FileTooLarge: TCSslError {
        TCSslError(.failedOperation_FileTooLarge)
    }
    
    /// 文件尺寸太小，请上传清晰图片。
    public static var failedOperation_FileTooSmall: TCSslError {
        TCSslError(.failedOperation_FileTooSmall)
    }
    
    public static var failedOperation_IllegalManagerStatus: TCSslError {
        TCSslError(.failedOperation_IllegalManagerStatus)
    }
    
    /// 证书来源错误。
    public static var failedOperation_InvalidCertificateSource: TCSslError {
        TCSslError(.failedOperation_InvalidCertificateSource)
    }
    
    /// 证书状态不正确。
    public static var failedOperation_InvalidCertificateStatusCode: TCSslError {
        TCSslError(.failedOperation_InvalidCertificateStatusCode)
    }
    
    /// 证书确认函格式错误（支持格式为jpg、jpeg、png、pdf）。
    public static var failedOperation_InvalidConfirmLetterFormat: TCSslError {
        TCSslError(.failedOperation_InvalidConfirmLetterFormat)
    }
    
    /// 证书确认函格式错误（支持格式为jpg、pdf、gif）。
    public static var failedOperation_InvalidConfirmLetterFormatWosign: TCSslError {
        TCSslError(.failedOperation_InvalidConfirmLetterFormatWosign)
    }
    
    /// 文件格式错误，请重新上传。
    public static var failedOperation_InvalidFileType: TCSslError {
        TCSslError(.failedOperation_InvalidFileType)
    }
    
    /// 参数有误。
    public static var failedOperation_InvalidParam: TCSslError {
        TCSslError(.failedOperation_InvalidParam)
    }
    
    /// 该主域（%s）下申请的免费证书数量已达到%s个上限，请购买付费证书。
    ///
    /// 主域申请的免费证书数量已达到20个上限，请购买付费证书
    public static var failedOperation_MainDomainCertificateCountLimit: TCSslError {
        TCSslError(.failedOperation_MainDomainCertificateCountLimit)
    }
    
    /// 当前 CA 机构访问繁忙，请稍后重试。
    public static var failedOperation_NetworkError: TCSslError {
        TCSslError(.failedOperation_NetworkError)
    }
    
    /// 您没有该项目的操作权限。
    public static var failedOperation_NoProjectPermission: TCSslError {
        TCSslError(.failedOperation_NoProjectPermission)
    }
    
    /// 尚未通过实名认证。
    public static var failedOperation_NoRealNameAuth: TCSslError {
        TCSslError(.failedOperation_NoRealNameAuth)
    }
    
    /// 该订单已重签发。
    public static var failedOperation_OrderAlreadyReplaced: TCSslError {
        TCSslError(.failedOperation_OrderAlreadyReplaced)
    }
    
    /// 重颁发失败。
    public static var failedOperation_OrderReplaceFailed: TCSslError {
        TCSslError(.failedOperation_OrderReplaceFailed)
    }
    
    /// 剩余权益点不足。
    public static var failedOperation_PackageCountLimit: TCSslError {
        TCSslError(.failedOperation_PackageCountLimit)
    }
    
    /// 权益包已过期。
    public static var failedOperation_PackageExpired: TCSslError {
        TCSslError(.failedOperation_PackageExpired)
    }
    
    /// 证书吊销失败。
    public static var failedOperation_RevokeFailed: TCSslError {
        TCSslError(.failedOperation_RevokeFailed)
    }
    
    /// 证书已关联云资源，无法吊销。
    public static var failedOperation_RevokeResourceFailed: TCSslError {
        TCSslError(.failedOperation_RevokeResourceFailed)
    }
    
    /// 角色不存在，请前往授权。
    ///
    /// 服务角色授权
    public static var failedOperation_RoleNotFoundAuthorization: TCSslError {
        TCSslError(.failedOperation_RoleNotFoundAuthorization)
    }
    
    /// 内部错误。
    public static var internalError: TCSslError {
        TCSslError(.internalError)
    }
    
    public static var internalError_BackendResponseEmpty: TCSslError {
        TCSslError(.internalError_BackendResponseEmpty)
    }
    
    /// 后端服务响应错误。
    public static var internalError_BackendResponseError: TCSslError {
        TCSslError(.internalError_BackendResponseError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCSslError {
        TCSslError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCSslError {
        TCSslError(.invalidParameterValue)
    }
    
    /// 查询的证书ID不能超过50个。
    public static var invalidParameter_CertificateIdNumberLimit: TCSslError {
        TCSslError(.invalidParameter_CertificateIdNumberLimit)
    }
    
    /// 证书数量超出限制。
    public static var invalidParameter_CertificatesNumberExceeded: TCSslError {
        TCSslError(.invalidParameter_CertificatesNumberExceeded)
    }
    
    /// 包含无效的证书ID。
    public static var invalidParameter_ContainsInvalidCertificateId: TCSslError {
        TCSslError(.invalidParameter_ContainsInvalidCertificateId)
    }
    
    /// 权益点ID列表无效。
    public static var invalidParameter_PackageIdsInvalid: TCSslError {
        TCSslError(.invalidParameter_PackageIdsInvalid)
    }
    
    public static var invalidParameter_WithDetailReason: TCSslError {
        TCSslError(.invalidParameter_WithDetailReason)
    }
    
    /// 单位时间内接口请求频率达到限制。
    public static var limitExceeded_RateLimitExceeded: TCSslError {
        TCSslError(.limitExceeded_RateLimitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCSslError {
        TCSslError(.missingParameter)
    }
    
    /// 公司管理人不存在。
    public static var resourceNotFound_Manager: TCSslError {
        TCSslError(.resourceNotFound_Manager)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCSslError {
        TCSslError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCSslError {
        TCSslError(.unknownParameter)
    }
}

extension TCSslError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, LimitExceeded.self, ResourceNotFound.self]
    }
}

extension TCSslError: Equatable {
    public static func == (lhs: TCSslError, rhs: TCSslError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCSslError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCSslError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
