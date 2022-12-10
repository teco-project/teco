public struct TCTcrError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_DependenceError = "FailedOperation.DependenceError"
        case failedOperation_ErrorGetDBDataError = "FailedOperation.ErrorGetDBDataError"
        case failedOperation_ErrorTcrInvalidMediaType = "FailedOperation.ErrorTcrInvalidMediaType"
        case failedOperation_ErrorTcrResourceConflict = "FailedOperation.ErrorTcrResourceConflict"
        case failedOperation_ErrorTcrUnauthorized = "FailedOperation.ErrorTcrUnauthorized"
        case failedOperation_GetDBDataError = "FailedOperation.GetDBDataError"
        case failedOperation_GetSecurityPolicyFail = "FailedOperation.GetSecurityPolicyFail"
        case failedOperation_GetTcrClient = "FailedOperation.GetTcrClient"
        case failedOperation_OperationCancel = "FailedOperation.OperationCancel"
        case failedOperation_TradeFailed = "FailedOperation.TradeFailed"
        case failedOperation_ValidateRegistryNameFail = "FailedOperation.ValidateRegistryNameFail"
        case failedOperation_ValidateSupportedRegionFail = "FailedOperation.ValidateSupportedRegionFail"
        case internalError = "InternalError"
        case internalError_CreatePrivateZone = "InternalError.CreatePrivateZone"
        case internalError_CreatePrivateZoneRecord = "InternalError.CreatePrivateZoneRecord"
        case internalError_DbError = "InternalError.DbError"
        case internalError_DeletePrivateZoneRecord = "InternalError.DeletePrivateZoneRecord"
        case internalError_DescribeInternalEndpointDnsStatus = "InternalError.DescribeInternalEndpointDnsStatus"
        case internalError_DescribePrivateZoneList = "InternalError.DescribePrivateZoneList"
        case internalError_DescribePrivateZoneRecordList = "InternalError.DescribePrivateZoneRecordList"
        case internalError_DescribePrivateZoneServiceList = "InternalError.DescribePrivateZoneServiceList"
        case internalError_ErrConflict = "InternalError.ErrConflict"
        case internalError_ErrNotExist = "InternalError.ErrNotExist"
        case internalError_ErrUnauthorized = "InternalError.ErrUnauthorized"
        case internalError_ErrorConflict = "InternalError.ErrorConflict"
        case internalError_ErrorOverLimit = "InternalError.ErrorOverLimit"
        case internalError_ErrorTcrInternal = "InternalError.ErrorTcrInternal"
        case internalError_ErrorTcrInvalidMediaType = "InternalError.ErrorTcrInvalidMediaType"
        case internalError_ErrorTcrResourceConflict = "InternalError.ErrorTcrResourceConflict"
        case internalError_ErrorTcrUnauthorized = "InternalError.ErrorTcrUnauthorized"
        case internalError_ModifyPrivateZoneVpc = "InternalError.ModifyPrivateZoneVpc"
        case internalError_Unknown = "InternalError.Unknown"
        case invalidParameter = "InvalidParameter"
        case invalidParameter_ErrNSMisMatch = "InvalidParameter.ErrNSMisMatch"
        case invalidParameter_ErrNamespaceExist = "InvalidParameter.ErrNamespaceExist"
        case invalidParameter_ErrNamespaceReserved = "InvalidParameter.ErrNamespaceReserved"
        case invalidParameter_ErrRepoExist = "InvalidParameter.ErrRepoExist"
        case invalidParameter_ErrTooLarge = "InvalidParameter.ErrTooLarge"
        case invalidParameter_ErrTriggerExist = "InvalidParameter.ErrTriggerExist"
        case invalidParameter_ErrUserExist = "InvalidParameter.ErrUserExist"
        case invalidParameter_ErrorNameExists = "InvalidParameter.ErrorNameExists"
        case invalidParameter_ErrorNameIllegal = "InvalidParameter.ErrorNameIllegal"
        case invalidParameter_ErrorNameReserved = "InvalidParameter.ErrorNameReserved"
        case invalidParameter_ErrorRegistryName = "InvalidParameter.ErrorRegistryName"
        case invalidParameter_ErrorTagOverLimit = "InvalidParameter.ErrorTagOverLimit"
        case invalidParameter_ErrorTcrInvalidParameter = "InvalidParameter.ErrorTcrInvalidParameter"
        case invalidParameter_ReplicationExists = "InvalidParameter.ReplicationExists"
        case invalidParameter_UnsupportedRegion = "InvalidParameter.UnsupportedRegion"
        case limitExceeded_ErrNamespaceMaxLimit = "LimitExceeded.ErrNamespaceMaxLimit"
        case limitExceeded_ErrRepoMaxLimit = "LimitExceeded.ErrRepoMaxLimit"
        case limitExceeded_ErrTriggerMaxLimit = "LimitExceeded.ErrTriggerMaxLimit"
        case missingParameter = "MissingParameter"
        case missingParameter_MissingParameter = "MissingParameter.MissingParameter"
        case operationDenied = "OperationDenied"
        case operationDenied_QuotaOverLimit = "OperationDenied.QuotaOverLimit"
        case resourceInsufficient_ErrorInstanceNotRunning = "ResourceInsufficient.ErrorInstanceNotRunning"
        case resourceInsufficient_ErrorVpcDnsStatus = "ResourceInsufficient.ErrorVpcDnsStatus"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_ErrNoNamespace = "ResourceNotFound.ErrNoNamespace"
        case resourceNotFound_ErrNoRepo = "ResourceNotFound.ErrNoRepo"
        case resourceNotFound_ErrNoTag = "ResourceNotFound.ErrNoTag"
        case resourceNotFound_ErrNoTrigger = "ResourceNotFound.ErrNoTrigger"
        case resourceNotFound_ErrNoUser = "ResourceNotFound.ErrNoUser"
        case resourceNotFound_TcrResourceNotFound = "ResourceNotFound.TcrResourceNotFound"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_CreatePrivateZone = "UnsupportedOperation.CreatePrivateZone"
        case unsupportedOperation_CreatePrivateZoneRecord = "UnsupportedOperation.CreatePrivateZoneRecord"
        case unsupportedOperation_DeletePrivateZoneRecord = "UnsupportedOperation.DeletePrivateZoneRecord"
        case unsupportedOperation_DescribePrivateZoneList = "UnsupportedOperation.DescribePrivateZoneList"
        case unsupportedOperation_DescribePrivateZoneRecordList = "UnsupportedOperation.DescribePrivateZoneRecordList"
        case unsupportedOperation_ErrNoUserInitialized = "UnsupportedOperation.ErrNoUserInitialized"
        case unsupportedOperation_ModifyPrivateZoneRecord = "UnsupportedOperation.ModifyPrivateZoneRecord"
        case unsupportedOperation_ModifyPrivateZoneVpc = "UnsupportedOperation.ModifyPrivateZoneVpc"
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
    public static var authFailure: TCTcrError {
        TCTcrError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCTcrError {
        TCTcrError(.failedOperation)
    }
    
    /// 依赖服务异常。
    ///
    /// 接口操作执行中所依赖的服务异常，请稍候重试。
    public static var failedOperation_DependenceError: TCTcrError {
        TCTcrError(.failedOperation_DependenceError)
    }
    
    public static var failedOperation_ErrorGetDBDataError: TCTcrError {
        TCTcrError(.failedOperation_ErrorGetDBDataError)
    }
    
    public static var failedOperation_ErrorTcrInvalidMediaType: TCTcrError {
        TCTcrError(.failedOperation_ErrorTcrInvalidMediaType)
    }
    
    public static var failedOperation_ErrorTcrResourceConflict: TCTcrError {
        TCTcrError(.failedOperation_ErrorTcrResourceConflict)
    }
    
    public static var failedOperation_ErrorTcrUnauthorized: TCTcrError {
        TCTcrError(.failedOperation_ErrorTcrUnauthorized)
    }
    
    /// 获取数据库数据错误。
    public static var failedOperation_GetDBDataError: TCTcrError {
        TCTcrError(.failedOperation_GetDBDataError)
    }
    
    /// 获取安全组策略错误。
    public static var failedOperation_GetSecurityPolicyFail: TCTcrError {
        TCTcrError(.failedOperation_GetSecurityPolicyFail)
    }
    
    /// 获取TcrClient错误。
    public static var failedOperation_GetTcrClient: TCTcrError {
        TCTcrError(.failedOperation_GetTcrClient)
    }
    
    /// 操作取消。
    public static var failedOperation_OperationCancel: TCTcrError {
        TCTcrError(.failedOperation_OperationCancel)
    }
    
    /// 交易失败。
    ///
    /// 请检查帐户余额是否充足。
    public static var failedOperation_TradeFailed: TCTcrError {
        TCTcrError(.failedOperation_TradeFailed)
    }
    
    /// 校验仓库名称失败。
    public static var failedOperation_ValidateRegistryNameFail: TCTcrError {
        TCTcrError(.failedOperation_ValidateRegistryNameFail)
    }
    
    /// 校验支持地域错误。
    public static var failedOperation_ValidateSupportedRegionFail: TCTcrError {
        TCTcrError(.failedOperation_ValidateSupportedRegionFail)
    }
    
    /// 内部错误。
    public static var internalError: TCTcrError {
        TCTcrError(.internalError)
    }
    
    /// 创建私有域失败。
    public static var internalError_CreatePrivateZone: TCTcrError {
        TCTcrError(.internalError_CreatePrivateZone)
    }
    
    /// 创建私有域记录失败。
    public static var internalError_CreatePrivateZoneRecord: TCTcrError {
        TCTcrError(.internalError_CreatePrivateZoneRecord)
    }
    
    /// 数据库错误。
    public static var internalError_DbError: TCTcrError {
        TCTcrError(.internalError_DbError)
    }
    
    /// 删除私有域记录失败。
    public static var internalError_DeletePrivateZoneRecord: TCTcrError {
        TCTcrError(.internalError_DeletePrivateZoneRecord)
    }
    
    /// 查询vpc私有解析状态失败。
    public static var internalError_DescribeInternalEndpointDnsStatus: TCTcrError {
        TCTcrError(.internalError_DescribeInternalEndpointDnsStatus)
    }
    
    /// 查询私有域列表失败。
    public static var internalError_DescribePrivateZoneList: TCTcrError {
        TCTcrError(.internalError_DescribePrivateZoneList)
    }
    
    /// 查询私有域记录列表失败。
    public static var internalError_DescribePrivateZoneRecordList: TCTcrError {
        TCTcrError(.internalError_DescribePrivateZoneRecordList)
    }
    
    /// 查询开白vpc列表失败。
    public static var internalError_DescribePrivateZoneServiceList: TCTcrError {
        TCTcrError(.internalError_DescribePrivateZoneServiceList)
    }
    
    /// 目标冲突。
    public static var internalError_ErrConflict: TCTcrError {
        TCTcrError(.internalError_ErrConflict)
    }
    
    /// 目标不存在。
    public static var internalError_ErrNotExist: TCTcrError {
        TCTcrError(.internalError_ErrNotExist)
    }
    
    /// 鉴权失败。
    public static var internalError_ErrUnauthorized: TCTcrError {
        TCTcrError(.internalError_ErrUnauthorized)
    }
    
    /// 资源已存在。
    public static var internalError_ErrorConflict: TCTcrError {
        TCTcrError(.internalError_ErrorConflict)
    }
    
    /// 资源超过配额。
    public static var internalError_ErrorOverLimit: TCTcrError {
        TCTcrError(.internalError_ErrorOverLimit)
    }
    
    /// Tcr实例内部错误。
    public static var internalError_ErrorTcrInternal: TCTcrError {
        TCTcrError(.internalError_ErrorTcrInternal)
    }
    
    /// Tcr实例请求无效的Hearder类型。
    public static var internalError_ErrorTcrInvalidMediaType: TCTcrError {
        TCTcrError(.internalError_ErrorTcrInvalidMediaType)
    }
    
    /// Tcr实例资源冲突。
    public static var internalError_ErrorTcrResourceConflict: TCTcrError {
        TCTcrError(.internalError_ErrorTcrResourceConflict)
    }
    
    /// 没有Tcr操作权限。
    public static var internalError_ErrorTcrUnauthorized: TCTcrError {
        TCTcrError(.internalError_ErrorTcrUnauthorized)
    }
    
    /// 修改vpc与私有域关联关系失败。
    public static var internalError_ModifyPrivateZoneVpc: TCTcrError {
        TCTcrError(.internalError_ModifyPrivateZoneVpc)
    }
    
    /// 未知错误。
    public static var internalError_Unknown: TCTcrError {
        TCTcrError(.internalError_Unknown)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTcrError {
        TCTcrError(.invalidParameter)
    }
    
    /// 用户请求中的信息与其namespace不匹配。
    public static var invalidParameter_ErrNSMisMatch: TCTcrError {
        TCTcrError(.invalidParameter_ErrNSMisMatch)
    }
    
    /// 命名空间名称已经存在。
    public static var invalidParameter_ErrNamespaceExist: TCTcrError {
        TCTcrError(.invalidParameter_ErrNamespaceExist)
    }
    
    /// 命名空间已被占用。
    public static var invalidParameter_ErrNamespaceReserved: TCTcrError {
        TCTcrError(.invalidParameter_ErrNamespaceReserved)
    }
    
    /// 无效的参数，仓库已存在。
    public static var invalidParameter_ErrRepoExist: TCTcrError {
        TCTcrError(.invalidParameter_ErrRepoExist)
    }
    
    /// 参数过多。
    ///
    /// 减少传入的参数量
    public static var invalidParameter_ErrTooLarge: TCTcrError {
        TCTcrError(.invalidParameter_ErrTooLarge)
    }
    
    /// 触发器名称已存在。
    public static var invalidParameter_ErrTriggerExist: TCTcrError {
        TCTcrError(.invalidParameter_ErrTriggerExist)
    }
    
    /// 用户已经存在。
    public static var invalidParameter_ErrUserExist: TCTcrError {
        TCTcrError(.invalidParameter_ErrUserExist)
    }
    
    /// 实例名称已存在。
    public static var invalidParameter_ErrorNameExists: TCTcrError {
        TCTcrError(.invalidParameter_ErrorNameExists)
    }
    
    /// 实例名称非法。
    public static var invalidParameter_ErrorNameIllegal: TCTcrError {
        TCTcrError(.invalidParameter_ErrorNameIllegal)
    }
    
    /// 实例名称已保留。
    public static var invalidParameter_ErrorNameReserved: TCTcrError {
        TCTcrError(.invalidParameter_ErrorNameReserved)
    }
    
    /// 实例名称非法，格式不正确或者已保留。
    public static var invalidParameter_ErrorRegistryName: TCTcrError {
        TCTcrError(.invalidParameter_ErrorRegistryName)
    }
    
    /// 云标签超过10个上线。
    public static var invalidParameter_ErrorTagOverLimit: TCTcrError {
        TCTcrError(.invalidParameter_ErrorTagOverLimit)
    }
    
    /// 无效的TCR请求。
    public static var invalidParameter_ErrorTcrInvalidParameter: TCTcrError {
        TCTcrError(.invalidParameter_ErrorTcrInvalidParameter)
    }
    
    public static var invalidParameter_ReplicationExists: TCTcrError {
        TCTcrError(.invalidParameter_ReplicationExists)
    }
    
    /// 该地域不支持创建实例。
    public static var invalidParameter_UnsupportedRegion: TCTcrError {
        TCTcrError(.invalidParameter_UnsupportedRegion)
    }
    
    /// 用户命名空间达到配额。
    public static var limitExceeded_ErrNamespaceMaxLimit: TCTcrError {
        TCTcrError(.limitExceeded_ErrNamespaceMaxLimit)
    }
    
    /// 用户仓库已经达到最大配额。
    public static var limitExceeded_ErrRepoMaxLimit: TCTcrError {
        TCTcrError(.limitExceeded_ErrRepoMaxLimit)
    }
    
    /// 触发器达到配额。
    public static var limitExceeded_ErrTriggerMaxLimit: TCTcrError {
        TCTcrError(.limitExceeded_ErrTriggerMaxLimit)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCTcrError {
        TCTcrError(.missingParameter)
    }
    
    /// 缺少参数。
    public static var missingParameter_MissingParameter: TCTcrError {
        TCTcrError(.missingParameter_MissingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCTcrError {
        TCTcrError(.operationDenied)
    }
    
    /// 配额超限。
    public static var operationDenied_QuotaOverLimit: TCTcrError {
        TCTcrError(.operationDenied_QuotaOverLimit)
    }
    
    /// 实例状态异常。
    public static var resourceInsufficient_ErrorInstanceNotRunning: TCTcrError {
        TCTcrError(.resourceInsufficient_ErrorInstanceNotRunning)
    }
    
    /// Vpc dsn解析状态异常或未删除。
    ///
    /// 请先检查vpc dns解析
    public static var resourceInsufficient_ErrorVpcDnsStatus: TCTcrError {
        TCTcrError(.resourceInsufficient_ErrorVpcDnsStatus)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCTcrError {
        TCTcrError(.resourceNotFound)
    }
    
    /// 用户没有创建命名空间。
    public static var resourceNotFound_ErrNoNamespace: TCTcrError {
        TCTcrError(.resourceNotFound_ErrNoNamespace)
    }
    
    /// 仓库不存在。
    public static var resourceNotFound_ErrNoRepo: TCTcrError {
        TCTcrError(.resourceNotFound_ErrNoRepo)
    }
    
    /// tag不存在。
    public static var resourceNotFound_ErrNoTag: TCTcrError {
        TCTcrError(.resourceNotFound_ErrNoTag)
    }
    
    /// 触发器不存在。
    public static var resourceNotFound_ErrNoTrigger: TCTcrError {
        TCTcrError(.resourceNotFound_ErrNoTrigger)
    }
    
    /// 用户不存在（未注册）。
    public static var resourceNotFound_ErrNoUser: TCTcrError {
        TCTcrError(.resourceNotFound_ErrNoUser)
    }
    
    /// Tcr实例中的资源未找到。
    public static var resourceNotFound_TcrResourceNotFound: TCTcrError {
        TCTcrError(.resourceNotFound_TcrResourceNotFound)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCTcrError {
        TCTcrError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCTcrError {
        TCTcrError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCTcrError {
        TCTcrError(.unsupportedOperation)
    }
    
    public static var unsupportedOperation_CreatePrivateZone: TCTcrError {
        TCTcrError(.unsupportedOperation_CreatePrivateZone)
    }
    
    public static var unsupportedOperation_CreatePrivateZoneRecord: TCTcrError {
        TCTcrError(.unsupportedOperation_CreatePrivateZoneRecord)
    }
    
    public static var unsupportedOperation_DeletePrivateZoneRecord: TCTcrError {
        TCTcrError(.unsupportedOperation_DeletePrivateZoneRecord)
    }
    
    public static var unsupportedOperation_DescribePrivateZoneList: TCTcrError {
        TCTcrError(.unsupportedOperation_DescribePrivateZoneList)
    }
    
    public static var unsupportedOperation_DescribePrivateZoneRecordList: TCTcrError {
        TCTcrError(.unsupportedOperation_DescribePrivateZoneRecordList)
    }
    
    public static var unsupportedOperation_ErrNoUserInitialized: TCTcrError {
        TCTcrError(.unsupportedOperation_ErrNoUserInitialized)
    }
    
    public static var unsupportedOperation_ModifyPrivateZoneRecord: TCTcrError {
        TCTcrError(.unsupportedOperation_ModifyPrivateZoneRecord)
    }
    
    public static var unsupportedOperation_ModifyPrivateZoneVpc: TCTcrError {
        TCTcrError(.unsupportedOperation_ModifyPrivateZoneVpc)
    }
}

extension TCTcrError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, LimitExceeded.self, MissingParameter.self, OperationDenied.self, ResourceInsufficient.self, ResourceNotFound.self, UnsupportedOperation.self]
    }
}

extension TCTcrError: Equatable {
    public static func == (lhs: TCTcrError, rhs: TCTcrError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTcrError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTcrError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
