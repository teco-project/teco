public struct TCIaiError: TCErrorType {
    enum Code: String {
        case authFailure_InvalidAuthorization = "AuthFailure.InvalidAuthorization"
        case failedOperation = "FailedOperation"
        case failedOperation_AcrossVersionsError = "FailedOperation.AcrossVersionsError"
        case failedOperation_ConflictOperation = "FailedOperation.ConflictOperation"
        case failedOperation_CreateFaceConcurrent = "FailedOperation.CreateFaceConcurrent"
        case failedOperation_DuplicatedGroupDescription = "FailedOperation.DuplicatedGroupDescription"
        case failedOperation_FaceQualityNotQualified = "FailedOperation.FaceQualityNotQualified"
        case failedOperation_FaceSizeTooSmall = "FailedOperation.FaceSizeTooSmall"
        case failedOperation_GroupCannotUpgrade = "FailedOperation.GroupCannotUpgrade"
        case failedOperation_GroupInDeletedState = "FailedOperation.GroupInDeletedState"
        case failedOperation_GroupLostFaces = "FailedOperation.GroupLostFaces"
        case failedOperation_GroupPersonMapExist = "FailedOperation.GroupPersonMapExist"
        case failedOperation_GroupPersonMapNotExist = "FailedOperation.GroupPersonMapNotExist"
        case failedOperation_ImageDecodeFailed = "FailedOperation.ImageDecodeFailed"
        case failedOperation_ImageDownloadError = "FailedOperation.ImageDownloadError"
        case failedOperation_ImageFacedetectFailed = "FailedOperation.ImageFacedetectFailed"
        case failedOperation_ImageResolutionExceed = "FailedOperation.ImageResolutionExceed"
        case failedOperation_ImageResolutionTooSmall = "FailedOperation.ImageResolutionTooSmall"
        case failedOperation_ImageSizeExceed = "FailedOperation.ImageSizeExceed"
        case failedOperation_JobCannnotRollback = "FailedOperation.JobCannnotRollback"
        case failedOperation_RequestLimitExceeded = "FailedOperation.RequestLimitExceeded"
        case failedOperation_RequestTimeout = "FailedOperation.RequestTimeout"
        case failedOperation_SearchFacesExceed = "FailedOperation.SearchFacesExceed"
        case failedOperation_ServerError = "FailedOperation.ServerError"
        case failedOperation_UnKnowError = "FailedOperation.UnKnowError"
        case failedOperation_UpgradeJobIdNotExist = "FailedOperation.UpgradeJobIdNotExist"
        case internalError = "InternalError"
        case invalidParameterValue_AccountFaceNumExceed = "InvalidParameterValue.AccountFaceNumExceed"
        case invalidParameterValue_DeleteFaceNumExceed = "InvalidParameterValue.DeleteFaceNumExceed"
        case invalidParameterValue_FaceMatchThresholdIllegal = "InvalidParameterValue.FaceMatchThresholdIllegal"
        case invalidParameterValue_FaceModelVersionIllegal = "InvalidParameterValue.FaceModelVersionIllegal"
        case invalidParameterValue_GroupExDescriptionsExceed = "InvalidParameterValue.GroupExDescriptionsExceed"
        case invalidParameterValue_GroupExDescriptionsNameIdentical = "InvalidParameterValue.GroupExDescriptionsNameIdentical"
        case invalidParameterValue_GroupExDescriptionsNameIllegal = "InvalidParameterValue.GroupExDescriptionsNameIllegal"
        case invalidParameterValue_GroupExDescriptionsNameTooLong = "InvalidParameterValue.GroupExDescriptionsNameTooLong"
        case invalidParameterValue_GroupFaceNumExceed = "InvalidParameterValue.GroupFaceNumExceed"
        case invalidParameterValue_GroupIdAlreadyExist = "InvalidParameterValue.GroupIdAlreadyExist"
        case invalidParameterValue_GroupIdIllegal = "InvalidParameterValue.GroupIdIllegal"
        case invalidParameterValue_GroupIdNotExist = "InvalidParameterValue.GroupIdNotExist"
        case invalidParameterValue_GroupIdNotExists = "InvalidParameterValue.GroupIdNotExists"
        case invalidParameterValue_GroupIdTooLong = "InvalidParameterValue.GroupIdTooLong"
        case invalidParameterValue_GroupIdsExceed = "InvalidParameterValue.GroupIdsExceed"
        case invalidParameterValue_GroupNameAlreadyExist = "InvalidParameterValue.GroupNameAlreadyExist"
        case invalidParameterValue_GroupNameIllegal = "InvalidParameterValue.GroupNameIllegal"
        case invalidParameterValue_GroupNameTooLong = "InvalidParameterValue.GroupNameTooLong"
        case invalidParameterValue_GroupNumExceed = "InvalidParameterValue.GroupNumExceed"
        case invalidParameterValue_GroupNumPerPersonExceed = "InvalidParameterValue.GroupNumPerPersonExceed"
        case invalidParameterValue_GroupTagIllegal = "InvalidParameterValue.GroupTagIllegal"
        case invalidParameterValue_GroupTagTooLong = "InvalidParameterValue.GroupTagTooLong"
        case invalidParameterValue_ImageEmpty = "InvalidParameterValue.ImageEmpty"
        case invalidParameterValue_ImageEmptyError = "InvalidParameterValue.ImageEmptyError"
        case invalidParameterValue_LimitExceed = "InvalidParameterValue.LimitExceed"
        case invalidParameterValue_NoFaceInGroups = "InvalidParameterValue.NoFaceInGroups"
        case invalidParameterValue_NoFaceInPhoto = "InvalidParameterValue.NoFaceInPhoto"
        case invalidParameterValue_OffsetExceed = "InvalidParameterValue.OffsetExceed"
        case invalidParameterValue_PersonExDescriptionInfosExceed = "InvalidParameterValue.PersonExDescriptionInfosExceed"
        case invalidParameterValue_PersonExDescriptionsNameIdentical = "InvalidParameterValue.PersonExDescriptionsNameIdentical"
        case invalidParameterValue_PersonExDescriptionsNameIllegal = "InvalidParameterValue.PersonExDescriptionsNameIllegal"
        case invalidParameterValue_PersonExDescriptionsNameTooLong = "InvalidParameterValue.PersonExDescriptionsNameTooLong"
        case invalidParameterValue_PersonExistInGroup = "InvalidParameterValue.PersonExistInGroup"
        case invalidParameterValue_PersonFaceNumExceed = "InvalidParameterValue.PersonFaceNumExceed"
        case invalidParameterValue_PersonGenderIllegal = "InvalidParameterValue.PersonGenderIllegal"
        case invalidParameterValue_PersonIdAlreadyExist = "InvalidParameterValue.PersonIdAlreadyExist"
        case invalidParameterValue_PersonIdIllegal = "InvalidParameterValue.PersonIdIllegal"
        case invalidParameterValue_PersonIdNotExist = "InvalidParameterValue.PersonIdNotExist"
        case invalidParameterValue_PersonIdTooLong = "InvalidParameterValue.PersonIdTooLong"
        case invalidParameterValue_PersonNameIllegal = "InvalidParameterValue.PersonNameIllegal"
        case invalidParameterValue_PersonNameTooLong = "InvalidParameterValue.PersonNameTooLong"
        case invalidParameterValue_QualityControlIllegal = "InvalidParameterValue.QualityControlIllegal"
        case invalidParameterValue_SearchPersonsExceed = "InvalidParameterValue.SearchPersonsExceed"
        case invalidParameterValue_UniquePersonControlIllegal = "InvalidParameterValue.UniquePersonControlIllegal"
        case invalidParameterValue_UnsupportedGroupFaceModelVersion = "InvalidParameterValue.UnsupportedGroupFaceModelVersion"
        case invalidParameterValue_UploadFaceNumExceed = "InvalidParameterValue.UploadFaceNumExceed"
        case invalidParameterValue_UrlIllegal = "InvalidParameterValue.UrlIllegal"
        case invalidParameter_InvalidParameter = "InvalidParameter.InvalidParameter"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_ErrorFaceNumExceed = "LimitExceeded.ErrorFaceNumExceed"
        case missingParameter_ErrorParameterEmpty = "MissingParameter.ErrorParameterEmpty"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceUnavailable_ChargeStatusException = "ResourceUnavailable.ChargeStatusException"
        case resourceUnavailable_Delivering = "ResourceUnavailable.Delivering"
        case resourceUnavailable_Freeze = "ResourceUnavailable.Freeze"
        case resourceUnavailable_GetAuthInfoError = "ResourceUnavailable.GetAuthInfoError"
        case resourceUnavailable_InArrears = "ResourceUnavailable.InArrears"
        case resourceUnavailable_LowBalance = "ResourceUnavailable.LowBalance"
        case resourceUnavailable_NotExist = "ResourceUnavailable.NotExist"
        case resourceUnavailable_NotReady = "ResourceUnavailable.NotReady"
        case resourceUnavailable_Recover = "ResourceUnavailable.Recover"
        case resourceUnavailable_StopUsing = "ResourceUnavailable.StopUsing"
        case resourceUnavailable_UnknownStatus = "ResourceUnavailable.UnknownStatus"
        case resourcesSoldOut_ChargeStatusException = "ResourcesSoldOut.ChargeStatusException"
        case unsupportedOperation_UnknowMethod = "UnsupportedOperation.UnknowMethod"
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
    
    /// 认证失败。
    public static var authFailure_InvalidAuthorization: TCIaiError {
        TCIaiError(.authFailure_InvalidAuthorization)
    }
    
    /// 操作失败。
    public static var failedOperation: TCIaiError {
        TCIaiError(.failedOperation)
    }
    
    /// 该操作不支持跨算法模型版本。
    public static var failedOperation_AcrossVersionsError: TCIaiError {
        TCIaiError(.failedOperation_AcrossVersionsError)
    }
    
    /// 操作冲突，请勿同时操作相同的Person。
    public static var failedOperation_ConflictOperation: TCIaiError {
        TCIaiError(.failedOperation_ConflictOperation)
    }
    
    /// 增加人脸不支持并发操作。
    public static var failedOperation_CreateFaceConcurrent: TCIaiError {
        TCIaiError(.failedOperation_CreateFaceConcurrent)
    }
    
    /// 同一人员库中自定义描述字段不可重复。
    public static var failedOperation_DuplicatedGroupDescription: TCIaiError {
        TCIaiError(.failedOperation_DuplicatedGroupDescription)
    }
    
    /// 人脸图片质量不符要求。
    public static var failedOperation_FaceQualityNotQualified: TCIaiError {
        TCIaiError(.failedOperation_FaceQualityNotQualified)
    }
    
    /// 人脸框大小小于MinFaceSize设置，人脸被过滤。
    public static var failedOperation_FaceSizeTooSmall: TCIaiError {
        TCIaiError(.failedOperation_FaceSizeTooSmall)
    }
    
    /// 指定人员库的升级操作无法执行。
    public static var failedOperation_GroupCannotUpgrade: TCIaiError {
        TCIaiError(.failedOperation_GroupCannotUpgrade)
    }
    
    /// 当前组正处于删除状态，请等待。
    public static var failedOperation_GroupInDeletedState: TCIaiError {
        TCIaiError(.failedOperation_GroupInDeletedState)
    }
    
    /// 人员库存在人脸图片丢失。
    public static var failedOperation_GroupLostFaces: TCIaiError {
        TCIaiError(.failedOperation_GroupLostFaces)
    }
    
    /// 组中已包含对应的人员Id。
    public static var failedOperation_GroupPersonMapExist: TCIaiError {
        TCIaiError(.failedOperation_GroupPersonMapExist)
    }
    
    /// 组中不包含对应的人员Id。
    public static var failedOperation_GroupPersonMapNotExist: TCIaiError {
        TCIaiError(.failedOperation_GroupPersonMapNotExist)
    }
    
    /// 图片解码失败。
    public static var failedOperation_ImageDecodeFailed: TCIaiError {
        TCIaiError(.failedOperation_ImageDecodeFailed)
    }
    
    /// 图片下载错误。
    public static var failedOperation_ImageDownloadError: TCIaiError {
        TCIaiError(.failedOperation_ImageDownloadError)
    }
    
    /// 人脸检测失败。
    public static var failedOperation_ImageFacedetectFailed: TCIaiError {
        TCIaiError(.failedOperation_ImageFacedetectFailed)
    }
    
    /// 图片分辨率过大。
    public static var failedOperation_ImageResolutionExceed: TCIaiError {
        TCIaiError(.failedOperation_ImageResolutionExceed)
    }
    
    /// 图片短边分辨率小于64。
    public static var failedOperation_ImageResolutionTooSmall: TCIaiError {
        TCIaiError(.failedOperation_ImageResolutionTooSmall)
    }
    
    /// base64编码后的图片数据大小不超过5M。
    public static var failedOperation_ImageSizeExceed: TCIaiError {
        TCIaiError(.failedOperation_ImageSizeExceed)
    }
    
    /// 任务无法回滚。
    public static var failedOperation_JobCannnotRollback: TCIaiError {
        TCIaiError(.failedOperation_JobCannnotRollback)
    }
    
    /// 请求频率超过限制。
    public static var failedOperation_RequestLimitExceeded: TCIaiError {
        TCIaiError(.failedOperation_RequestLimitExceeded)
    }
    
    /// 后端服务超时。
    public static var failedOperation_RequestTimeout: TCIaiError {
        TCIaiError(.failedOperation_RequestTimeout)
    }
    
    /// 检索人脸个数超过限制。
    public static var failedOperation_SearchFacesExceed: TCIaiError {
        TCIaiError(.failedOperation_SearchFacesExceed)
    }
    
    /// 算法服务异常，请重试。
    public static var failedOperation_ServerError: TCIaiError {
        TCIaiError(.failedOperation_ServerError)
    }
    
    /// 内部错误。
    public static var failedOperation_UnKnowError: TCIaiError {
        TCIaiError(.failedOperation_UnKnowError)
    }
    
    /// 人员库升级任务不存在。
    public static var failedOperation_UpgradeJobIdNotExist: TCIaiError {
        TCIaiError(.failedOperation_UpgradeJobIdNotExist)
    }
    
    /// 内部错误。
    public static var internalError: TCIaiError {
        TCIaiError(.internalError)
    }
    
    /// 账号脸数量超出限制。
    public static var invalidParameterValue_AccountFaceNumExceed: TCIaiError {
        TCIaiError(.invalidParameterValue_AccountFaceNumExceed)
    }
    
    /// 删除人脸数量超出限制。每个人员至少需要包含一张人脸。
    public static var invalidParameterValue_DeleteFaceNumExceed: TCIaiError {
        TCIaiError(.invalidParameterValue_DeleteFaceNumExceed)
    }
    
    /// FaceMatchThreshold参数不合法。
    public static var invalidParameterValue_FaceMatchThresholdIllegal: TCIaiError {
        TCIaiError(.invalidParameterValue_FaceMatchThresholdIllegal)
    }
    
    /// 算法模型版本不合法。
    public static var invalidParameterValue_FaceModelVersionIllegal: TCIaiError {
        TCIaiError(.invalidParameterValue_FaceModelVersionIllegal)
    }
    
    /// 人员库自定义描述字段数组长度超过限制。最多可以创建5个。
    public static var invalidParameterValue_GroupExDescriptionsExceed: TCIaiError {
        TCIaiError(.invalidParameterValue_GroupExDescriptionsExceed)
    }
    
    /// 人员库自定义描述字段名称不可重复。
    public static var invalidParameterValue_GroupExDescriptionsNameIdentical: TCIaiError {
        TCIaiError(.invalidParameterValue_GroupExDescriptionsNameIdentical)
    }
    
    /// 人员库自定义描述字段名称包含非法字符。人员库自定义描述字段名称只支持中英文、-、_、数字。
    public static var invalidParameterValue_GroupExDescriptionsNameIllegal: TCIaiError {
        TCIaiError(.invalidParameterValue_GroupExDescriptionsNameIllegal)
    }
    
    /// 人员库自定义描述字段名称长度超出限制。
    public static var invalidParameterValue_GroupExDescriptionsNameTooLong: TCIaiError {
        TCIaiError(.invalidParameterValue_GroupExDescriptionsNameTooLong)
    }
    
    /// 人员库人脸数量超出限制。
    public static var invalidParameterValue_GroupFaceNumExceed: TCIaiError {
        TCIaiError(.invalidParameterValue_GroupFaceNumExceed)
    }
    
    /// 人员库ID已经存在。人员库ID不可重复。
    public static var invalidParameterValue_GroupIdAlreadyExist: TCIaiError {
        TCIaiError(.invalidParameterValue_GroupIdAlreadyExist)
    }
    
    /// 人员库ID包含非法字符。人员库ID只支持英文、数字、-%@#&amp;_。
    public static var invalidParameterValue_GroupIdIllegal: TCIaiError {
        TCIaiError(.invalidParameterValue_GroupIdIllegal)
    }
    
    /// 人员库ID不存在。
    public static var invalidParameterValue_GroupIdNotExist: TCIaiError {
        TCIaiError(.invalidParameterValue_GroupIdNotExist)
    }
    
    /// 对应的人员库ID在库中不存在。
    public static var invalidParameterValue_GroupIdNotExists: TCIaiError {
        TCIaiError(.invalidParameterValue_GroupIdNotExists)
    }
    
    /// 人员库ID超出长度限制。
    public static var invalidParameterValue_GroupIdTooLong: TCIaiError {
        TCIaiError(.invalidParameterValue_GroupIdTooLong)
    }
    
    /// 传入的人员库列表超过限制。
    public static var invalidParameterValue_GroupIdsExceed: TCIaiError {
        TCIaiError(.invalidParameterValue_GroupIdsExceed)
    }
    
    /// 人员库名称已经存在。人员库名称不可重复。
    public static var invalidParameterValue_GroupNameAlreadyExist: TCIaiError {
        TCIaiError(.invalidParameterValue_GroupNameAlreadyExist)
    }
    
    /// 人员库名称包含非法字符。人员库名称只支持中英文、-、_、数字。
    public static var invalidParameterValue_GroupNameIllegal: TCIaiError {
        TCIaiError(.invalidParameterValue_GroupNameIllegal)
    }
    
    /// 人员库名称超出长度限制。
    public static var invalidParameterValue_GroupNameTooLong: TCIaiError {
        TCIaiError(.invalidParameterValue_GroupNameTooLong)
    }
    
    /// 人员库数量超出限制。如需增加，请联系我们。
    public static var invalidParameterValue_GroupNumExceed: TCIaiError {
        TCIaiError(.invalidParameterValue_GroupNumExceed)
    }
    
    /// 人员库数量超出限制。单个人员最多可被添加至100个人员库。
    public static var invalidParameterValue_GroupNumPerPersonExceed: TCIaiError {
        TCIaiError(.invalidParameterValue_GroupNumPerPersonExceed)
    }
    
    /// 人员库备注包含非法字符。人员库备注只支持中英文、-、_、数字。
    public static var invalidParameterValue_GroupTagIllegal: TCIaiError {
        TCIaiError(.invalidParameterValue_GroupTagIllegal)
    }
    
    /// 人员库备注超出长度限制。
    public static var invalidParameterValue_GroupTagTooLong: TCIaiError {
        TCIaiError(.invalidParameterValue_GroupTagTooLong)
    }
    
    /// 图片为空。
    public static var invalidParameterValue_ImageEmpty: TCIaiError {
        TCIaiError(.invalidParameterValue_ImageEmpty)
    }
    
    /// 图片为空。
    public static var invalidParameterValue_ImageEmptyError: TCIaiError {
        TCIaiError(.invalidParameterValue_ImageEmptyError)
    }
    
    /// 返回数量超出限制。
    public static var invalidParameterValue_LimitExceed: TCIaiError {
        TCIaiError(.invalidParameterValue_LimitExceed)
    }
    
    /// 指定分组中没有人脸。
    public static var invalidParameterValue_NoFaceInGroups: TCIaiError {
        TCIaiError(.invalidParameterValue_NoFaceInGroups)
    }
    
    /// 图片中没有人脸。
    public static var invalidParameterValue_NoFaceInPhoto: TCIaiError {
        TCIaiError(.invalidParameterValue_NoFaceInPhoto)
    }
    
    /// 起始序号过大。请检查需要请求的数组长度。
    public static var invalidParameterValue_OffsetExceed: TCIaiError {
        TCIaiError(.invalidParameterValue_OffsetExceed)
    }
    
    /// 人员自定义描述字段数组长度超过限制。最多5个。
    public static var invalidParameterValue_PersonExDescriptionInfosExceed: TCIaiError {
        TCIaiError(.invalidParameterValue_PersonExDescriptionInfosExceed)
    }
    
    /// 人员自定义描述字段名称不可重复。
    public static var invalidParameterValue_PersonExDescriptionsNameIdentical: TCIaiError {
        TCIaiError(.invalidParameterValue_PersonExDescriptionsNameIdentical)
    }
    
    /// 人员自定义描述字段名称包含非法字符。人员自定义描述字段名称只支持中英文、-、_、数字。
    public static var invalidParameterValue_PersonExDescriptionsNameIllegal: TCIaiError {
        TCIaiError(.invalidParameterValue_PersonExDescriptionsNameIllegal)
    }
    
    /// 人员自定义描述字段名称长度超出限制。
    public static var invalidParameterValue_PersonExDescriptionsNameTooLong: TCIaiError {
        TCIaiError(.invalidParameterValue_PersonExDescriptionsNameTooLong)
    }
    
    /// 组中已包含对应的人员Id。
    public static var invalidParameterValue_PersonExistInGroup: TCIaiError {
        TCIaiError(.invalidParameterValue_PersonExistInGroup)
    }
    
    /// 人员人脸数量超出限制。单个人员最多可以包含五张人脸。
    public static var invalidParameterValue_PersonFaceNumExceed: TCIaiError {
        TCIaiError(.invalidParameterValue_PersonFaceNumExceed)
    }
    
    /// 人员性别设置出错。0代表未填写，1代表男性，2代表女性。
    public static var invalidParameterValue_PersonGenderIllegal: TCIaiError {
        TCIaiError(.invalidParameterValue_PersonGenderIllegal)
    }
    
    /// 人员ID已经存在。人员ID不可重复。
    public static var invalidParameterValue_PersonIdAlreadyExist: TCIaiError {
        TCIaiError(.invalidParameterValue_PersonIdAlreadyExist)
    }
    
    /// 人员ID包含非法字符。人员ID只支持英文、数字、-%@#&amp;_。
    public static var invalidParameterValue_PersonIdIllegal: TCIaiError {
        TCIaiError(.invalidParameterValue_PersonIdIllegal)
    }
    
    /// 人员ID不存在。
    public static var invalidParameterValue_PersonIdNotExist: TCIaiError {
        TCIaiError(.invalidParameterValue_PersonIdNotExist)
    }
    
    /// 人员ID超出长度限制。
    public static var invalidParameterValue_PersonIdTooLong: TCIaiError {
        TCIaiError(.invalidParameterValue_PersonIdTooLong)
    }
    
    /// 人员名称包含非法字符。人员名称只支持中英文、-、_、数字。
    public static var invalidParameterValue_PersonNameIllegal: TCIaiError {
        TCIaiError(.invalidParameterValue_PersonNameIllegal)
    }
    
    /// 人员名称超出长度限制。
    public static var invalidParameterValue_PersonNameTooLong: TCIaiError {
        TCIaiError(.invalidParameterValue_PersonNameTooLong)
    }
    
    /// QualityControl参数不合法。
    public static var invalidParameterValue_QualityControlIllegal: TCIaiError {
        TCIaiError(.invalidParameterValue_QualityControlIllegal)
    }
    
    /// 搜索的人员数目超过限制。
    public static var invalidParameterValue_SearchPersonsExceed: TCIaiError {
        TCIaiError(.invalidParameterValue_SearchPersonsExceed)
    }
    
    /// UniquePersonControl参数不合法。
    public static var invalidParameterValue_UniquePersonControlIllegal: TCIaiError {
        TCIaiError(.invalidParameterValue_UniquePersonControlIllegal)
    }
    
    /// 该操作不支持算法模型版本2.0及以下版本。
    public static var invalidParameterValue_UnsupportedGroupFaceModelVersion: TCIaiError {
        TCIaiError(.invalidParameterValue_UnsupportedGroupFaceModelVersion)
    }
    
    /// 一次最多上传四张人脸。
    public static var invalidParameterValue_UploadFaceNumExceed: TCIaiError {
        TCIaiError(.invalidParameterValue_UploadFaceNumExceed)
    }
    
    /// URL格式不合法。
    public static var invalidParameterValue_UrlIllegal: TCIaiError {
        TCIaiError(.invalidParameterValue_UrlIllegal)
    }
    
    /// 参数不合法。
    public static var invalidParameter_InvalidParameter: TCIaiError {
        TCIaiError(.invalidParameter_InvalidParameter)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCIaiError {
        TCIaiError(.limitExceeded)
    }
    
    /// 人脸个数超过限制。
    public static var limitExceeded_ErrorFaceNumExceed: TCIaiError {
        TCIaiError(.limitExceeded_ErrorFaceNumExceed)
    }
    
    /// 必选参数为空。
    public static var missingParameter_ErrorParameterEmpty: TCIaiError {
        TCIaiError(.missingParameter_ErrorParameterEmpty)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCIaiError {
        TCIaiError(.requestLimitExceeded)
    }
    
    /// 帐号已欠费。
    public static var resourceUnavailable_ChargeStatusException: TCIaiError {
        TCIaiError(.resourceUnavailable_ChargeStatusException)
    }
    
    /// 资源正在发货中。
    public static var resourceUnavailable_Delivering: TCIaiError {
        TCIaiError(.resourceUnavailable_Delivering)
    }
    
    /// 帐号已被冻结。
    public static var resourceUnavailable_Freeze: TCIaiError {
        TCIaiError(.resourceUnavailable_Freeze)
    }
    
    /// 获取认证信息失败。
    public static var resourceUnavailable_GetAuthInfoError: TCIaiError {
        TCIaiError(.resourceUnavailable_GetAuthInfoError)
    }
    
    /// 帐号已欠费。
    public static var resourceUnavailable_InArrears: TCIaiError {
        TCIaiError(.resourceUnavailable_InArrears)
    }
    
    /// 余额不足。
    public static var resourceUnavailable_LowBalance: TCIaiError {
        TCIaiError(.resourceUnavailable_LowBalance)
    }
    
    /// 计费状态未知，请确认是否已在控制台开通服务。
    public static var resourceUnavailable_NotExist: TCIaiError {
        TCIaiError(.resourceUnavailable_NotExist)
    }
    
    /// 服务未开通。
    public static var resourceUnavailable_NotReady: TCIaiError {
        TCIaiError(.resourceUnavailable_NotReady)
    }
    
    /// 资源已被回收。
    public static var resourceUnavailable_Recover: TCIaiError {
        TCIaiError(.resourceUnavailable_Recover)
    }
    
    /// 帐号已停服。
    public static var resourceUnavailable_StopUsing: TCIaiError {
        TCIaiError(.resourceUnavailable_StopUsing)
    }
    
    /// 计费状态未知。
    public static var resourceUnavailable_UnknownStatus: TCIaiError {
        TCIaiError(.resourceUnavailable_UnknownStatus)
    }
    
    /// 计费状态异常。
    public static var resourcesSoldOut_ChargeStatusException: TCIaiError {
        TCIaiError(.resourcesSoldOut_ChargeStatusException)
    }
    
    /// 未知方法名。
    public static var unsupportedOperation_UnknowMethod: TCIaiError {
        TCIaiError(.unsupportedOperation_UnknowMethod)
    }
}

extension TCIaiError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, MissingParameter.self, ResourceUnavailable.self, ResourcesSoldOut.self, UnsupportedOperation.self]
    }
}

extension TCIaiError: Equatable {
    public static func == (lhs: TCIaiError, rhs: TCIaiError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIaiError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIaiError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
