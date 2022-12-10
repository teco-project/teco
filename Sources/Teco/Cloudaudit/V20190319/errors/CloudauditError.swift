public struct TCCloudauditError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_CreateBucketFail = "FailedOperation.CreateBucketFail"
        case internalError = "InternalError"
        case internalError_CmqError = "InternalError.CmqError"
        case internalError_CreateAuditError = "InternalError.CreateAuditError"
        case internalError_DeleteAuditError = "InternalError.DeleteAuditError"
        case internalError_DescribeAuditError = "InternalError.DescribeAuditError"
        case internalError_InquireAuditCreditError = "InternalError.InquireAuditCreditError"
        case internalError_ListAuditsError = "InternalError.ListAuditsError"
        case internalError_ListCmqEnableRegionError = "InternalError.ListCmqEnableRegionError"
        case internalError_ListCosEnableRegionError = "InternalError.ListCosEnableRegionError"
        case internalError_ListKeyAliasByRegionError = "InternalError.ListKeyAliasByRegionError"
        case internalError_SearchError = "InternalError.SearchError"
        case internalError_StartLoggingError = "InternalError.StartLoggingError"
        case internalError_StopLoggingError = "InternalError.StopLoggingError"
        case internalError_UpdateAuditError = "InternalError.UpdateAuditError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue_AliasAlreadyExists = "InvalidParameterValue.AliasAlreadyExists"
        case invalidParameterValue_AuditNameError = "InvalidParameterValue.AuditNameError"
        case invalidParameterValue_CmqRegionError = "InvalidParameterValue.CmqRegionError"
        case invalidParameterValue_CosNameError = "InvalidParameterValue.CosNameError"
        case invalidParameterValue_CosRegionError = "InvalidParameterValue.CosRegionError"
        case invalidParameterValue_IsCreateNewBucketError = "InvalidParameterValue.IsCreateNewBucketError"
        case invalidParameterValue_IsCreateNewQueueError = "InvalidParameterValue.IsCreateNewQueueError"
        case invalidParameterValue_IsEnableCmqNotifyError = "InvalidParameterValue.IsEnableCmqNotifyError"
        case invalidParameterValue_KmsRegionError = "InvalidParameterValue.KmsRegionError"
        case invalidParameterValue_LogFilePrefixError = "InvalidParameterValue.LogFilePrefixError"
        case invalidParameterValue_MaxResult = "InvalidParameterValue.MaxResult"
        case invalidParameterValue_QueueNameError = "InvalidParameterValue.QueueNameError"
        case invalidParameterValue_ReadWriteAttributeError = "InvalidParameterValue.ReadWriteAttributeError"
        case invalidParameterValue_Time = "InvalidParameterValue.Time"
        case invalidParameterValue_attributeKey = "InvalidParameterValue.attributeKey"
        case invalidParameter_Time = "InvalidParameter.Time"
        case limitExceeded_OverAmount = "LimitExceeded.OverAmount"
        case limitExceeded_OverTime = "LimitExceeded.OverTime"
        case missingParameter_MissAuditName = "MissingParameter.MissAuditName"
        case missingParameter_MissCosBucketName = "MissingParameter.MissCosBucketName"
        case missingParameter_MissCosRegion = "MissingParameter.MissCosRegion"
        case missingParameter_cmq = "MissingParameter.cmq"
        case resourceInUse_AlreadyExistsSameAudit = "ResourceInUse.AlreadyExistsSameAudit"
        case resourceInUse_AlreadyExistsSameAuditCmqConfig = "ResourceInUse.AlreadyExistsSameAuditCmqConfig"
        case resourceInUse_AlreadyExistsSameAuditCosConfig = "ResourceInUse.AlreadyExistsSameAuditCosConfig"
        case resourceInUse_CosBucketExists = "ResourceInUse.CosBucketExists"
        case resourceNotFound_AuditNotExist = "ResourceNotFound.AuditNotExist"
        case resourceNotFound_RoleNotExist = "ResourceNotFound.RoleNotExist"
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
    public static var failedOperation: TCCloudauditError {
        TCCloudauditError(.failedOperation)
    }
    
    /// 创建COS存储桶失败
    public static var failedOperation_CreateBucketFail: TCCloudauditError {
        TCCloudauditError(.failedOperation_CreateBucketFail)
    }
    
    /// 内部错误。
    public static var internalError: TCCloudauditError {
        TCCloudauditError(.internalError)
    }
    
    /// 创建cmq时发生异常，可能您准备创建的cmq队列已经存在，也有可能您没有权限或者欠费。
    public static var internalError_CmqError: TCCloudauditError {
        TCCloudauditError(.internalError_CmqError)
    }
    
    /// 创建跟踪集错误，请联系开发人员。
    public static var internalError_CreateAuditError: TCCloudauditError {
        TCCloudauditError(.internalError_CreateAuditError)
    }
    
    /// 删除跟踪集失败，请联系开发人员
    public static var internalError_DeleteAuditError: TCCloudauditError {
        TCCloudauditError(.internalError_DeleteAuditError)
    }
    
    /// 查看跟踪集详情错误，请联系开发人员
    public static var internalError_DescribeAuditError: TCCloudauditError {
        TCCloudauditError(.internalError_DescribeAuditError)
    }
    
    /// 查询可创建跟踪集的数量错误，请联系开发人员
    public static var internalError_InquireAuditCreditError: TCCloudauditError {
        TCCloudauditError(.internalError_InquireAuditCreditError)
    }
    
    /// 查询跟踪集概要内部错误，请联系开发人员。
    public static var internalError_ListAuditsError: TCCloudauditError {
        TCCloudauditError(.internalError_ListAuditsError)
    }
    
    /// 内部错误，请联系开发人员
    public static var internalError_ListCmqEnableRegionError: TCCloudauditError {
        TCCloudauditError(.internalError_ListCmqEnableRegionError)
    }
    
    /// 内部错误，请联系开发人员
    public static var internalError_ListCosEnableRegionError: TCCloudauditError {
        TCCloudauditError(.internalError_ListCosEnableRegionError)
    }
    
    /// 内部错误，请联系开发人员
    public static var internalError_ListKeyAliasByRegionError: TCCloudauditError {
        TCCloudauditError(.internalError_ListKeyAliasByRegionError)
    }
    
    /// 内部错误，请联系开发人员
    public static var internalError_SearchError: TCCloudauditError {
        TCCloudauditError(.internalError_SearchError)
    }
    
    /// 内部错误，请联系开发人员
    public static var internalError_StartLoggingError: TCCloudauditError {
        TCCloudauditError(.internalError_StartLoggingError)
    }
    
    /// 内部错误，请联系开发人员
    public static var internalError_StopLoggingError: TCCloudauditError {
        TCCloudauditError(.internalError_StopLoggingError)
    }
    
    /// 内部错误，请联系开发人员
    public static var internalError_UpdateAuditError: TCCloudauditError {
        TCCloudauditError(.internalError_UpdateAuditError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCCloudauditError {
        TCCloudauditError(.invalidParameter)
    }
    
    /// 别名已经存在
    public static var invalidParameterValue_AliasAlreadyExists: TCCloudauditError {
        TCCloudauditError(.invalidParameterValue_AliasAlreadyExists)
    }
    
    /// 跟踪集名称不符合规则
    public static var invalidParameterValue_AuditNameError: TCCloudauditError {
        TCCloudauditError(.invalidParameterValue_AuditNameError)
    }
    
    /// 云审计目前不支持输入的cmq地域
    public static var invalidParameterValue_CmqRegionError: TCCloudauditError {
        TCCloudauditError(.invalidParameterValue_CmqRegionError)
    }
    
    /// 输入的cos存储桶名称不符合规范
    public static var invalidParameterValue_CosNameError: TCCloudauditError {
        TCCloudauditError(.invalidParameterValue_CosNameError)
    }
    
    /// 云审计目前不支持输入的cos地域
    public static var invalidParameterValue_CosRegionError: TCCloudauditError {
        TCCloudauditError(.invalidParameterValue_CosRegionError)
    }
    
    /// IsCreateNewBucket的有效取值范围是0和1，0代表不创建新的存储桶，1代表创建新的存储桶。
    public static var invalidParameterValue_IsCreateNewBucketError: TCCloudauditError {
        TCCloudauditError(.invalidParameterValue_IsCreateNewBucketError)
    }
    
    /// IsCreateNewQueue的有效取值范围是0和1，0代表不新创建，1代表新创建。
    public static var invalidParameterValue_IsCreateNewQueueError: TCCloudauditError {
        TCCloudauditError(.invalidParameterValue_IsCreateNewQueueError)
    }
    
    /// IsEnableCmqNotify的有效取值范围是0和1，0代表不开启投递cmq,1代表开启cmq投递。
    public static var invalidParameterValue_IsEnableCmqNotifyError: TCCloudauditError {
        TCCloudauditError(.invalidParameterValue_IsEnableCmqNotifyError)
    }
    
    /// 云审计暂不支持该地域的KMS
    public static var invalidParameterValue_KmsRegionError: TCCloudauditError {
        TCCloudauditError(.invalidParameterValue_KmsRegionError)
    }
    
    /// 日志前缀格式错误
    public static var invalidParameterValue_LogFilePrefixError: TCCloudauditError {
        TCCloudauditError(.invalidParameterValue_LogFilePrefixError)
    }
    
    /// 单次检索支持的最大返回条数是50
    public static var invalidParameterValue_MaxResult: TCCloudauditError {
        TCCloudauditError(.invalidParameterValue_MaxResult)
    }
    
    /// 输入的队列名称不符合规范
    public static var invalidParameterValue_QueueNameError: TCCloudauditError {
        TCCloudauditError(.invalidParameterValue_QueueNameError)
    }
    
    /// 读写属性值仅支持：1,2,3。1代表只读，2代表只写，3代表全部。
    public static var invalidParameterValue_ReadWriteAttributeError: TCCloudauditError {
        TCCloudauditError(.invalidParameterValue_ReadWriteAttributeError)
    }
    
    /// 开始时间不能大于结束时间
    public static var invalidParameterValue_Time: TCCloudauditError {
        TCCloudauditError(.invalidParameterValue_Time)
    }
    
    /// AttributeKey的有效取值范围是:RequestId、EventName、ReadOnly、Username、ResourceType、ResourceName和AccessKeyId
    public static var invalidParameterValue_attributeKey: TCCloudauditError {
        TCCloudauditError(.invalidParameterValue_attributeKey)
    }
    
    /// 必须包含开始时间和结束时间，且必须为整形时间戳（精确到秒）
    public static var invalidParameter_Time: TCCloudauditError {
        TCCloudauditError(.invalidParameter_Time)
    }
    
    /// 超过跟踪集的最大值
    public static var limitExceeded_OverAmount: TCCloudauditError {
        TCCloudauditError(.limitExceeded_OverAmount)
    }
    
    /// 检索支持的有效时间范围是7天
    public static var limitExceeded_OverTime: TCCloudauditError {
        TCCloudauditError(.limitExceeded_OverTime)
    }
    
    /// 缺少跟踪集名称
    public static var missingParameter_MissAuditName: TCCloudauditError {
        TCCloudauditError(.missingParameter_MissAuditName)
    }
    
    /// 缺少cos存储桶参数
    public static var missingParameter_MissCosBucketName: TCCloudauditError {
        TCCloudauditError(.missingParameter_MissCosBucketName)
    }
    
    /// 缺少cos地域参数
    public static var missingParameter_MissCosRegion: TCCloudauditError {
        TCCloudauditError(.missingParameter_MissCosRegion)
    }
    
    /// IsEnableCmqNotify输入1的话，IsCreateNewQueue、CmqQueueName和CmqRegion都是必须参数。
    public static var missingParameter_cmq: TCCloudauditError {
        TCCloudauditError(.missingParameter_cmq)
    }
    
    /// 已经存在相同名称的跟踪集
    public static var resourceInUse_AlreadyExistsSameAudit: TCCloudauditError {
        TCCloudauditError(.resourceInUse_AlreadyExistsSameAudit)
    }
    
    /// 已经存在相同cmq投递配置的跟踪集
    public static var resourceInUse_AlreadyExistsSameAuditCmqConfig: TCCloudauditError {
        TCCloudauditError(.resourceInUse_AlreadyExistsSameAuditCmqConfig)
    }
    
    /// 已经存在相同cos投递配置的跟踪集
    public static var resourceInUse_AlreadyExistsSameAuditCosConfig: TCCloudauditError {
        TCCloudauditError(.resourceInUse_AlreadyExistsSameAuditCosConfig)
    }
    
    /// cos存储桶已经存在
    public static var resourceInUse_CosBucketExists: TCCloudauditError {
        TCCloudauditError(.resourceInUse_CosBucketExists)
    }
    
    /// 跟踪集不存在
    public static var resourceNotFound_AuditNotExist: TCCloudauditError {
        TCCloudauditError(.resourceNotFound_AuditNotExist)
    }
    
    public static var resourceNotFound_RoleNotExist: TCCloudauditError {
        TCCloudauditError(.resourceNotFound_RoleNotExist)
    }
}

extension TCCloudauditError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, MissingParameter.self, ResourceInUse.self, ResourceNotFound.self]
    }
}

extension TCCloudauditError: Equatable {
    public static func == (lhs: TCCloudauditError, rhs: TCCloudauditError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCloudauditError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCloudauditError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
