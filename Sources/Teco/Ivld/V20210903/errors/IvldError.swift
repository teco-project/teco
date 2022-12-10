public struct TCIvldError: TCErrorType {
    enum Code: String {
        case authFailure_InvalidSecretId = "AuthFailure.InvalidSecretId"
        case authFailure_MFAFailure = "AuthFailure.MFAFailure"
        case authFailure_SecretIdNotFound = "AuthFailure.SecretIdNotFound"
        case authFailure_SignatureExpire = "AuthFailure.SignatureExpire"
        case authFailure_SignatureFailure = "AuthFailure.SignatureFailure"
        case authFailure_TaskFinished = "AuthFailure.TaskFinished"
        case authFailure_TokenFailure = "AuthFailure.TokenFailure"
        case authFailure_UserActivated = "AuthFailure.UserActivated"
        case authFailure_UserInvalidStatus = "AuthFailure.UserInvalidStatus"
        case authFailure_UserNotFound = "AuthFailure.UserNotFound"
        case authFailure_UserStopArrear = "AuthFailure.UserStopArrear"
        case failedOperation = "FailedOperation"
        case failedOperation_AiTemplateNotExist = "FailedOperation.AiTemplateNotExist"
        case failedOperation_CategoryExist = "FailedOperation.CategoryExist"
        case failedOperation_CategoryLevelChanged = "FailedOperation.CategoryLevelChanged"
        case failedOperation_CategoryReferred = "FailedOperation.CategoryReferred"
        case failedOperation_CustomGroupAlreadyExist = "FailedOperation.CustomGroupAlreadyExist"
        case failedOperation_DBConnectionError = "FailedOperation.DBConnectionError"
        case failedOperation_DownloadFailed = "FailedOperation.DownloadFailed"
        case failedOperation_FeatureAlgoFailed = "FailedOperation.FeatureAlgoFailed"
        case failedOperation_GetCAMTokenFailed = "FailedOperation.GetCAMTokenFailed"
        case failedOperation_GetTaskListFailed = "FailedOperation.GetTaskListFailed"
        case failedOperation_GetVideoMetadataFailed = "FailedOperation.GetVideoMetadataFailed"
        case failedOperation_ImageNumExceeded = "FailedOperation.ImageNumExceeded"
        case failedOperation_MD5Mismatch = "FailedOperation.MD5Mismatch"
        case failedOperation_MediaAlreadyExist = "FailedOperation.MediaAlreadyExist"
        case failedOperation_MediaExpired = "FailedOperation.MediaExpired"
        case failedOperation_MediaInUse = "FailedOperation.MediaInUse"
        case failedOperation_MediaNotReady = "FailedOperation.MediaNotReady"
        case failedOperation_MultipleFacesInImage = "FailedOperation.MultipleFacesInImage"
        case failedOperation_NoFaceInImage = "FailedOperation.NoFaceInImage"
        case failedOperation_OpenChargeFailed = "FailedOperation.OpenChargeFailed"
        case failedOperation_PersonDuplicated = "FailedOperation.PersonDuplicated"
        case failedOperation_PersonNotMatched = "FailedOperation.PersonNotMatched"
        case failedOperation_PersonNumExceeded = "FailedOperation.PersonNumExceeded"
        case failedOperation_QualityAlgoFailed = "FailedOperation.QualityAlgoFailed"
        case failedOperation_QualityTooLow = "FailedOperation.QualityTooLow"
        case failedOperation_SnapshotDeserializeFailed = "FailedOperation.SnapshotDeserializeFailed"
        case failedOperation_StopFlowFailed = "FailedOperation.StopFlowFailed"
        case failedOperation_TaskAlreadyExist = "FailedOperation.TaskAlreadyExist"
        case failedOperation_TaskNotFinished = "FailedOperation.TaskNotFinished"
        case failedOperation_TranscodeFailed = "FailedOperation.TranscodeFailed"
        case failedOperation_UploadFailed = "FailedOperation.UploadFailed"
        case internalError = "InternalError"
        case internalError_DBConnectionError = "InternalError.DBConnectionError"
        case internalError_DBOperationError = "InternalError.DBOperationError"
        case internalError_InnerError = "InternalError.InnerError"
        case internalError_InternalOverflow = "InternalError.InternalOverflow"
        case invalidParameter = "InvalidParameter"
        case invalidParameter_InvalidCategoryId = "InvalidParameter.InvalidCategoryId"
        case invalidParameter_InvalidFilePath = "InvalidParameter.InvalidFilePath"
        case invalidParameter_InvalidImage = "InvalidParameter.InvalidImage"
        case invalidParameter_InvalidImageId = "InvalidParameter.InvalidImageId"
        case invalidParameter_InvalidL1Category = "InvalidParameter.InvalidL1Category"
        case invalidParameter_InvalidL2Category = "InvalidParameter.InvalidL2Category"
        case invalidParameter_InvalidMD5 = "InvalidParameter.InvalidMD5"
        case invalidParameter_InvalidMediaId = "InvalidParameter.InvalidMediaId"
        case invalidParameter_InvalidMediaLabel = "InvalidParameter.InvalidMediaLabel"
        case invalidParameter_InvalidMediaLang = "InvalidParameter.InvalidMediaLang"
        case invalidParameter_InvalidMediaName = "InvalidParameter.InvalidMediaName"
        case invalidParameter_InvalidMediaPreknownInfo = "InvalidParameter.InvalidMediaPreknownInfo"
        case invalidParameter_InvalidMediaStatus = "InvalidParameter.InvalidMediaStatus"
        case invalidParameter_InvalidMediaType = "InvalidParameter.InvalidMediaType"
        case invalidParameter_InvalidName = "InvalidParameter.InvalidName"
        case invalidParameter_InvalidPageNumber = "InvalidParameter.InvalidPageNumber"
        case invalidParameter_InvalidPageSize = "InvalidParameter.InvalidPageSize"
        case invalidParameter_InvalidParam = "InvalidParameter.InvalidParam"
        case invalidParameter_InvalidPersonId = "InvalidParameter.InvalidPersonId"
        case invalidParameter_InvalidSortBy = "InvalidParameter.InvalidSortBy"
        case invalidParameter_InvalidSortOrder = "InvalidParameter.InvalidSortOrder"
        case invalidParameter_InvalidTaskId = "InvalidParameter.InvalidTaskId"
        case invalidParameter_InvalidTaskName = "InvalidParameter.InvalidTaskName"
        case invalidParameter_InvalidTaskStatus = "InvalidParameter.InvalidTaskStatus"
        case invalidParameter_InvalidURL = "InvalidParameter.InvalidURL"
        case invalidParameter_InvalidUin = "InvalidParameter.InvalidUin"
        case invalidParameter_NameTooLong = "InvalidParameter.NameTooLong"
        case invalidParameter_ParamTooLong = "InvalidParameter.ParamTooLong"
        case invalidParameter_URLNotResolved = "InvalidParameter.URLNotResolved"
        case invalidParameter_UnsupportURL = "InvalidParameter.UnsupportURL"
        case limitExceeded_UsageLimitExceeded = "LimitExceeded.UsageLimitExceeded"
        case requestLimitExceeded_BatchImportOverflow = "RequestLimitExceeded.BatchImportOverflow"
        case requestLimitExceeded_ConcurrencyOverflow = "RequestLimitExceeded.ConcurrencyOverflow"
        case resourceNotFound_CustomCategoryNotFound = "ResourceNotFound.CustomCategoryNotFound"
        case resourceNotFound_CustomGroupNotFound = "ResourceNotFound.CustomGroupNotFound"
        case resourceNotFound_MediaNotFound = "ResourceNotFound.MediaNotFound"
        case resourceNotFound_RecordNotFound = "ResourceNotFound.RecordNotFound"
        case resourceNotFound_TaskNotFound = "ResourceNotFound.TaskNotFound"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_UnauthorizedProduct = "UnauthorizedOperation.UnauthorizedProduct"
        case unsupportedOperation_MediaNotAccessible = "UnsupportedOperation.MediaNotAccessible"
        case unsupportedOperation_TaskNotAccessible = "UnsupportedOperation.TaskNotAccessible"
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
    
    /// SecredId失效。
    ///
    /// 检查SecretId是否有效
    public static var authFailure_InvalidSecretId: TCIvldError {
        TCIvldError(.authFailure_InvalidSecretId)
    }
    
    /// MFA失败。
    ///
    /// 使用正确的MFA验证
    public static var authFailure_MFAFailure: TCIvldError {
        TCIvldError(.authFailure_MFAFailure)
    }
    
    /// SecretId不存在。
    ///
    /// 检查SecretId是否存在
    public static var authFailure_SecretIdNotFound: TCIvldError {
        TCIvldError(.authFailure_SecretIdNotFound)
    }
    
    /// 签名已过期。
    ///
    /// 使用正确的有效签名
    public static var authFailure_SignatureExpire: TCIvldError {
        TCIvldError(.authFailure_SignatureExpire)
    }
    
    /// 签名校验失败。
    ///
    /// 使用正确的有效签名
    public static var authFailure_SignatureFailure: TCIvldError {
        TCIvldError(.authFailure_SignatureFailure)
    }
    
    /// 任务已完成。
    ///
    /// 已完成任务无法进行停止操作
    public static var authFailure_TaskFinished: TCIvldError {
        TCIvldError(.authFailure_TaskFinished)
    }
    
    /// 令牌失败。
    ///
    /// 使用正确的有效令牌
    public static var authFailure_TokenFailure: TCIvldError {
        TCIvldError(.authFailure_TokenFailure)
    }
    
    /// 用户已激活。
    ///
    /// 已激活用户无需再次激活
    public static var authFailure_UserActivated: TCIvldError {
        TCIvldError(.authFailure_UserActivated)
    }
    
    /// 用户状态异常。
    ///
    /// 请检查用户状态
    public static var authFailure_UserInvalidStatus: TCIvldError {
        TCIvldError(.authFailure_UserInvalidStatus)
    }
    
    /// 用户无权限。
    ///
    /// 检查用户是否正确
    public static var authFailure_UserNotFound: TCIvldError {
        TCIvldError(.authFailure_UserNotFound)
    }
    
    /// 用户已欠费停服。
    ///
    /// 请充值
    public static var authFailure_UserStopArrear: TCIvldError {
        TCIvldError(.authFailure_UserStopArrear)
    }
    
    /// 操作失败。
    public static var failedOperation: TCIvldError {
        TCIvldError(.failedOperation)
    }
    
    /// 匹配的模板不存在。
    ///
    /// 重新选择模板类型
    public static var failedOperation_AiTemplateNotExist: TCIvldError {
        TCIvldError(.failedOperation_AiTemplateNotExist)
    }
    
    /// 自定义人物分类已存在。
    ///
    /// 检查自定义类型是否重复
    public static var failedOperation_CategoryExist: TCIvldError {
        TCIvldError(.failedOperation_CategoryExist)
    }
    
    /// 自定义类型层级变化。
    ///
    /// 检查自定义类型层级是否变化
    public static var failedOperation_CategoryLevelChanged: TCIvldError {
        TCIvldError(.failedOperation_CategoryLevelChanged)
    }
    
    /// 自定义人物分类被引用，不能删除。
    ///
    /// 删除引用分类的自定义人物
    public static var failedOperation_CategoryReferred: TCIvldError {
        TCIvldError(.failedOperation_CategoryReferred)
    }
    
    /// 自定义人物库已存在。
    ///
    /// 人脸库已存在，无需重建
    public static var failedOperation_CustomGroupAlreadyExist: TCIvldError {
        TCIvldError(.failedOperation_CustomGroupAlreadyExist)
    }
    
    /// 内部DB连接失败。
    ///
    /// 请稍后重试
    public static var failedOperation_DBConnectionError: TCIvldError {
        TCIvldError(.failedOperation_DBConnectionError)
    }
    
    /// 媒资文件下载失败。
    ///
    /// 检查文件是否正确，或者稍后重试
    public static var failedOperation_DownloadFailed: TCIvldError {
        TCIvldError(.failedOperation_DownloadFailed)
    }
    
    /// 图片特征提取失败。
    ///
    /// 换一张含人脸图片
    public static var failedOperation_FeatureAlgoFailed: TCIvldError {
        TCIvldError(.failedOperation_FeatureAlgoFailed)
    }
    
    /// 获取CAM临时鉴权失败。
    ///
    /// 检查文件权限是否正确配置，检查是否授予IVLD产品“服务相关角色”
    public static var failedOperation_GetCAMTokenFailed: TCIvldError {
        TCIvldError(.failedOperation_GetCAMTokenFailed)
    }
    
    /// 获取任务列表失败。
    ///
    /// 确认该用户是否成功创建过任务
    public static var failedOperation_GetTaskListFailed: TCIvldError {
        TCIvldError(.failedOperation_GetTaskListFailed)
    }
    
    /// 获取媒资信息失败。
    ///
    /// 检查视频文件格式是否满足要求
    public static var failedOperation_GetVideoMetadataFailed: TCIvldError {
        TCIvldError(.failedOperation_GetVideoMetadataFailed)
    }
    
    /// 图片数量过多。
    ///
    /// 删除不用的自定义人物图片
    public static var failedOperation_ImageNumExceeded: TCIvldError {
        TCIvldError(.failedOperation_ImageNumExceeded)
    }
    
    /// MD5不匹配。
    ///
    /// 检查文件MD5是否正确
    public static var failedOperation_MD5Mismatch: TCIvldError {
        TCIvldError(.failedOperation_MD5Mismatch)
    }
    
    /// 媒资文件已经存在。
    ///
    /// 媒资文件已存在，请勿重复导入
    public static var failedOperation_MediaAlreadyExist: TCIvldError {
        TCIvldError(.failedOperation_MediaAlreadyExist)
    }
    
    /// 媒资文件已经过期。
    ///
    /// 媒资文件已过期，请重新导入
    public static var failedOperation_MediaExpired: TCIvldError {
        TCIvldError(.failedOperation_MediaExpired)
    }
    
    /// 媒资正在使用。
    ///
    /// 媒资正在使用，无法修改，请稍后重试
    public static var failedOperation_MediaInUse: TCIvldError {
        TCIvldError(.failedOperation_MediaInUse)
    }
    
    /// 媒体文件未就绪。
    ///
    /// 检查MediaId状态是否正确
    public static var failedOperation_MediaNotReady: TCIvldError {
        TCIvldError(.failedOperation_MediaNotReady)
    }
    
    /// 图片中包含多张人脸。
    ///
    /// 换一张单人脸图片
    public static var failedOperation_MultipleFacesInImage: TCIvldError {
        TCIvldError(.failedOperation_MultipleFacesInImage)
    }
    
    /// 图片中不包含人脸。
    ///
    /// 换一张含人脸图片
    public static var failedOperation_NoFaceInImage: TCIvldError {
        TCIvldError(.failedOperation_NoFaceInImage)
    }
    
    /// 计费开通失败。
    ///
    /// 请查看失败原因，或稍后重试
    public static var failedOperation_OpenChargeFailed: TCIvldError {
        TCIvldError(.failedOperation_OpenChargeFailed)
    }
    
    /// 人脸库中存在相似的人脸: %!s(MISSING)。
    ///
    /// 检查入库图片是否正确
    public static var failedOperation_PersonDuplicated: TCIvldError {
        TCIvldError(.failedOperation_PersonDuplicated)
    }
    
    /// 人脸图片不属于已知人物。
    ///
    /// 检查输入PersonId是否正确
    public static var failedOperation_PersonNotMatched: TCIvldError {
        TCIvldError(.failedOperation_PersonNotMatched)
    }
    
    /// 自定义人物数量过多。
    ///
    /// 删除不用的自定义人物
    public static var failedOperation_PersonNumExceeded: TCIvldError {
        TCIvldError(.failedOperation_PersonNumExceeded)
    }
    
    /// 图片质量分检测失败。
    ///
    /// 换一张含人脸图片
    public static var failedOperation_QualityAlgoFailed: TCIvldError {
        TCIvldError(.failedOperation_QualityAlgoFailed)
    }
    
    /// 图片质量分过低。
    ///
    /// 换一张高质量含人脸图片
    public static var failedOperation_QualityTooLow: TCIvldError {
        TCIvldError(.failedOperation_QualityTooLow)
    }
    
    /// 结果快照反序列化失败。
    ///
    /// 重新分析该视频
    public static var failedOperation_SnapshotDeserializeFailed: TCIvldError {
        TCIvldError(.failedOperation_SnapshotDeserializeFailed)
    }
    
    /// 停止AI工作室任务失败。
    ///
    /// 确认AI工作室状态后重试本操作
    public static var failedOperation_StopFlowFailed: TCIvldError {
        TCIvldError(.failedOperation_StopFlowFailed)
    }
    
    /// 存在相同的任务。
    ///
    /// 停止相同的任务
    public static var failedOperation_TaskAlreadyExist: TCIvldError {
        TCIvldError(.failedOperation_TaskAlreadyExist)
    }
    
    /// 视频分析未完成。
    ///
    /// 等待任务分析完成后重新调用该接口
    public static var failedOperation_TaskNotFinished: TCIvldError {
        TCIvldError(.failedOperation_TaskNotFinished)
    }
    
    /// 转码失败。
    ///
    /// 请查看失败原因，或稍后重试
    public static var failedOperation_TranscodeFailed: TCIvldError {
        TCIvldError(.failedOperation_TranscodeFailed)
    }
    
    /// 上传文件失败。
    ///
    /// 请稍后重试
    public static var failedOperation_UploadFailed: TCIvldError {
        TCIvldError(.failedOperation_UploadFailed)
    }
    
    /// 内部错误。
    public static var internalError: TCIvldError {
        TCIvldError(.internalError)
    }
    
    /// 内部DB连接失败。
    ///
    /// 请稍后重试
    public static var internalError_DBConnectionError: TCIvldError {
        TCIvldError(.internalError_DBConnectionError)
    }
    
    /// 内部DB操作错误。
    ///
    /// 检查操作参数是否正确
    public static var internalError_DBOperationError: TCIvldError {
        TCIvldError(.internalError_DBOperationError)
    }
    
    /// 内部错误。
    ///
    /// 请稍后重试
    public static var internalError_InnerError: TCIvldError {
        TCIvldError(.internalError_InnerError)
    }
    
    /// 自定义人物请求超过限制。
    ///
    /// 请稍后重试
    public static var internalError_InternalOverflow: TCIvldError {
        TCIvldError(.internalError_InternalOverflow)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCIvldError {
        TCIvldError(.invalidParameter)
    }
    
    /// 自定义人物类型ID不合法。
    ///
    /// 检查自定义人物类型ID是否正确
    public static var invalidParameter_InvalidCategoryId: TCIvldError {
        TCIvldError(.invalidParameter_InvalidCategoryId)
    }
    
    /// 文件路径不合法。
    ///
    /// 检查文件路径是否正确
    public static var invalidParameter_InvalidFilePath: TCIvldError {
        TCIvldError(.invalidParameter_InvalidFilePath)
    }
    
    /// 图片不合法。
    ///
    /// 检查图片是否合规
    public static var invalidParameter_InvalidImage: TCIvldError {
        TCIvldError(.invalidParameter_InvalidImage)
    }
    
    /// 图片ID不合法。
    ///
    /// 检查图片ID是否合规
    public static var invalidParameter_InvalidImageId: TCIvldError {
        TCIvldError(.invalidParameter_InvalidImageId)
    }
    
    /// 一级自定义类型不合法。
    ///
    /// 检查一级类型是否有效
    public static var invalidParameter_InvalidL1Category: TCIvldError {
        TCIvldError(.invalidParameter_InvalidL1Category)
    }
    
    /// 二级自定义类型不合法。
    ///
    /// 检查二级类型是否有效
    public static var invalidParameter_InvalidL2Category: TCIvldError {
        TCIvldError(.invalidParameter_InvalidL2Category)
    }
    
    /// MD5不合法。
    ///
    /// 检查MD5是否正确
    public static var invalidParameter_InvalidMD5: TCIvldError {
        TCIvldError(.invalidParameter_InvalidMD5)
    }
    
    /// 媒体ID不合法。
    ///
    /// 检查MediaId的格式是否正确
    public static var invalidParameter_InvalidMediaId: TCIvldError {
        TCIvldError(.invalidParameter_InvalidMediaId)
    }
    
    /// MediaLabel无效。
    ///
    /// 检查MediaLabel是否存在且有效
    public static var invalidParameter_InvalidMediaLabel: TCIvldError {
        TCIvldError(.invalidParameter_InvalidMediaLabel)
    }
    
    /// MediaLang无效。
    ///
    /// 检查MediaLang是否存在且有效
    public static var invalidParameter_InvalidMediaLang: TCIvldError {
        TCIvldError(.invalidParameter_InvalidMediaLang)
    }
    
    /// 媒体名称非法。
    ///
    /// 检查媒资名称是否合法
    public static var invalidParameter_InvalidMediaName: TCIvldError {
        TCIvldError(.invalidParameter_InvalidMediaName)
    }
    
    /// MediaPreknownInfo无效。
    ///
    /// 检查MediaPreknownInfo内容是否存在且有效
    public static var invalidParameter_InvalidMediaPreknownInfo: TCIvldError {
        TCIvldError(.invalidParameter_InvalidMediaPreknownInfo)
    }
    
    /// 媒资状态不合法。
    ///
    /// 检查媒资状态是否正确
    public static var invalidParameter_InvalidMediaStatus: TCIvldError {
        TCIvldError(.invalidParameter_InvalidMediaStatus)
    }
    
    /// MediaType无效。
    ///
    /// 检查MediaType是否存在且有效
    public static var invalidParameter_InvalidMediaType: TCIvldError {
        TCIvldError(.invalidParameter_InvalidMediaType)
    }
    
    /// 名称不合法。
    ///
    /// 检查名称是否合法
    public static var invalidParameter_InvalidName: TCIvldError {
        TCIvldError(.invalidParameter_InvalidName)
    }
    
    /// 分页序号不合法。
    ///
    /// 检查分页号是否正确
    public static var invalidParameter_InvalidPageNumber: TCIvldError {
        TCIvldError(.invalidParameter_InvalidPageNumber)
    }
    
    /// 分页大小不合法。
    ///
    /// 检查分页大小是否正确
    public static var invalidParameter_InvalidPageSize: TCIvldError {
        TCIvldError(.invalidParameter_InvalidPageSize)
    }
    
    /// 输入字段 %!s(MISSING) 不合法。
    ///
    /// 检查输入字段是否合规
    public static var invalidParameter_InvalidParam: TCIvldError {
        TCIvldError(.invalidParameter_InvalidParam)
    }
    
    /// 人物ID不合法。
    ///
    /// 检查人物ID是否合规
    public static var invalidParameter_InvalidPersonId: TCIvldError {
        TCIvldError(.invalidParameter_InvalidPersonId)
    }
    
    /// 排序字段不合法。
    ///
    /// 检查任务排序条件
    public static var invalidParameter_InvalidSortBy: TCIvldError {
        TCIvldError(.invalidParameter_InvalidSortBy)
    }
    
    /// 排序方式不合法。
    ///
    /// 检查排序方式是否正确
    public static var invalidParameter_InvalidSortOrder: TCIvldError {
        TCIvldError(.invalidParameter_InvalidSortOrder)
    }
    
    /// 任务ID不合法。
    ///
    /// 检查TaskId的内容是否正确
    public static var invalidParameter_InvalidTaskId: TCIvldError {
        TCIvldError(.invalidParameter_InvalidTaskId)
    }
    
    /// 任务名称不合法。
    ///
    /// 检查任务名称是否合法
    public static var invalidParameter_InvalidTaskName: TCIvldError {
        TCIvldError(.invalidParameter_InvalidTaskName)
    }
    
    /// 任务状态不合法。
    ///
    /// 检查任务状态是否正确
    public static var invalidParameter_InvalidTaskStatus: TCIvldError {
        TCIvldError(.invalidParameter_InvalidTaskStatus)
    }
    
    /// URL不合法。
    ///
    /// 检查URL是否正确
    public static var invalidParameter_InvalidURL: TCIvldError {
        TCIvldError(.invalidParameter_InvalidURL)
    }
    
    /// 用户Uin无效。
    ///
    /// 检查用户Uin是否正确
    public static var invalidParameter_InvalidUin: TCIvldError {
        TCIvldError(.invalidParameter_InvalidUin)
    }
    
    /// 名称超过长度限制。
    ///
    /// 检查名称是否超过长度限制
    public static var invalidParameter_NameTooLong: TCIvldError {
        TCIvldError(.invalidParameter_NameTooLong)
    }
    
    /// 参数超过长度限制。
    ///
    /// 检查输入字段是否合规
    public static var invalidParameter_ParamTooLong: TCIvldError {
        TCIvldError(.invalidParameter_ParamTooLong)
    }
    
    /// 输入URL域名无法解析。
    ///
    /// 请检查URL是否可以解析
    public static var invalidParameter_URLNotResolved: TCIvldError {
        TCIvldError(.invalidParameter_URLNotResolved)
    }
    
    /// 不支持的URL类型。
    ///
    /// 检查URL是否正确
    public static var invalidParameter_UnsupportURL: TCIvldError {
        TCIvldError(.invalidParameter_UnsupportURL)
    }
    
    /// 使用量超过限制。
    ///
    /// 联系产品增加日调用量限制
    public static var limitExceeded_UsageLimitExceeded: TCIvldError {
        TCIvldError(.limitExceeded_UsageLimitExceeded)
    }
    
    /// 批量导入超过限制。
    ///
    /// 联系产品增加日调用量限制
    public static var requestLimitExceeded_BatchImportOverflow: TCIvldError {
        TCIvldError(.requestLimitExceeded_BatchImportOverflow)
    }
    
    /// 同时发起过多任务。
    ///
    /// 限制请求频率
    public static var requestLimitExceeded_ConcurrencyOverflow: TCIvldError {
        TCIvldError(.requestLimitExceeded_ConcurrencyOverflow)
    }
    
    /// 自定义人物类型不存在。
    ///
    /// 自定义人物类型不存在，检查是否调用CreateCustomCategory
    public static var resourceNotFound_CustomCategoryNotFound: TCIvldError {
        TCIvldError(.resourceNotFound_CustomCategoryNotFound)
    }
    
    /// 自定义人物库不存在。
    ///
    /// 人脸库不存在，检查是否调用CreateCustomGroup
    public static var resourceNotFound_CustomGroupNotFound: TCIvldError {
        TCIvldError(.resourceNotFound_CustomGroupNotFound)
    }
    
    /// 媒资文件不存在。
    ///
    /// 检查媒资文件是否存在
    public static var resourceNotFound_MediaNotFound: TCIvldError {
        TCIvldError(.resourceNotFound_MediaNotFound)
    }
    
    /// 记录不存在。
    ///
    /// 检查记录Id是否正确
    public static var resourceNotFound_RecordNotFound: TCIvldError {
        TCIvldError(.resourceNotFound_RecordNotFound)
    }
    
    /// 任务不存在。
    ///
    /// 检查TaskId的内容是否正确
    public static var resourceNotFound_TaskNotFound: TCIvldError {
        TCIvldError(.resourceNotFound_TaskNotFound)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCIvldError {
        TCIvldError(.unauthorizedOperation)
    }
    
    /// 用户未激活该产品。
    ///
    /// 请开通相关产品权限
    public static var unauthorizedOperation_UnauthorizedProduct: TCIvldError {
        TCIvldError(.unauthorizedOperation_UnauthorizedProduct)
    }
    
    /// 媒资文件不可访问。
    ///
    /// 检查文件权限是否正确配置，检查是否授予IVLD产品“服务相关角色”
    public static var unsupportedOperation_MediaNotAccessible: TCIvldError {
        TCIvldError(.unsupportedOperation_MediaNotAccessible)
    }
    
    /// 任务不可访问。
    ///
    /// 检查TaskId是否正确
    public static var unsupportedOperation_TaskNotAccessible: TCIvldError {
        TCIvldError(.unsupportedOperation_TaskNotAccessible)
    }
}

extension TCIvldError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, LimitExceeded.self, RequestLimitExceeded.self, ResourceNotFound.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCIvldError: Equatable {
    public static func == (lhs: TCIvldError, rhs: TCIvldError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIvldError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIvldError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
