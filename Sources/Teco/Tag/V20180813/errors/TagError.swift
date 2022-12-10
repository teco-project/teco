public struct TCTagError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_ProjectDisabled = "FailedOperation.ProjectDisabled"
        case failedOperation_ProjectNumExceed = "FailedOperation.ProjectNumExceed"
        case failedOperation_ResourceAppIdNotSame = "FailedOperation.ResourceAppIdNotSame"
        case failedOperation_ResourceTagProcessing = "FailedOperation.ResourceTagProcessing"
        case failedOperation_TagAttachedQuota = "FailedOperation.TagAttachedQuota"
        case failedOperation_TagAttachedResource = "FailedOperation.TagAttachedResource"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue_DeleteTagsParamError = "InvalidParameterValue.DeleteTagsParamError"
        case invalidParameterValue_OffsetInvalid = "InvalidParameterValue.OffsetInvalid"
        case invalidParameterValue_RegionInvalid = "InvalidParameterValue.RegionInvalid"
        case invalidParameterValue_ReservedTagKey = "InvalidParameterValue.ReservedTagKey"
        case invalidParameterValue_ResourceDescriptionError = "InvalidParameterValue.ResourceDescriptionError"
        case invalidParameterValue_ResourceIdInvalid = "InvalidParameterValue.ResourceIdInvalid"
        case invalidParameterValue_ResourcePrefixInvalid = "InvalidParameterValue.ResourcePrefixInvalid"
        case invalidParameterValue_ServiceTypeInvalid = "InvalidParameterValue.ServiceTypeInvalid"
        case invalidParameterValue_TagFilters = "InvalidParameterValue.TagFilters"
        case invalidParameterValue_TagFiltersLengthExceeded = "InvalidParameterValue.TagFiltersLengthExceeded"
        case invalidParameterValue_TagKeyCharacterIllegal = "InvalidParameterValue.TagKeyCharacterIllegal"
        case invalidParameterValue_TagKeyDuplicate = "InvalidParameterValue.TagKeyDuplicate"
        case invalidParameterValue_TagKeyEmpty = "InvalidParameterValue.TagKeyEmpty"
        case invalidParameterValue_TagKeyLengthExceeded = "InvalidParameterValue.TagKeyLengthExceeded"
        case invalidParameterValue_TagValueCharacterIllegal = "InvalidParameterValue.TagValueCharacterIllegal"
        case invalidParameterValue_TagValueEmpty = "InvalidParameterValue.TagValueEmpty"
        case invalidParameterValue_TagValueLengthExceeded = "InvalidParameterValue.TagValueLengthExceeded"
        case invalidParameterValue_UinInvalid = "InvalidParameterValue.UinInvalid"
        case invalidParameter_PaginationTokenInvalid = "InvalidParameter.PaginationTokenInvalid"
        case invalidParameter_ProjectNameExisted = "InvalidParameter.ProjectNameExisted"
        case invalidParameter_ReservedTagKey = "InvalidParameter.ReservedTagKey"
        case invalidParameter_Tag = "InvalidParameter.Tag"
        case invalidParameter_UnsupportedService = "InvalidParameter.UnsupportedService"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_Quota = "LimitExceeded.Quota"
        case limitExceeded_ResourceAttachedTags = "LimitExceeded.ResourceAttachedTags"
        case limitExceeded_ResourceNumPerRequest = "LimitExceeded.ResourceNumPerRequest"
        case limitExceeded_TagKey = "LimitExceeded.TagKey"
        case limitExceeded_TagNumPerRequest = "LimitExceeded.TagNumPerRequest"
        case limitExceeded_TagValue = "LimitExceeded.TagValue"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case resourceInUse_TagDuplicate = "ResourceInUse.TagDuplicate"
        case resourceInUse_TagKeyAttached = "ResourceInUse.TagKeyAttached"
        case resourceNotFound_AttachedTagKeyNotFound = "ResourceNotFound.AttachedTagKeyNotFound"
        case resourceNotFound_RecordNotFound = "ResourceNotFound.RecordNotFound"
        case resourceNotFound_TagNonExist = "ResourceNotFound.TagNonExist"
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
    
    /// CAM签名/鉴权错误。
    public static var authFailure: TCTagError {
        TCTagError(.authFailure)
    }
    
    /// 未通过CAM鉴权。
    public static var authFailure_UnauthorizedOperation: TCTagError {
        TCTagError(.authFailure_UnauthorizedOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCTagError {
        TCTagError(.failedOperation)
    }
    
    /// 项目已禁用。
    public static var failedOperation_ProjectDisabled: TCTagError {
        TCTagError(.failedOperation_ProjectDisabled)
    }
    
    /// 项目数超过限制。
    public static var failedOperation_ProjectNumExceed: TCTagError {
        TCTagError(.failedOperation_ProjectNumExceed)
    }
    
    /// 单次请求的资源appId必须相同。
    public static var failedOperation_ResourceAppIdNotSame: TCTagError {
        TCTagError(.failedOperation_ResourceAppIdNotSame)
    }
    
    /// 资源标签正在处理中。
    public static var failedOperation_ResourceTagProcessing: TCTagError {
        TCTagError(.failedOperation_ResourceTagProcessing)
    }
    
    /// 标签已经关联配额。
    public static var failedOperation_TagAttachedQuota: TCTagError {
        TCTagError(.failedOperation_TagAttachedQuota)
    }
    
    /// 已关联资源的标签无法删除。
    public static var failedOperation_TagAttachedResource: TCTagError {
        TCTagError(.failedOperation_TagAttachedResource)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTagError {
        TCTagError(.invalidParameter)
    }
    
    /// DeleteTags中不能包含ReplaceTags或AddTags中元素。
    public static var invalidParameterValue_DeleteTagsParamError: TCTagError {
        TCTagError(.invalidParameterValue_DeleteTagsParamError)
    }
    
    /// offset error。
    public static var invalidParameterValue_OffsetInvalid: TCTagError {
        TCTagError(.invalidParameterValue_OffsetInvalid)
    }
    
    /// 地域错误。
    public static var invalidParameterValue_RegionInvalid: TCTagError {
        TCTagError(.invalidParameterValue_RegionInvalid)
    }
    
    /// 系统预留标签键 qcloud、tencent和project 禁止创建。
    public static var invalidParameterValue_ReservedTagKey: TCTagError {
        TCTagError(.invalidParameterValue_ReservedTagKey)
    }
    
    /// 资源描述错误。
    public static var invalidParameterValue_ResourceDescriptionError: TCTagError {
        TCTagError(.invalidParameterValue_ResourceDescriptionError)
    }
    
    /// 资源Id错误。
    public static var invalidParameterValue_ResourceIdInvalid: TCTagError {
        TCTagError(.invalidParameterValue_ResourceIdInvalid)
    }
    
    /// 资源前缀错误。
    public static var invalidParameterValue_ResourcePrefixInvalid: TCTagError {
        TCTagError(.invalidParameterValue_ResourcePrefixInvalid)
    }
    
    /// 业务类型错误。
    public static var invalidParameterValue_ServiceTypeInvalid: TCTagError {
        TCTagError(.invalidParameterValue_ServiceTypeInvalid)
    }
    
    /// TagFilters参数错误。
    public static var invalidParameterValue_TagFilters: TCTagError {
        TCTagError(.invalidParameterValue_TagFilters)
    }
    
    /// 过滤标签键对应标签值达到上限数 6。
    public static var invalidParameterValue_TagFiltersLengthExceeded: TCTagError {
        TCTagError(.invalidParameterValue_TagFiltersLengthExceeded)
    }
    
    /// 标签键包含非法字符。
    public static var invalidParameterValue_TagKeyCharacterIllegal: TCTagError {
        TCTagError(.invalidParameterValue_TagKeyCharacterIllegal)
    }
    
    /// TagList中存在重复的TagKey。
    public static var invalidParameterValue_TagKeyDuplicate: TCTagError {
        TCTagError(.invalidParameterValue_TagKeyDuplicate)
    }
    
    /// 标签键不能为空值。
    public static var invalidParameterValue_TagKeyEmpty: TCTagError {
        TCTagError(.invalidParameterValue_TagKeyEmpty)
    }
    
    /// 标签键长度超过限制。
    public static var invalidParameterValue_TagKeyLengthExceeded: TCTagError {
        TCTagError(.invalidParameterValue_TagKeyLengthExceeded)
    }
    
    /// 标签值包含非法字符。
    public static var invalidParameterValue_TagValueCharacterIllegal: TCTagError {
        TCTagError(.invalidParameterValue_TagValueCharacterIllegal)
    }
    
    /// 标签值不能为空值。
    public static var invalidParameterValue_TagValueEmpty: TCTagError {
        TCTagError(.invalidParameterValue_TagValueEmpty)
    }
    
    /// 标签值长度超过限制。
    public static var invalidParameterValue_TagValueLengthExceeded: TCTagError {
        TCTagError(.invalidParameterValue_TagValueLengthExceeded)
    }
    
    /// Uin参数不合法。
    public static var invalidParameterValue_UinInvalid: TCTagError {
        TCTagError(.invalidParameterValue_UinInvalid)
    }
    
    /// PaginationToken参数非法。
    public static var invalidParameter_PaginationTokenInvalid: TCTagError {
        TCTagError(.invalidParameter_PaginationTokenInvalid)
    }
    
    /// 项目名称已存在。
    public static var invalidParameter_ProjectNameExisted: TCTagError {
        TCTagError(.invalidParameter_ProjectNameExisted)
    }
    
    /// 系统预留标签键 qcloud、tencent和project 禁止创建。
    public static var invalidParameter_ReservedTagKey: TCTagError {
        TCTagError(.invalidParameter_ReservedTagKey)
    }
    
    /// Tag参数错误。
    public static var invalidParameter_Tag: TCTagError {
        TCTagError(.invalidParameter_Tag)
    }
    
    /// 当前业务不支持标签操作。
    public static var invalidParameter_UnsupportedService: TCTagError {
        TCTagError(.invalidParameter_UnsupportedService)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCTagError {
        TCTagError(.limitExceeded)
    }
    
    /// 超过配额限制。
    public static var limitExceeded_Quota: TCTagError {
        TCTagError(.limitExceeded_Quota)
    }
    
    /// 资源关联的标签数超过限制。
    public static var limitExceeded_ResourceAttachedTags: TCTagError {
        TCTagError(.limitExceeded_ResourceAttachedTags)
    }
    
    /// 单次请求的资源数达到上限。
    public static var limitExceeded_ResourceNumPerRequest: TCTagError {
        TCTagError(.limitExceeded_ResourceNumPerRequest)
    }
    
    /// 用户创建标签键达到上限数 1000。
    public static var limitExceeded_TagKey: TCTagError {
        TCTagError(.limitExceeded_TagKey)
    }
    
    /// 单次请求的标签数超过上限。
    public static var limitExceeded_TagNumPerRequest: TCTagError {
        TCTagError(.limitExceeded_TagNumPerRequest)
    }
    
    /// 单个标签键对应标签值达到上限数 1000。
    public static var limitExceeded_TagValue: TCTagError {
        TCTagError(.limitExceeded_TagValue)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCTagError {
        TCTagError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCTagError {
        TCTagError(.operationDenied)
    }
    
    /// 标签已存在。
    public static var resourceInUse_TagDuplicate: TCTagError {
        TCTagError(.resourceInUse_TagDuplicate)
    }
    
    /// 对应的标签键和资源已关联。
    public static var resourceInUse_TagKeyAttached: TCTagError {
        TCTagError(.resourceInUse_TagKeyAttached)
    }
    
    /// 资源关联的标签键不存在。
    public static var resourceNotFound_AttachedTagKeyNotFound: TCTagError {
        TCTagError(.resourceNotFound_AttachedTagKeyNotFound)
    }
    
    /// 记录不存在。
    public static var resourceNotFound_RecordNotFound: TCTagError {
        TCTagError(.resourceNotFound_RecordNotFound)
    }
    
    /// 标签不存在。
    public static var resourceNotFound_TagNonExist: TCTagError {
        TCTagError(.resourceNotFound_TagNonExist)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCTagError {
        TCTagError(.unsupportedOperation)
    }
}

extension TCTagError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceInUse.self, ResourceNotFound.self]
    }
}

extension TCTagError: Equatable {
    public static func == (lhs: TCTagError, rhs: TCTagError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTagError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}