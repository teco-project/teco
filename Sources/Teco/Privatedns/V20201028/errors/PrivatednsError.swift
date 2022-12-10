public struct TCPrivatednsError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_TokenFailure = "AuthFailure.TokenFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_BindZoneVpcFailed = "FailedOperation.BindZoneVpcFailed"
        case failedOperation_CreateRecordFailed = "FailedOperation.CreateRecordFailed"
        case failedOperation_CreateZoneFailed = "FailedOperation.CreateZoneFailed"
        case failedOperation_DataError = "FailedOperation.DataError"
        case failedOperation_DeleteLastBindVpcRecordFailed = "FailedOperation.DeleteLastBindVpcRecordFailed"
        case failedOperation_DeleteRecordFailed = "FailedOperation.DeleteRecordFailed"
        case failedOperation_DeleteZoneFailed = "FailedOperation.DeleteZoneFailed"
        case failedOperation_ModifyRecordFailed = "FailedOperation.ModifyRecordFailed"
        case failedOperation_ModifyZoneFailed = "FailedOperation.ModifyZoneFailed"
        case internalError = "InternalError"
        case internalError_UndefiendError = "InternalError.UndefiendError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_IllegalTTLValue = "InvalidParameterValue.IllegalTTLValue"
        case invalidParameterValue_ReservedDomain = "InvalidParameterValue.ReservedDomain"
        case invalidParameter_AccountExist = "InvalidParameter.AccountExist"
        case invalidParameter_IllegalCidr = "InvalidParameter.IllegalCidr"
        case invalidParameter_IllegalDomain = "InvalidParameter.IllegalDomain"
        case invalidParameter_IllegalDomainTld = "InvalidParameter.IllegalDomainTld"
        case invalidParameter_IllegalPTRRecord = "InvalidParameter.IllegalPTRRecord"
        case invalidParameter_IllegalRecord = "InvalidParameter.IllegalRecord"
        case invalidParameter_IllegalRecordValue = "InvalidParameter.IllegalRecordValue"
        case invalidParameter_IllegalVpcInfo = "InvalidParameter.IllegalVpcInfo"
        case invalidParameter_InvalidMX = "InvalidParameter.InvalidMX"
        case invalidParameter_RecordAAAACountExceed = "InvalidParameter.RecordAAAACountExceed"
        case invalidParameter_RecordACountExceed = "InvalidParameter.RecordACountExceed"
        case invalidParameter_RecordCNAMECountExceed = "InvalidParameter.RecordCNAMECountExceed"
        case invalidParameter_RecordConflict = "InvalidParameter.RecordConflict"
        case invalidParameter_RecordCountExceed = "InvalidParameter.RecordCountExceed"
        case invalidParameter_RecordExist = "InvalidParameter.RecordExist"
        case invalidParameter_RecordLevelExceed = "InvalidParameter.RecordLevelExceed"
        case invalidParameter_RecordMXCountExceed = "InvalidParameter.RecordMXCountExceed"
        case invalidParameter_RecordNotExist = "InvalidParameter.RecordNotExist"
        case invalidParameter_RecordRolllimitCountExceed = "InvalidParameter.RecordRolllimitCountExceed"
        case invalidParameter_RecordTXTCountExceed = "InvalidParameter.RecordTXTCountExceed"
        case invalidParameter_RecordUnsupportWeight = "InvalidParameter.RecordUnsupportWeight"
        case invalidParameter_VpcBinded = "InvalidParameter.VpcBinded"
        case invalidParameter_VpcBindedMainDomain = "InvalidParameter.VpcBindedMainDomain"
        case invalidParameter_VpcPtrZoneBindExceed = "InvalidParameter.VpcPtrZoneBindExceed"
        case invalidParameter_ZoneNotExists = "InvalidParameter.ZoneNotExists"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_TldOutOfLimit = "LimitExceeded.TldOutOfLimit"
        case limitExceeded_TldOutOfRange = "LimitExceeded.TldOutOfRange"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceInsufficient_Balance = "ResourceInsufficient.Balance"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_ServiceNotSubscribed = "ResourceNotFound.ServiceNotSubscribed"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_TldPackageExpired = "ResourceUnavailable.TldPackageExpired"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_RoleUnAuthorized = "UnauthorizedOperation.RoleUnAuthorized"
        case unauthorizedOperation_UnauthorizedAccount = "UnauthorizedOperation.UnauthorizedAccount"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_AccountNotBound = "UnsupportedOperation.AccountNotBound"
        case unsupportedOperation_ExistBoundVpc = "UnsupportedOperation.ExistBoundVpc"
        case unsupportedOperation_FrequencyLimit = "UnsupportedOperation.FrequencyLimit"
        case unsupportedOperation_NotSupportDnsForward = "UnsupportedOperation.NotSupportDnsForward"
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
    public static var authFailure: TCPrivatednsError {
        TCPrivatednsError(.authFailure)
    }
    
    /// token校验失败。
    ///
    /// token校验失败
    public static var authFailure_TokenFailure: TCPrivatednsError {
        TCPrivatednsError(.authFailure_TokenFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCPrivatednsError {
        TCPrivatednsError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCPrivatednsError {
        TCPrivatednsError(.failedOperation)
    }
    
    /// 私有域关联VPC失败。
    public static var failedOperation_BindZoneVpcFailed: TCPrivatednsError {
        TCPrivatednsError(.failedOperation_BindZoneVpcFailed)
    }
    
    /// 记录创建失败。
    public static var failedOperation_CreateRecordFailed: TCPrivatednsError {
        TCPrivatednsError(.failedOperation_CreateRecordFailed)
    }
    
    /// 私有域创建失败。
    public static var failedOperation_CreateZoneFailed: TCPrivatednsError {
        TCPrivatednsError(.failedOperation_CreateZoneFailed)
    }
    
    /// 数据异常，联系后台处理。
    public static var failedOperation_DataError: TCPrivatednsError {
        TCPrivatednsError(.failedOperation_DataError)
    }
    
    /// 当前私有域已关联 VPC，如需清空解析记录请先解除 VPC 关联。
    public static var failedOperation_DeleteLastBindVpcRecordFailed: TCPrivatednsError {
        TCPrivatednsError(.failedOperation_DeleteLastBindVpcRecordFailed)
    }
    
    /// 其他原因导致删除失败，可能需要联系后台帮忙处理
    public static var failedOperation_DeleteRecordFailed: TCPrivatednsError {
        TCPrivatednsError(.failedOperation_DeleteRecordFailed)
    }
    
    /// 解析域删除失败。
    public static var failedOperation_DeleteZoneFailed: TCPrivatednsError {
        TCPrivatednsError(.failedOperation_DeleteZoneFailed)
    }
    
    /// 记录修改失败。
    public static var failedOperation_ModifyRecordFailed: TCPrivatednsError {
        TCPrivatednsError(.failedOperation_ModifyRecordFailed)
    }
    
    /// 私有域修改失败。
    public static var failedOperation_ModifyZoneFailed: TCPrivatednsError {
        TCPrivatednsError(.failedOperation_ModifyZoneFailed)
    }
    
    /// 内部错误。
    public static var internalError: TCPrivatednsError {
        TCPrivatednsError(.internalError)
    }
    
    /// 错误未定义。
    public static var internalError_UndefiendError: TCPrivatednsError {
        TCPrivatednsError(.internalError_UndefiendError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCPrivatednsError {
        TCPrivatednsError(.invalidParameterValue)
    }
    
    /// ttl的值必须是1-86400之间。
    public static var invalidParameterValue_IllegalTTLValue: TCPrivatednsError {
        TCPrivatednsError(.invalidParameterValue_IllegalTTLValue)
    }
    
    /// 内部保留域名，不支持创建。
    public static var invalidParameterValue_ReservedDomain: TCPrivatednsError {
        TCPrivatednsError(.invalidParameterValue_ReservedDomain)
    }
    
    /// 已经存在绑定的账号。
    ///
    /// 数据已经存在，无需重复操作。
    public static var invalidParameter_AccountExist: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_AccountExist)
    }
    
    /// 非法CIDR。
    public static var invalidParameter_IllegalCidr: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_IllegalCidr)
    }
    
    /// 域名不正确。
    public static var invalidParameter_IllegalDomain: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_IllegalDomain)
    }
    
    /// 顶级域名不正确。
    public static var invalidParameter_IllegalDomainTld: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_IllegalDomainTld)
    }
    
    /// PTR记录非法。
    public static var invalidParameter_IllegalPTRRecord: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_IllegalPTRRecord)
    }
    
    /// 记录不合法。
    public static var invalidParameter_IllegalRecord: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_IllegalRecord)
    }
    
    /// 无效的记录值。
    public static var invalidParameter_IllegalRecordValue: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_IllegalRecordValue)
    }
    
    /// VPC非法。
    public static var invalidParameter_IllegalVpcInfo: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_IllegalVpcInfo)
    }
    
    /// MX 必须为5-50之间且为5的倍数。
    public static var invalidParameter_InvalidMX: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_InvalidMX)
    }
    
    /// AAAA记录负载均衡数量超过50。
    public static var invalidParameter_RecordAAAACountExceed: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_RecordAAAACountExceed)
    }
    
    /// A记录负载均衡数量超过50。
    public static var invalidParameter_RecordACountExceed: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_RecordACountExceed)
    }
    
    /// CNAME记录负载均衡数量超过50。
    public static var invalidParameter_RecordCNAMECountExceed: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_RecordCNAMECountExceed)
    }
    
    /// 记录冲突。
    public static var invalidParameter_RecordConflict: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_RecordConflict)
    }
    
    /// 记录数量超过限制。
    public static var invalidParameter_RecordCountExceed: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_RecordCountExceed)
    }
    
    /// 记录已经存在。
    public static var invalidParameter_RecordExist: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_RecordExist)
    }
    
    /// 记录层级超过限制。
    public static var invalidParameter_RecordLevelExceed: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_RecordLevelExceed)
    }
    
    /// MX记录负载均衡数量超过50。
    public static var invalidParameter_RecordMXCountExceed: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_RecordMXCountExceed)
    }
    
    /// 记录不存在。
    public static var invalidParameter_RecordNotExist: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_RecordNotExist)
    }
    
    /// 记录负载均衡数量超过限制。
    public static var invalidParameter_RecordRolllimitCountExceed: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_RecordRolllimitCountExceed)
    }
    
    /// TXT记录负载均衡数量超过10。
    public static var invalidParameter_RecordTXTCountExceed: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_RecordTXTCountExceed)
    }
    
    /// 当前记录类型不支持权重。
    public static var invalidParameter_RecordUnsupportWeight: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_RecordUnsupportWeight)
    }
    
    /// VPC已绑定其它解析域。
    public static var invalidParameter_VpcBinded: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_VpcBinded)
    }
    
    /// 当前VPC已关联相同主域名。
    ///
    /// 检查解析记录+私有域名是否绑定了相同的VPC
    public static var invalidParameter_VpcBindedMainDomain: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_VpcBindedMainDomain)
    }
    
    /// VPC关联反解析域超过限制。
    ///
    /// 确认vpc关联的反解析域数量
    public static var invalidParameter_VpcPtrZoneBindExceed: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_VpcPtrZoneBindExceed)
    }
    
    /// 解析域不存在。
    public static var invalidParameter_ZoneNotExists: TCPrivatednsError {
        TCPrivatednsError(.invalidParameter_ZoneNotExists)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCPrivatednsError {
        TCPrivatednsError(.limitExceeded)
    }
    
    /// 超过自定义TLD额度。
    ///
    /// 超过自定义TLD额度
    public static var limitExceeded_TldOutOfLimit: TCPrivatednsError {
        TCPrivatednsError(.limitExceeded_TldOutOfLimit)
    }
    
    /// 使用自定义TLD的私有域超过总额度。
    ///
    /// 删除不需要的使用了自定义TLD的私有域
    public static var limitExceeded_TldOutOfRange: TCPrivatednsError {
        TCPrivatednsError(.limitExceeded_TldOutOfRange)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCPrivatednsError {
        TCPrivatednsError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCPrivatednsError {
        TCPrivatednsError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCPrivatednsError {
        TCPrivatednsError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCPrivatednsError {
        TCPrivatednsError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCPrivatednsError {
        TCPrivatednsError(.resourceInsufficient)
    }
    
    public static var resourceInsufficient_Balance: TCPrivatednsError {
        TCPrivatednsError(.resourceInsufficient_Balance)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCPrivatednsError {
        TCPrivatednsError(.resourceNotFound)
    }
    
    /// 私有域解析服务未开通。
    public static var resourceNotFound_ServiceNotSubscribed: TCPrivatednsError {
        TCPrivatednsError(.resourceNotFound_ServiceNotSubscribed)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCPrivatednsError {
        TCPrivatednsError(.resourceUnavailable)
    }
    
    /// TLD增值包已过期。
    ///
    /// TLD增值包已过期
    public static var resourceUnavailable_TldPackageExpired: TCPrivatednsError {
        TCPrivatednsError(.resourceUnavailable_TldPackageExpired)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCPrivatednsError {
        TCPrivatednsError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCPrivatednsError {
        TCPrivatednsError(.unauthorizedOperation)
    }
    
    /// 角色未授权。
    ///
    /// 资源所有者账号新增关联角色，并给授权账号授权
    public static var unauthorizedOperation_RoleUnAuthorized: TCPrivatednsError {
        TCPrivatednsError(.unauthorizedOperation_RoleUnAuthorized)
    }
    
    /// 未实名账号。
    public static var unauthorizedOperation_UnauthorizedAccount: TCPrivatednsError {
        TCPrivatednsError(.unauthorizedOperation_UnauthorizedAccount)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCPrivatednsError {
        TCPrivatednsError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCPrivatednsError {
        TCPrivatednsError(.unsupportedOperation)
    }
    
    /// 账号未绑定。
    ///
    /// 账号未绑定，请绑定账号后再试
    public static var unsupportedOperation_AccountNotBound: TCPrivatednsError {
        TCPrivatednsError(.unsupportedOperation_AccountNotBound)
    }
    
    /// 存在绑定的VPC资源。
    ///
    /// 存在绑定的VPC资源，先解绑VPC资源后再删除绑定账号
    public static var unsupportedOperation_ExistBoundVpc: TCPrivatednsError {
        TCPrivatednsError(.unsupportedOperation_ExistBoundVpc)
    }
    
    /// 接口调用超过限频。
    ///
    /// 减少单位之间内的调用次数
    public static var unsupportedOperation_FrequencyLimit: TCPrivatednsError {
        TCPrivatednsError(.unsupportedOperation_FrequencyLimit)
    }
    
    /// 不支持设置子域名递归解析。
    ///
    /// 目前暂不支持设置子域名递归解析，不开启子域名递归解析即可
    public static var unsupportedOperation_NotSupportDnsForward: TCPrivatednsError {
        TCPrivatednsError(.unsupportedOperation_NotSupportDnsForward)
    }
}

extension TCPrivatednsError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceInsufficient.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCPrivatednsError: Equatable {
    public static func == (lhs: TCPrivatednsError, rhs: TCPrivatednsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCPrivatednsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCPrivatednsError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
