public struct TCTioneError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_CamException = "AuthFailure.CamException"
        case authFailure_NoPermission = "AuthFailure.NoPermission"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_ApiGatewayQueryFailed = "FailedOperation.ApiGatewayQueryFailed"
        case failedOperation_BillingQueryFailed = "FailedOperation.BillingQueryFailed"
        case failedOperation_BindingTagsFailed = "FailedOperation.BindingTagsFailed"
        case failedOperation_CAMFailure = "FailedOperation.CAMFailure"
        case failedOperation_CallClusterFail = "FailedOperation.CallClusterFail"
        case failedOperation_ClsServiceNotActived = "FailedOperation.ClsServiceNotActived"
        case failedOperation_ClusterQueryFailed = "FailedOperation.ClusterQueryFailed"
        case failedOperation_CreateJobInstanceFailed = "FailedOperation.CreateJobInstanceFailed"
        case failedOperation_DCCosClientErr = "FailedOperation.DCCosClientErr"
        case failedOperation_DCCreateAsyncTaskError = "FailedOperation.DCCreateAsyncTaskError"
        case failedOperation_DCCreateUserCosClientErr = "FailedOperation.DCCreateUserCosClientErr"
        case failedOperation_DCDataAnnotationRpcErr = "FailedOperation.DCDataAnnotationRpcErr"
        case failedOperation_DCDatarepoRpcErr = "FailedOperation.DCDatarepoRpcErr"
        case failedOperation_DCDatasetExceedLimit = "FailedOperation.DCDatasetExceedLimit"
        case failedOperation_DCDatasetStatusNotReady = "FailedOperation.DCDatasetStatusNotReady"
        case failedOperation_DCGetUserTemporarySecretErr = "FailedOperation.DCGetUserTemporarySecretErr"
        case failedOperation_DCMarshalDataErr = "FailedOperation.DCMarshalDataErr"
        case failedOperation_DCQueryDatasetContentErr = "FailedOperation.DCQueryDatasetContentErr"
        case failedOperation_DCUnmarshalDataErr = "FailedOperation.DCUnmarshalDataErr"
        case failedOperation_DCUnsupportedOperation = "FailedOperation.DCUnsupportedOperation"
        case failedOperation_DuplicateName = "FailedOperation.DuplicateName"
        case failedOperation_ExecDatabaseFail = "FailedOperation.ExecDatabaseFail"
        case failedOperation_ExecTagFail = "FailedOperation.ExecTagFail"
        case failedOperation_InsufficientWhitelistQuota = "FailedOperation.InsufficientWhitelistQuota"
        case failedOperation_InvalidUserType = "FailedOperation.InvalidUserType"
        case failedOperation_KmsKeyNotOpen = "FailedOperation.KmsKeyNotOpen"
        case failedOperation_MoveModelDirFailed = "FailedOperation.MoveModelDirFailed"
        case failedOperation_NoFreeBucket = "FailedOperation.NoFreeBucket"
        case failedOperation_NoPermission = "FailedOperation.NoPermission"
        case failedOperation_NotAllow = "FailedOperation.NotAllow"
        case failedOperation_Processing = "FailedOperation.Processing"
        case failedOperation_QueryBindingTagsFailed = "FailedOperation.QueryBindingTagsFailed"
        case failedOperation_QueryDatabaseFail = "FailedOperation.QueryDatabaseFail"
        case failedOperation_QueryModelsByTagsFailed = "FailedOperation.QueryModelsByTagsFailed"
        case failedOperation_QueryPriceFailed = "FailedOperation.QueryPriceFailed"
        case failedOperation_QuerySpecsFailed = "FailedOperation.QuerySpecsFailed"
        case failedOperation_QueryTagFail = "FailedOperation.QueryTagFail"
        case failedOperation_RecordNotFound = "FailedOperation.RecordNotFound"
        case failedOperation_RepoBindByInstance = "FailedOperation.RepoBindByInstance"
        case failedOperation_StsQueryFailed = "FailedOperation.StsQueryFailed"
        case failedOperation_Timedout = "FailedOperation.Timedout"
        case failedOperation_UnknownInstanceType = "FailedOperation.UnknownInstanceType"
        case failedOperation_UnmarshalData = "FailedOperation.UnmarshalData"
        case internalError = "InternalError"
        case internalError_FreezeBillFailed = "InternalError.FreezeBillFailed"
        case internalError_InsufficientBalance = "InternalError.InsufficientBalance"
        case internalError_NoPermission = "InternalError.NoPermission"
        case internalError_NotAllow = "InternalError.NotAllow"
        case internalError_QueryHDFSInfoFailed = "InternalError.QueryHDFSInfoFailed"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_BadName = "InvalidParameterValue.BadName"
        case invalidParameterValue_ClsConfigRequired = "InvalidParameterValue.ClsConfigRequired"
        case invalidParameterValue_CodeRepoNotFound = "InvalidParameterValue.CodeRepoNotFound"
        case invalidParameterValue_DCAnnotationType = "InvalidParameterValue.DCAnnotationType"
        case invalidParameterValue_DCCosPathInfo = "InvalidParameterValue.DCCosPathInfo"
        case invalidParameterValue_DCDatasetAnnotationNotMatch = "InvalidParameterValue.DCDatasetAnnotationNotMatch"
        case invalidParameterValue_DCDatasetIdNotExist = "InvalidParameterValue.DCDatasetIdNotExist"
        case invalidParameterValue_DCDatasetNameExist = "InvalidParameterValue.DCDatasetNameExist"
        case invalidParameterValue_DCDatasetType = "InvalidParameterValue.DCDatasetType"
        case invalidParameterValue_DCFilterValues = "InvalidParameterValue.DCFilterValues"
        case invalidParameterValue_DatasetNumLimitExceeded = "InvalidParameterValue.DatasetNumLimitExceeded"
        case invalidParameterValue_DuplicateName = "InvalidParameterValue.DuplicateName"
        case invalidParameterValue_FrameworkVersionNotSupport = "InvalidParameterValue.FrameworkVersionNotSupport"
        case invalidParameterValue_InvalidFilter = "InvalidParameterValue.InvalidFilter"
        case invalidParameterValue_LimitExceeded = "InvalidParameterValue.LimitExceeded"
        case invalidParameter_TgwInvalidInterface = "InvalidParameter.TgwInvalidInterface"
        case invalidParameter_TgwInvalidRequestBody = "InvalidParameter.TgwInvalidRequestBody"
        case invalidParameter_ValidateError = "InvalidParameter.ValidateError"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case operationDenied_BalanceInsufficient = "OperationDenied.BalanceInsufficient"
        case operationDenied_MIYINGBalanceInsufficient = "OperationDenied.MIYINGBalanceInsufficient"
        case operationDenied_NetworkCidrIllegal = "OperationDenied.NetworkCidrIllegal"
        case operationDenied_WhitelistQuotaExceed = "OperationDenied.WhitelistQuotaExceed"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_NoModel = "ResourceNotFound.NoModel"
        case resourceUnavailable = "ResourceUnavailable"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_NoPermission = "UnauthorizedOperation.NoPermission"
        case unknownParameter = "UnknownParameter"
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
    public static var authFailure: TCTioneError {
        TCTioneError(.authFailure)
    }
    
    /// CAM系统异常。
    public static var authFailure_CamException: TCTioneError {
        TCTioneError(.authFailure_CamException)
    }
    
    /// 没有权限。
    ///
    /// 请授权
    public static var authFailure_NoPermission: TCTioneError {
        TCTioneError(.authFailure_NoPermission)
    }
    
    /// 未授权操作。
    public static var authFailure_UnauthorizedOperation: TCTioneError {
        TCTioneError(.authFailure_UnauthorizedOperation)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCTioneError {
        TCTioneError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCTioneError {
        TCTioneError(.failedOperation)
    }
    
    /// API网关访问失败，请重试。
    ///
    /// 请重试或提工单寻求帮助。
    public static var failedOperation_ApiGatewayQueryFailed: TCTioneError {
        TCTioneError(.failedOperation_ApiGatewayQueryFailed)
    }
    
    /// 计费模块访问失败。
    public static var failedOperation_BillingQueryFailed: TCTioneError {
        TCTioneError(.failedOperation_BillingQueryFailed)
    }
    
    /// 绑定标签失败。
    ///
    /// 请列表页重新编辑。
    public static var failedOperation_BindingTagsFailed: TCTioneError {
        TCTioneError(.failedOperation_BindingTagsFailed)
    }
    
    /// CAM内部错误。
    ///
    /// 请到CAM确认。
    public static var failedOperation_CAMFailure: TCTioneError {
        TCTioneError(.failedOperation_CAMFailure)
    }
    
    /// 调用集群失败。
    ///
    /// 请重试
    public static var failedOperation_CallClusterFail: TCTioneError {
        TCTioneError(.failedOperation_CallClusterFail)
    }
    
    /// 尚未开通CLS日志服务，请开前往开通。
    public static var failedOperation_ClsServiceNotActived: TCTioneError {
        TCTioneError(.failedOperation_ClsServiceNotActived)
    }
    
    /// 集群访问失败。
    ///
    /// 请稍后重试或提工单询问小助手
    public static var failedOperation_ClusterQueryFailed: TCTioneError {
        TCTioneError(.failedOperation_ClusterQueryFailed)
    }
    
    /// 启动实例失败。
    ///
    /// 请稍后重试。
    public static var failedOperation_CreateJobInstanceFailed: TCTioneError {
        TCTioneError(.failedOperation_CreateJobInstanceFailed)
    }
    
    /// cos client 内部错误。
    public static var failedOperation_DCCosClientErr: TCTioneError {
        TCTioneError(.failedOperation_DCCosClientErr)
    }
    
    /// 创建内部异步任务失败。
    public static var failedOperation_DCCreateAsyncTaskError: TCTioneError {
        TCTioneError(.failedOperation_DCCreateAsyncTaskError)
    }
    
    /// 创建cos client 失败。
    public static var failedOperation_DCCreateUserCosClientErr: TCTioneError {
        TCTioneError(.failedOperation_DCCreateUserCosClientErr)
    }
    
    /// 数据标注 rpc 内部错误。
    public static var failedOperation_DCDataAnnotationRpcErr: TCTioneError {
        TCTioneError(.failedOperation_DCDataAnnotationRpcErr)
    }
    
    /// 数据仓库 rpc 内部错误。
    public static var failedOperation_DCDatarepoRpcErr: TCTioneError {
        TCTioneError(.failedOperation_DCDatarepoRpcErr)
    }
    
    /// 数据集操作超过上限。
    public static var failedOperation_DCDatasetExceedLimit: TCTioneError {
        TCTioneError(.failedOperation_DCDatasetExceedLimit)
    }
    
    /// 数据集状态未恢复。
    public static var failedOperation_DCDatasetStatusNotReady: TCTioneError {
        TCTioneError(.failedOperation_DCDatasetStatusNotReady)
    }
    
    /// 获取用户临时秘钥失败。
    public static var failedOperation_DCGetUserTemporarySecretErr: TCTioneError {
        TCTioneError(.failedOperation_DCGetUserTemporarySecretErr)
    }
    
    /// 数据序列化错误。
    public static var failedOperation_DCMarshalDataErr: TCTioneError {
        TCTioneError(.failedOperation_DCMarshalDataErr)
    }
    
    /// 数据集获取文件内容异常。
    public static var failedOperation_DCQueryDatasetContentErr: TCTioneError {
        TCTioneError(.failedOperation_DCQueryDatasetContentErr)
    }
    
    /// 数据反序列化错误。
    public static var failedOperation_DCUnmarshalDataErr: TCTioneError {
        TCTioneError(.failedOperation_DCUnmarshalDataErr)
    }
    
    /// 数据集操作不支持。
    public static var failedOperation_DCUnsupportedOperation: TCTioneError {
        TCTioneError(.failedOperation_DCUnsupportedOperation)
    }
    
    /// 名称重复。
    public static var failedOperation_DuplicateName: TCTioneError {
        TCTioneError(.failedOperation_DuplicateName)
    }
    
    /// 数据库执行错误。
    public static var failedOperation_ExecDatabaseFail: TCTioneError {
        TCTioneError(.failedOperation_ExecDatabaseFail)
    }
    
    /// 标签操作失败。
    ///
    /// 请重试
    public static var failedOperation_ExecTagFail: TCTioneError {
        TCTioneError(.failedOperation_ExecTagFail)
    }
    
    /// 白名单免费配额不足。
    public static var failedOperation_InsufficientWhitelistQuota: TCTioneError {
        TCTioneError(.failedOperation_InsufficientWhitelistQuota)
    }
    
    /// 操作失败，用户类型异常。
    public static var failedOperation_InvalidUserType: TCTioneError {
        TCTioneError(.failedOperation_InvalidUserType)
    }
    
    /// 密钥管理系统服务未开通，请先开通腾讯云密钥管理系统服务。
    public static var failedOperation_KmsKeyNotOpen: TCTioneError {
        TCTioneError(.failedOperation_KmsKeyNotOpen)
    }
    
    /// 移动模型目录失败。
    ///
    /// 请到cos确认。
    public static var failedOperation_MoveModelDirFailed: TCTioneError {
        TCTioneError(.failedOperation_MoveModelDirFailed)
    }
    
    /// 没有空闲免费桶。
    public static var failedOperation_NoFreeBucket: TCTioneError {
        TCTioneError(.failedOperation_NoFreeBucket)
    }
    
    /// 没有权限。
    public static var failedOperation_NoPermission: TCTioneError {
        TCTioneError(.failedOperation_NoPermission)
    }
    
    /// 操作不允许。
    public static var failedOperation_NotAllow: TCTioneError {
        TCTioneError(.failedOperation_NotAllow)
    }
    
    /// 请求正在处理中，请稍候再试。
    public static var failedOperation_Processing: TCTioneError {
        TCTioneError(.failedOperation_Processing)
    }
    
    /// 查询资源标签失败。
    ///
    /// 请到标签中心确认。
    public static var failedOperation_QueryBindingTagsFailed: TCTioneError {
        TCTioneError(.failedOperation_QueryBindingTagsFailed)
    }
    
    /// 数据库查询错误。
    public static var failedOperation_QueryDatabaseFail: TCTioneError {
        TCTioneError(.failedOperation_QueryDatabaseFail)
    }
    
    /// 根据标签查询资源失败。
    ///
    /// 请到标签中心确认。
    public static var failedOperation_QueryModelsByTagsFailed: TCTioneError {
        TCTioneError(.failedOperation_QueryModelsByTagsFailed)
    }
    
    /// 查询计费价格失败。
    ///
    /// 请稍后重试。
    public static var failedOperation_QueryPriceFailed: TCTioneError {
        TCTioneError(.failedOperation_QueryPriceFailed)
    }
    
    /// 查询计费项失败。
    public static var failedOperation_QuerySpecsFailed: TCTioneError {
        TCTioneError(.failedOperation_QuerySpecsFailed)
    }
    
    /// 请重试
    public static var failedOperation_QueryTagFail: TCTioneError {
        TCTioneError(.failedOperation_QueryTagFail)
    }
    
    /// 记录不存在。
    ///
    /// 确认传参是否有问题
    public static var failedOperation_RecordNotFound: TCTioneError {
        TCTioneError(.failedOperation_RecordNotFound)
    }
    
    /// 存储库有绑定的实例，请先删除绑定的实例。
    public static var failedOperation_RepoBindByInstance: TCTioneError {
        TCTioneError(.failedOperation_RepoBindByInstance)
    }
    
    /// 密钥服务访问失败，请重试。
    public static var failedOperation_StsQueryFailed: TCTioneError {
        TCTioneError(.failedOperation_StsQueryFailed)
    }
    
    /// 实例启动失败。
    public static var failedOperation_Timedout: TCTioneError {
        TCTioneError(.failedOperation_Timedout)
    }
    
    /// 未知的实例规格。
    ///
    /// 请查看规格文档，填写正确的实例规格
    public static var failedOperation_UnknownInstanceType: TCTioneError {
        TCTioneError(.failedOperation_UnknownInstanceType)
    }
    
    /// 数据解析失败。
    public static var failedOperation_UnmarshalData: TCTioneError {
        TCTioneError(.failedOperation_UnmarshalData)
    }
    
    /// 内部错误。
    public static var internalError: TCTioneError {
        TCTioneError(.internalError)
    }
    
    /// 冻结失败。
    ///
    /// 余额不足，请充值。
    public static var internalError_FreezeBillFailed: TCTioneError {
        TCTioneError(.internalError_FreezeBillFailed)
    }
    
    /// 余额不足。
    ///
    /// 账户余额不足，无法创建任务，请充值后重新操作。
    public static var internalError_InsufficientBalance: TCTioneError {
        TCTioneError(.internalError_InsufficientBalance)
    }
    
    /// 请检查相关权限是否允许操作。
    public static var internalError_NoPermission: TCTioneError {
        TCTioneError(.internalError_NoPermission)
    }
    
    /// 请检查操作是否正确。
    public static var internalError_NotAllow: TCTioneError {
        TCTioneError(.internalError_NotAllow)
    }
    
    public static var internalError_QueryHDFSInfoFailed: TCTioneError {
        TCTioneError(.internalError_QueryHDFSInfoFailed)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTioneError {
        TCTioneError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCTioneError {
        TCTioneError(.invalidParameterValue)
    }
    
    /// 名称不合法。
    public static var invalidParameterValue_BadName: TCTioneError {
        TCTioneError(.invalidParameterValue_BadName)
    }
    
    /// 请设置日志集、日志主题ID。
    public static var invalidParameterValue_ClsConfigRequired: TCTioneError {
        TCTioneError(.invalidParameterValue_ClsConfigRequired)
    }
    
    /// 存储库不存在。
    public static var invalidParameterValue_CodeRepoNotFound: TCTioneError {
        TCTioneError(.invalidParameterValue_CodeRepoNotFound)
    }
    
    /// 不支持的标注类型。
    public static var invalidParameterValue_DCAnnotationType: TCTioneError {
        TCTioneError(.invalidParameterValue_DCAnnotationType)
    }
    
    /// 存储桶参数错误。
    public static var invalidParameterValue_DCCosPathInfo: TCTioneError {
        TCTioneError(.invalidParameterValue_DCCosPathInfo)
    }
    
    /// 数据集标注状态不匹配。
    public static var invalidParameterValue_DCDatasetAnnotationNotMatch: TCTioneError {
        TCTioneError(.invalidParameterValue_DCDatasetAnnotationNotMatch)
    }
    
    /// 数据集Id不存在。
    public static var invalidParameterValue_DCDatasetIdNotExist: TCTioneError {
        TCTioneError(.invalidParameterValue_DCDatasetIdNotExist)
    }
    
    /// 数据集重名已存在。
    public static var invalidParameterValue_DCDatasetNameExist: TCTioneError {
        TCTioneError(.invalidParameterValue_DCDatasetNameExist)
    }
    
    /// 不支持的数据集类型。
    public static var invalidParameterValue_DCDatasetType: TCTioneError {
        TCTioneError(.invalidParameterValue_DCDatasetType)
    }
    
    /// 不支持的过滤参数。
    public static var invalidParameterValue_DCFilterValues: TCTioneError {
        TCTioneError(.invalidParameterValue_DCFilterValues)
    }
    
    /// 数据集数量超过限制。
    public static var invalidParameterValue_DatasetNumLimitExceeded: TCTioneError {
        TCTioneError(.invalidParameterValue_DatasetNumLimitExceeded)
    }
    
    /// 实例名称冲突，请更换名称后重试。
    public static var invalidParameterValue_DuplicateName: TCTioneError {
        TCTioneError(.invalidParameterValue_DuplicateName)
    }
    
    /// 训练框架对应的版本不支持，请阅读文档查看TIONE目前支持的框架和版本。
    ///
    /// 查看文档支持对应的框架和版本
    public static var invalidParameterValue_FrameworkVersionNotSupport: TCTioneError {
        TCTioneError(.invalidParameterValue_FrameworkVersionNotSupport)
    }
    
    /// 检查过滤器参数
    public static var invalidParameterValue_InvalidFilter: TCTioneError {
        TCTioneError(.invalidParameterValue_InvalidFilter)
    }
    
    /// 减少参数值数量
    public static var invalidParameterValue_LimitExceeded: TCTioneError {
        TCTioneError(.invalidParameterValue_LimitExceeded)
    }
    
    /// 无效的接口。
    public static var invalidParameter_TgwInvalidInterface: TCTioneError {
        TCTioneError(.invalidParameter_TgwInvalidInterface)
    }
    
    /// 无效的请求包体。
    ///
    /// 检查必填字段是否填写
    public static var invalidParameter_TgwInvalidRequestBody: TCTioneError {
        TCTioneError(.invalidParameter_TgwInvalidRequestBody)
    }
    
    /// 请求参数校验失败。
    ///
    /// 请确认请求参数
    public static var invalidParameter_ValidateError: TCTioneError {
        TCTioneError(.invalidParameter_ValidateError)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCTioneError {
        TCTioneError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCTioneError {
        TCTioneError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCTioneError {
        TCTioneError(.operationDenied)
    }
    
    /// 余额不足，创建/更新失败。
    ///
    /// 请充值并查看服务使用的冻结规则
    public static var operationDenied_BalanceInsufficient: TCTioneError {
        TCTioneError(.operationDenied_BalanceInsufficient)
    }
    
    public static var operationDenied_MIYINGBalanceInsufficient: TCTioneError {
        TCTioneError(.operationDenied_MIYINGBalanceInsufficient)
    }
    
    public static var operationDenied_NetworkCidrIllegal: TCTioneError {
        TCTioneError(.operationDenied_NetworkCidrIllegal)
    }
    
    /// 白名单免费配额不足。
    public static var operationDenied_WhitelistQuotaExceed: TCTioneError {
        TCTioneError(.operationDenied_WhitelistQuotaExceed)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCTioneError {
        TCTioneError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCTioneError {
        TCTioneError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCTioneError {
        TCTioneError(.resourceNotFound)
    }
    
    /// 没有该模型。
    ///
    /// 请输入正确的id或创建新模型。
    public static var resourceNotFound_NoModel: TCTioneError {
        TCTioneError(.resourceNotFound_NoModel)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCTioneError {
        TCTioneError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCTioneError {
        TCTioneError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCTioneError {
        TCTioneError(.unauthorizedOperation)
    }
    
    /// 资源不属于当前登陆用户主账号，无权限访问。
    ///
    /// 请确认资源ID是否正确，或者切换账号进行访问。
    public static var unauthorizedOperation_NoPermission: TCTioneError {
        TCTioneError(.unauthorizedOperation_NoPermission)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCTioneError {
        TCTioneError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCTioneError {
        TCTioneError(.unsupportedOperation)
    }
}

extension TCTioneError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, OperationDenied.self, ResourceNotFound.self, UnauthorizedOperation.self]
    }
}

extension TCTioneError: Equatable {
    public static func == (lhs: TCTioneError, rhs: TCTioneError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTioneError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTioneError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
