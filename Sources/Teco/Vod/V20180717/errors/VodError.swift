public struct TCVodError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_ClassLevelLimitExceeded = "FailedOperation.ClassLevelLimitExceeded"
        case failedOperation_ClassNameDuplicate = "FailedOperation.ClassNameDuplicate"
        case failedOperation_ClassNoFound = "FailedOperation.ClassNoFound"
        case failedOperation_CoverType = "FailedOperation.CoverType"
        case failedOperation_DomainDeploying = "FailedOperation.DomainDeploying"
        case failedOperation_InvalidAccount = "FailedOperation.InvalidAccount"
        case failedOperation_InvalidVodUser = "FailedOperation.InvalidVodUser"
        case failedOperation_MediaForbidedBySystem = "FailedOperation.MediaForbidedBySystem"
        case failedOperation_MediaType = "FailedOperation.MediaType"
        case failedOperation_NetWorkError = "FailedOperation.NetWorkError"
        case failedOperation_NoPrivileges = "FailedOperation.NoPrivileges"
        case failedOperation_ParentIdNoFound = "FailedOperation.ParentIdNoFound"
        case failedOperation_SubclassLimitExceeded = "FailedOperation.SubclassLimitExceeded"
        case failedOperation_TaskDuplicate = "FailedOperation.TaskDuplicate"
        case failedOperation_UploadCosFail = "FailedOperation.UploadCosFail"
        case failedOperation_UserStatusInavlid = "FailedOperation.UserStatusInavlid"
        case internalError = "InternalError"
        case internalError_DBError = "InternalError.DBError"
        case internalError_GenDefinition = "InternalError.GenDefinition"
        case internalError_GetFileInfoError = "InternalError.GetFileInfoError"
        case internalError_GetMediaListError = "InternalError.GetMediaListError"
        case internalError_TimeParseError = "InternalError.TimeParseError"
        case internalError_UpdateMediaError = "InternalError.UpdateMediaError"
        case internalError_UploadCoverImageError = "InternalError.UploadCoverImageError"
        case internalError_UploadWatermarkError = "InternalError.UploadWatermarkError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AddKeyFrameDescsAndClearKeyFrameDescsConflict = "InvalidParameterValue.AddKeyFrameDescsAndClearKeyFrameDescsConflict"
        case invalidParameterValue_AddKeyFrameDescsAndDeleteKeyFrameDescsConflict = "InvalidParameterValue.AddKeyFrameDescsAndDeleteKeyFrameDescsConflict"
        case invalidParameterValue_AddTagsAndClearTagsConflict = "InvalidParameterValue.AddTagsAndClearTagsConflict"
        case invalidParameterValue_AddTagsAndDeleteTagsConflict = "InvalidParameterValue.AddTagsAndDeleteTagsConflict"
        case invalidParameterValue_AiAnalysisTaskDefinition = "InvalidParameterValue.AiAnalysisTaskDefinition"
        case invalidParameterValue_AiContentReviewTaskDefinition = "InvalidParameterValue.AiContentReviewTaskDefinition"
        case invalidParameterValue_AiRecognitionTaskDefinition = "InvalidParameterValue.AiRecognitionTaskDefinition"
        case invalidParameterValue_Area = "InvalidParameterValue.Area"
        case invalidParameterValue_AudioBitrate = "InvalidParameterValue.AudioBitrate"
        case invalidParameterValue_AudioChannel = "InvalidParameterValue.AudioChannel"
        case invalidParameterValue_AudioCodec = "InvalidParameterValue.AudioCodec"
        case invalidParameterValue_AudioSampleRate = "InvalidParameterValue.AudioSampleRate"
        case invalidParameterValue_Bitrate = "InvalidParameterValue.Bitrate"
        case invalidParameterValue_BlockConfidence = "InvalidParameterValue.BlockConfidence"
        case invalidParameterValue_Categories = "InvalidParameterValue.Categories"
        case invalidParameterValue_ClassId = "InvalidParameterValue.ClassId"
        case invalidParameterValue_ClassIds = "InvalidParameterValue.ClassIds"
        case invalidParameterValue_ClassName = "InvalidParameterValue.ClassName"
        case invalidParameterValue_ClassifcationConfigure = "InvalidParameterValue.ClassifcationConfigure"
        case invalidParameterValue_ClipDuration = "InvalidParameterValue.ClipDuration"
        case invalidParameterValue_Codec = "InvalidParameterValue.Codec"
        case invalidParameterValue_ColumnCount = "InvalidParameterValue.ColumnCount"
        case invalidParameterValue_Comment = "InvalidParameterValue.Comment"
        case invalidParameterValue_Container = "InvalidParameterValue.Container"
        case invalidParameterValue_ContainerType = "InvalidParameterValue.ContainerType"
        case invalidParameterValue_CoordinateOrigin = "InvalidParameterValue.CoordinateOrigin"
        case invalidParameterValue_CoverConfigure = "InvalidParameterValue.CoverConfigure"
        case invalidParameterValue_CoverType = "InvalidParameterValue.CoverType"
        case invalidParameterValue_CoverUrl = "InvalidParameterValue.CoverUrl"
        case invalidParameterValue_CutAndCrops = "InvalidParameterValue.CutAndCrops"
        case invalidParameterValue_DataInterval = "InvalidParameterValue.DataInterval"
        case invalidParameterValue_DataType = "InvalidParameterValue.DataType"
        case invalidParameterValue_Date = "InvalidParameterValue.Date"
        case invalidParameterValue_DefaultLibraryLabelSet = "InvalidParameterValue.DefaultLibraryLabelSet"
        case invalidParameterValue_Definition = "InvalidParameterValue.Definition"
        case invalidParameterValue_Definitions = "InvalidParameterValue.Definitions"
        case invalidParameterValue_DeleteDefaultTemplate = "InvalidParameterValue.DeleteDefaultTemplate"
        case invalidParameterValue_Description = "InvalidParameterValue.Description"
        case invalidParameterValue_DisableHigherVideoBitrate = "InvalidParameterValue.DisableHigherVideoBitrate"
        case invalidParameterValue_DisableHigherVideoResolution = "InvalidParameterValue.DisableHigherVideoResolution"
        case invalidParameterValue_Districts = "InvalidParameterValue.Districts"
        case invalidParameterValue_DomainName = "InvalidParameterValue.DomainName"
        case invalidParameterValue_DomainNameInBlackList = "InvalidParameterValue.DomainNameInBlackList"
        case invalidParameterValue_DomainNames = "InvalidParameterValue.DomainNames"
        case invalidParameterValue_DrmType = "InvalidParameterValue.DrmType"
        case invalidParameterValue_EndDate = "InvalidParameterValue.EndDate"
        case invalidParameterValue_EndTime = "InvalidParameterValue.EndTime"
        case invalidParameterValue_EndTimeOffset = "InvalidParameterValue.EndTimeOffset"
        case invalidParameterValue_ExpireTime = "InvalidParameterValue.ExpireTime"
        case invalidParameterValue_FaceDuplicate = "InvalidParameterValue.FaceDuplicate"
        case invalidParameterValue_FaceLibrary = "InvalidParameterValue.FaceLibrary"
        case invalidParameterValue_FaceScore = "InvalidParameterValue.FaceScore"
        case invalidParameterValue_FileId = "InvalidParameterValue.FileId"
        case invalidParameterValue_FileIds = "InvalidParameterValue.FileIds"
        case invalidParameterValue_FileIdsEmpty = "InvalidParameterValue.FileIdsEmpty"
        case invalidParameterValue_FileIdsTooMany = "InvalidParameterValue.FileIdsTooMany"
        case invalidParameterValue_FileType = "InvalidParameterValue.FileType"
        case invalidParameterValue_FillType = "InvalidParameterValue.FillType"
        case invalidParameterValue_FiltrateAudio = "InvalidParameterValue.FiltrateAudio"
        case invalidParameterValue_FiltrateVideo = "InvalidParameterValue.FiltrateVideo"
        case invalidParameterValue_Format = "InvalidParameterValue.Format"
        case invalidParameterValue_FormatWebpLackWidthAndHeight = "InvalidParameterValue.FormatWebpLackWidthAndHeight"
        case invalidParameterValue_FormatWebpWidthAndHeightBothZero = "InvalidParameterValue.FormatWebpWidthAndHeightBothZero"
        case invalidParameterValue_Fps = "InvalidParameterValue.Fps"
        case invalidParameterValue_FrameTagConfigure = "InvalidParameterValue.FrameTagConfigure"
        case invalidParameterValue_FunctionArg = "InvalidParameterValue.FunctionArg"
        case invalidParameterValue_FunctionName = "InvalidParameterValue.FunctionName"
        case invalidParameterValue_Height = "InvalidParameterValue.Height"
        case invalidParameterValue_HighlightConfigure = "InvalidParameterValue.HighlightConfigure"
        case invalidParameterValue_ImageContent = "InvalidParameterValue.ImageContent"
        case invalidParameterValue_ImageDecodeError = "InvalidParameterValue.ImageDecodeError"
        case invalidParameterValue_ImageTemplate = "InvalidParameterValue.ImageTemplate"
        case invalidParameterValue_Interval = "InvalidParameterValue.Interval"
        case invalidParameterValue_InvalidOperationType = "InvalidParameterValue.InvalidOperationType"
        case invalidParameterValue_Isps = "InvalidParameterValue.Isps"
        case invalidParameterValue_KeyFrameDescContentTooLong = "InvalidParameterValue.KeyFrameDescContentTooLong"
        case invalidParameterValue_LabelSet = "InvalidParameterValue.LabelSet"
        case invalidParameterValue_Limit = "InvalidParameterValue.Limit"
        case invalidParameterValue_LimitTooLarge = "InvalidParameterValue.LimitTooLarge"
        case invalidParameterValue_MediaManifestContent = "InvalidParameterValue.MediaManifestContent"
        case invalidParameterValue_MediaType = "InvalidParameterValue.MediaType"
        case invalidParameterValue_MediaUrl = "InvalidParameterValue.MediaUrl"
        case invalidParameterValue_Metric = "InvalidParameterValue.Metric"
        case invalidParameterValue_ModifyDefaultTemplate = "InvalidParameterValue.ModifyDefaultTemplate"
        case invalidParameterValue_Name = "InvalidParameterValue.Name"
        case invalidParameterValue_NamePrefixes = "InvalidParameterValue.NamePrefixes"
        case invalidParameterValue_Names = "InvalidParameterValue.Names"
        case invalidParameterValue_NotRestorable = "InvalidParameterValue.NotRestorable"
        case invalidParameterValue_ObjectLibrary = "InvalidParameterValue.ObjectLibrary"
        case invalidParameterValue_Offset = "InvalidParameterValue.Offset"
        case invalidParameterValue_OffsetTooLarge = "InvalidParameterValue.OffsetTooLarge"
        case invalidParameterValue_Operation = "InvalidParameterValue.Operation"
        case invalidParameterValue_OriginalStorageClass = "InvalidParameterValue.OriginalStorageClass"
        case invalidParameterValue_ParentId = "InvalidParameterValue.ParentId"
        case invalidParameterValue_PicFormatError = "InvalidParameterValue.PicFormatError"
        case invalidParameterValue_ProcedureName = "InvalidParameterValue.ProcedureName"
        case invalidParameterValue_Quality = "InvalidParameterValue.Quality"
        case invalidParameterValue_RemoveAudio = "InvalidParameterValue.RemoveAudio"
        case invalidParameterValue_RemoveVideo = "InvalidParameterValue.RemoveVideo"
        case invalidParameterValue_RepeatType = "InvalidParameterValue.RepeatType"
        case invalidParameterValue_Resolution = "InvalidParameterValue.Resolution"
        case invalidParameterValue_ResolutionAdaptive = "InvalidParameterValue.ResolutionAdaptive"
        case invalidParameterValue_RestoreDay = "InvalidParameterValue.RestoreDay"
        case invalidParameterValue_RestoreTier = "InvalidParameterValue.RestoreTier"
        case invalidParameterValue_ReviewConfidence = "InvalidParameterValue.ReviewConfidence"
        case invalidParameterValue_ReviewWallSwitch = "InvalidParameterValue.ReviewWallSwitch"
        case invalidParameterValue_RowCount = "InvalidParameterValue.RowCount"
        case invalidParameterValue_SampleInterval = "InvalidParameterValue.SampleInterval"
        case invalidParameterValue_SampleRate = "InvalidParameterValue.SampleRate"
        case invalidParameterValue_SampleType = "InvalidParameterValue.SampleType"
        case invalidParameterValue_ScreenshotInterval = "InvalidParameterValue.ScreenshotInterval"
        case invalidParameterValue_SessionContextTooLong = "InvalidParameterValue.SessionContextTooLong"
        case invalidParameterValue_SessionId = "InvalidParameterValue.SessionId"
        case invalidParameterValue_SessionIdTooLong = "InvalidParameterValue.SessionIdTooLong"
        case invalidParameterValue_Sort = "InvalidParameterValue.Sort"
        case invalidParameterValue_SoundSystem = "InvalidParameterValue.SoundSystem"
        case invalidParameterValue_SourceDefinition = "InvalidParameterValue.SourceDefinition"
        case invalidParameterValue_SourceType = "InvalidParameterValue.SourceType"
        case invalidParameterValue_SourceTypes = "InvalidParameterValue.SourceTypes"
        case invalidParameterValue_StartDate = "InvalidParameterValue.StartDate"
        case invalidParameterValue_StartTime = "InvalidParameterValue.StartTime"
        case invalidParameterValue_StartTimeOffset = "InvalidParameterValue.StartTimeOffset"
        case invalidParameterValue_Status = "InvalidParameterValue.Status"
        case invalidParameterValue_StorageClass = "InvalidParameterValue.StorageClass"
        case invalidParameterValue_StorageRegion = "InvalidParameterValue.StorageRegion"
        case invalidParameterValue_StorageRegions = "InvalidParameterValue.StorageRegions"
        case invalidParameterValue_StorageType = "InvalidParameterValue.StorageType"
        case invalidParameterValue_StreamIdInvalid = "InvalidParameterValue.StreamIdInvalid"
        case invalidParameterValue_StreamIds = "InvalidParameterValue.StreamIds"
        case invalidParameterValue_SubAppId = "InvalidParameterValue.SubAppId"
        case invalidParameterValue_SubtitleFormat = "InvalidParameterValue.SubtitleFormat"
        case invalidParameterValue_SvgTemplate = "InvalidParameterValue.SvgTemplate"
        case invalidParameterValue_SvgTemplateHeight = "InvalidParameterValue.SvgTemplateHeight"
        case invalidParameterValue_SvgTemplateWidth = "InvalidParameterValue.SvgTemplateWidth"
        case invalidParameterValue_Switch = "InvalidParameterValue.Switch"
        case invalidParameterValue_TEHDType = "InvalidParameterValue.TEHDType"
        case invalidParameterValue_TagConfigure = "InvalidParameterValue.TagConfigure"
        case invalidParameterValue_TagTooLong = "InvalidParameterValue.TagTooLong"
        case invalidParameterValue_Tags = "InvalidParameterValue.Tags"
        case invalidParameterValue_TaskId = "InvalidParameterValue.TaskId"
        case invalidParameterValue_Text = "InvalidParameterValue.Text"
        case invalidParameterValue_TextAlpha = "InvalidParameterValue.TextAlpha"
        case invalidParameterValue_TextTemplate = "InvalidParameterValue.TextTemplate"
        case invalidParameterValue_Thumbnails = "InvalidParameterValue.Thumbnails"
        case invalidParameterValue_TimeType = "InvalidParameterValue.TimeType"
        case invalidParameterValue_Type = "InvalidParameterValue.Type"
        case invalidParameterValue_Types = "InvalidParameterValue.Types"
        case invalidParameterValue_UniqueIdentifier = "InvalidParameterValue.UniqueIdentifier"
        case invalidParameterValue_UnsupportedRestoreTier = "InvalidParameterValue.UnsupportedRestoreTier"
        case invalidParameterValue_UnsupportedStorageClass = "InvalidParameterValue.UnsupportedStorageClass"
        case invalidParameterValue_UnsupportedTransition = "InvalidParameterValue.UnsupportedTransition"
        case invalidParameterValue_Url = "InvalidParameterValue.Url"
        case invalidParameterValue_UserDefineLibraryLabelSet = "InvalidParameterValue.UserDefineLibraryLabelSet"
        case invalidParameterValue_Vcrf = "InvalidParameterValue.Vcrf"
        case invalidParameterValue_VideoBitrate = "InvalidParameterValue.VideoBitrate"
        case invalidParameterValue_VideoCodec = "InvalidParameterValue.VideoCodec"
        case invalidParameterValue_Vids = "InvalidParameterValue.Vids"
        case invalidParameterValue_VodSessionKey = "InvalidParameterValue.VodSessionKey"
        case invalidParameterValue_Watermarks = "InvalidParameterValue.Watermarks"
        case invalidParameterValue_Width = "InvalidParameterValue.Width"
        case invalidParameterValue_XPos = "InvalidParameterValue.XPos"
        case invalidParameterValue_YPos = "InvalidParameterValue.YPos"
        case invalidParameter_ExistedProcedureName = "InvalidParameter.ExistedProcedureName"
        case invalidParameter_ExpireTime = "InvalidParameter.ExpireTime"
        case invalidParameter_ProcedureNameNotExist = "InvalidParameter.ProcedureNameNotExist"
        case invalidParameter_StorageRegion = "InvalidParameter.StorageRegion"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_KeyFrameDescCountReachMax = "LimitExceeded.KeyFrameDescCountReachMax"
        case limitExceeded_TagCountReachMax = "LimitExceeded.TagCountReachMax"
        case limitExceeded_TooMuchTemplate = "LimitExceeded.TooMuchTemplate"
        case missingParameter = "MissingParameter"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_CoverUrl = "ResourceNotFound.CoverUrl"
        case resourceNotFound_FileNotExist = "ResourceNotFound.FileNotExist"
        case resourceNotFound_Person = "ResourceNotFound.Person"
        case resourceNotFound_ServiceNotExist = "ResourceNotFound.ServiceNotExist"
        case resourceNotFound_TemplateNotExist = "ResourceNotFound.TemplateNotExist"
        case resourceNotFound_UserNotExist = "ResourceNotFound.UserNotExist"
        case resourceNotFound_Word = "ResourceNotFound.Word"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_MasterPlaylist = "ResourceUnavailable.MasterPlaylist"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_ClassNotEmpty = "UnsupportedOperation.ClassNotEmpty"
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
    public static var authFailure: TCVodError {
        TCVodError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCVodError {
        TCVodError(.failedOperation)
    }
    
    /// 操作失败：超过分类层数限制。
    public static var failedOperation_ClassLevelLimitExceeded: TCVodError {
        TCVodError(.failedOperation_ClassLevelLimitExceeded)
    }
    
    /// 操作失败：分类名称重复。
    public static var failedOperation_ClassNameDuplicate: TCVodError {
        TCVodError(.failedOperation_ClassNameDuplicate)
    }
    
    /// 操作失败：分类不存在。
    public static var failedOperation_ClassNoFound: TCVodError {
        TCVodError(.failedOperation_ClassNoFound)
    }
    
    /// 操作失败：不支持的封面类型。
    public static var failedOperation_CoverType: TCVodError {
        TCVodError(.failedOperation_CoverType)
    }
    
    /// 域名部署中，不能变更配置。
    public static var failedOperation_DomainDeploying: TCVodError {
        TCVodError(.failedOperation_DomainDeploying)
    }
    
    /// 用户账户异常。
    public static var failedOperation_InvalidAccount: TCVodError {
        TCVodError(.failedOperation_InvalidAccount)
    }
    
    /// 没有开通点播业务。
    public static var failedOperation_InvalidVodUser: TCVodError {
        TCVodError(.failedOperation_InvalidVodUser)
    }
    
    /// 媒体被系统封禁。
    public static var failedOperation_MediaForbidedBySystem: TCVodError {
        TCVodError(.failedOperation_MediaForbidedBySystem)
    }
    
    /// 操作失败：不支持的媒体类型。
    public static var failedOperation_MediaType: TCVodError {
        TCVodError(.failedOperation_MediaType)
    }
    
    /// 网络错误。
    public static var failedOperation_NetWorkError: TCVodError {
        TCVodError(.failedOperation_NetWorkError)
    }
    
    /// 没有开通该接口使用权限。
    public static var failedOperation_NoPrivileges: TCVodError {
        TCVodError(.failedOperation_NoPrivileges)
    }
    
    /// 操作失败：父类 ID 不存在。
    public static var failedOperation_ParentIdNoFound: TCVodError {
        TCVodError(.failedOperation_ParentIdNoFound)
    }
    
    /// 操作失败：子类数量超过限制。
    public static var failedOperation_SubclassLimitExceeded: TCVodError {
        TCVodError(.failedOperation_SubclassLimitExceeded)
    }
    
    /// 操作失败：任务重复。
    public static var failedOperation_TaskDuplicate: TCVodError {
        TCVodError(.failedOperation_TaskDuplicate)
    }
    
    /// 操作失败：上传文件到 cos 失败。
    public static var failedOperation_UploadCosFail: TCVodError {
        TCVodError(.failedOperation_UploadCosFail)
    }
    
    /// 用户已经停服。
    public static var failedOperation_UserStatusInavlid: TCVodError {
        TCVodError(.failedOperation_UserStatusInavlid)
    }
    
    /// 内部错误。
    public static var internalError: TCVodError {
        TCVodError(.internalError)
    }
    
    /// 内部错误，访问DB失败。
    public static var internalError_DBError: TCVodError {
        TCVodError(.internalError_DBError)
    }
    
    /// 内部错误：生成模板 ID 失败。
    public static var internalError_GenDefinition: TCVodError {
        TCVodError(.internalError_GenDefinition)
    }
    
    /// 内部错误：获取媒体文件信息错误。
    public static var internalError_GetFileInfoError: TCVodError {
        TCVodError(.internalError_GetFileInfoError)
    }
    
    /// 内部错误：获取媒体列表错误。
    public static var internalError_GetMediaListError: TCVodError {
        TCVodError(.internalError_GetMediaListError)
    }
    
    /// 时间解析错误。
    public static var internalError_TimeParseError: TCVodError {
        TCVodError(.internalError_TimeParseError)
    }
    
    /// 内部错误：更新媒体文件信息错误。
    public static var internalError_UpdateMediaError: TCVodError {
        TCVodError(.internalError_UpdateMediaError)
    }
    
    /// 内部错误：上传封面图片错误。
    public static var internalError_UploadCoverImageError: TCVodError {
        TCVodError(.internalError_UploadCoverImageError)
    }
    
    /// 内部错误：上传水印图片失败。
    public static var internalError_UploadWatermarkError: TCVodError {
        TCVodError(.internalError_UploadWatermarkError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCVodError {
        TCVodError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCVodError {
        TCVodError(.invalidParameterValue)
    }
    
    /// 参数值错误：AddKeyFrameDescs 与 ClearKeyFrameDescs 参数冲突。
    public static var invalidParameterValue_AddKeyFrameDescsAndClearKeyFrameDescsConflict: TCVodError {
        TCVodError(.invalidParameterValue_AddKeyFrameDescsAndClearKeyFrameDescsConflict)
    }
    
    /// 参数值错误：AddKeyFrameDescs 与 DeleteKeyFrameDescs 参数冲突。
    public static var invalidParameterValue_AddKeyFrameDescsAndDeleteKeyFrameDescsConflict: TCVodError {
        TCVodError(.invalidParameterValue_AddKeyFrameDescsAndDeleteKeyFrameDescsConflict)
    }
    
    /// 参数值错误：AddTags 与 ClearTags 参数冲突。
    public static var invalidParameterValue_AddTagsAndClearTagsConflict: TCVodError {
        TCVodError(.invalidParameterValue_AddTagsAndClearTagsConflict)
    }
    
    /// 参数值错误：AddTags 与 DeleteTags 参数冲突。
    public static var invalidParameterValue_AddTagsAndDeleteTagsConflict: TCVodError {
        TCVodError(.invalidParameterValue_AddTagsAndDeleteTagsConflict)
    }
    
    /// 参数值错误：AI 分析 Definition。
    public static var invalidParameterValue_AiAnalysisTaskDefinition: TCVodError {
        TCVodError(.invalidParameterValue_AiAnalysisTaskDefinition)
    }
    
    /// 参数值错误：AI 内容审核 Definition。
    public static var invalidParameterValue_AiContentReviewTaskDefinition: TCVodError {
        TCVodError(.invalidParameterValue_AiContentReviewTaskDefinition)
    }
    
    /// 参数值错误：AI 识别 Definition。
    public static var invalidParameterValue_AiRecognitionTaskDefinition: TCVodError {
        TCVodError(.invalidParameterValue_AiRecognitionTaskDefinition)
    }
    
    /// Area 参数错误。
    public static var invalidParameterValue_Area: TCVodError {
        TCVodError(.invalidParameterValue_Area)
    }
    
    /// 参数错误：音频流码率。
    public static var invalidParameterValue_AudioBitrate: TCVodError {
        TCVodError(.invalidParameterValue_AudioBitrate)
    }
    
    /// 参数值错误：AudioChannel。
    public static var invalidParameterValue_AudioChannel: TCVodError {
        TCVodError(.invalidParameterValue_AudioChannel)
    }
    
    /// 参数错误：音频流编码格式。
    public static var invalidParameterValue_AudioCodec: TCVodError {
        TCVodError(.invalidParameterValue_AudioCodec)
    }
    
    /// 参数错误：音频流采样率。
    public static var invalidParameterValue_AudioSampleRate: TCVodError {
        TCVodError(.invalidParameterValue_AudioSampleRate)
    }
    
    /// 无效的音频/视频码率。
    public static var invalidParameterValue_Bitrate: TCVodError {
        TCVodError(.invalidParameterValue_Bitrate)
    }
    
    /// 参数值错误：BlockConfidence 参数取值非法。
    public static var invalidParameterValue_BlockConfidence: TCVodError {
        TCVodError(.invalidParameterValue_BlockConfidence)
    }
    
    /// 无效的文件类型。
    public static var invalidParameterValue_Categories: TCVodError {
        TCVodError(.invalidParameterValue_Categories)
    }
    
    /// 参数值错误：分类 ID。
    public static var invalidParameterValue_ClassId: TCVodError {
        TCVodError(.invalidParameterValue_ClassId)
    }
    
    /// 参数值错误：ClassIds 无效。
    public static var invalidParameterValue_ClassIds: TCVodError {
        TCVodError(.invalidParameterValue_ClassIds)
    }
    
    /// 参数值错误：ClassName 无效。
    public static var invalidParameterValue_ClassName: TCVodError {
        TCVodError(.invalidParameterValue_ClassName)
    }
    
    /// 智能分类控制字段参数错误。
    public static var invalidParameterValue_ClassifcationConfigure: TCVodError {
        TCVodError(.invalidParameterValue_ClassifcationConfigure)
    }
    
    /// 参数值错误：裁剪时间段太长。
    public static var invalidParameterValue_ClipDuration: TCVodError {
        TCVodError(.invalidParameterValue_ClipDuration)
    }
    
    /// 无效的音频/视频编码格式。
    public static var invalidParameterValue_Codec: TCVodError {
        TCVodError(.invalidParameterValue_Codec)
    }
    
    /// 参数值错误：ColumnCount。
    public static var invalidParameterValue_ColumnCount: TCVodError {
        TCVodError(.invalidParameterValue_ColumnCount)
    }
    
    /// 参数错误：对该模板的描述。
    public static var invalidParameterValue_Comment: TCVodError {
        TCVodError(.invalidParameterValue_Comment)
    }
    
    /// 参数错误：封装格式。
    public static var invalidParameterValue_Container: TCVodError {
        TCVodError(.invalidParameterValue_Container)
    }
    
    /// 参数值错误：ContainerType。
    public static var invalidParameterValue_ContainerType: TCVodError {
        TCVodError(.invalidParameterValue_ContainerType)
    }
    
    /// 参数值错误：CoordinateOrigin。
    public static var invalidParameterValue_CoordinateOrigin: TCVodError {
        TCVodError(.invalidParameterValue_CoordinateOrigin)
    }
    
    /// 智能封面控制字段参数错误。
    public static var invalidParameterValue_CoverConfigure: TCVodError {
        TCVodError(.invalidParameterValue_CoverConfigure)
    }
    
    /// 参数值错误：封面类型。
    public static var invalidParameterValue_CoverType: TCVodError {
        TCVodError(.invalidParameterValue_CoverType)
    }
    
    /// 参数值错误：封面 URL。
    public static var invalidParameterValue_CoverUrl: TCVodError {
        TCVodError(.invalidParameterValue_CoverUrl)
    }
    
    /// 参数值错误：CutAndCrops 参数取值非法。
    public static var invalidParameterValue_CutAndCrops: TCVodError {
        TCVodError(.invalidParameterValue_CutAndCrops)
    }
    
    /// 参数值错误，时间粒度。
    public static var invalidParameterValue_DataInterval: TCVodError {
        TCVodError(.invalidParameterValue_DataInterval)
    }
    
    /// 参数值错误，数据类型。
    public static var invalidParameterValue_DataType: TCVodError {
        TCVodError(.invalidParameterValue_DataType)
    }
    
    /// 参数值错误：Date。
    public static var invalidParameterValue_Date: TCVodError {
        TCVodError(.invalidParameterValue_Date)
    }
    
    /// 参数值错误：人脸默认库过滤标签非法。
    public static var invalidParameterValue_DefaultLibraryLabelSet: TCVodError {
        TCVodError(.invalidParameterValue_DefaultLibraryLabelSet)
    }
    
    /// 参数错误：Definition。
    public static var invalidParameterValue_Definition: TCVodError {
        TCVodError(.invalidParameterValue_Definition)
    }
    
    /// 参数错误：Definitions。
    public static var invalidParameterValue_Definitions: TCVodError {
        TCVodError(.invalidParameterValue_Definitions)
    }
    
    /// 参数值错误：不允许删除默认模板。
    public static var invalidParameterValue_DeleteDefaultTemplate: TCVodError {
        TCVodError(.invalidParameterValue_DeleteDefaultTemplate)
    }
    
    /// 参数值错误：Description 超过长度限制。
    public static var invalidParameterValue_Description: TCVodError {
        TCVodError(.invalidParameterValue_Description)
    }
    
    /// 无效的禁止码率低转高开关值。
    public static var invalidParameterValue_DisableHigherVideoBitrate: TCVodError {
        TCVodError(.invalidParameterValue_DisableHigherVideoBitrate)
    }
    
    /// 无效的禁止分辨率低转高开关值。
    public static var invalidParameterValue_DisableHigherVideoResolution: TCVodError {
        TCVodError(.invalidParameterValue_DisableHigherVideoResolution)
    }
    
    /// Districts 参数值错误。
    public static var invalidParameterValue_Districts: TCVodError {
        TCVodError(.invalidParameterValue_Districts)
    }
    
    /// 参数错误：不存在的域名。
    public static var invalidParameterValue_DomainName: TCVodError {
        TCVodError(.invalidParameterValue_DomainName)
    }
    
    /// 恶意域名，无法添加。
    public static var invalidParameterValue_DomainNameInBlackList: TCVodError {
        TCVodError(.invalidParameterValue_DomainNameInBlackList)
    }
    
    /// 参数值，域名列表太大。
    public static var invalidParameterValue_DomainNames: TCVodError {
        TCVodError(.invalidParameterValue_DomainNames)
    }
    
    /// 无效的DRM类型。
    public static var invalidParameterValue_DrmType: TCVodError {
        TCVodError(.invalidParameterValue_DrmType)
    }
    
    /// 参数值错误：EndDate 无效。
    public static var invalidParameterValue_EndDate: TCVodError {
        TCVodError(.invalidParameterValue_EndDate)
    }
    
    /// 参数值错误：EndTime 无效。
    public static var invalidParameterValue_EndTime: TCVodError {
        TCVodError(.invalidParameterValue_EndTime)
    }
    
    /// 参数错误：无效的结束时间。
    public static var invalidParameterValue_EndTimeOffset: TCVodError {
        TCVodError(.invalidParameterValue_EndTimeOffset)
    }
    
    /// 参数值错误：ExpireTime 格式错误。
    public static var invalidParameterValue_ExpireTime: TCVodError {
        TCVodError(.invalidParameterValue_ExpireTime)
    }
    
    /// 参数值错误：人脸重复。
    public static var invalidParameterValue_FaceDuplicate: TCVodError {
        TCVodError(.invalidParameterValue_FaceDuplicate)
    }
    
    /// 参数值错误：人脸库参数非法。
    public static var invalidParameterValue_FaceLibrary: TCVodError {
        TCVodError(.invalidParameterValue_FaceLibrary)
    }
    
    /// 参数值错误：人脸分数参数取值非法。
    public static var invalidParameterValue_FaceScore: TCVodError {
        TCVodError(.invalidParameterValue_FaceScore)
    }
    
    /// FileId 不存在。
    public static var invalidParameterValue_FileId: TCVodError {
        TCVodError(.invalidParameterValue_FileId)
    }
    
    /// FileIds 参数错误。
    public static var invalidParameterValue_FileIds: TCVodError {
        TCVodError(.invalidParameterValue_FileIds)
    }
    
    /// FileIds 数组为空。
    public static var invalidParameterValue_FileIdsEmpty: TCVodError {
        TCVodError(.invalidParameterValue_FileIdsEmpty)
    }
    
    /// 参数值错误：FileId 过多。
    public static var invalidParameterValue_FileIdsTooMany: TCVodError {
        TCVodError(.invalidParameterValue_FileIdsTooMany)
    }
    
    /// 错误的视频类型。
    public static var invalidParameterValue_FileType: TCVodError {
        TCVodError(.invalidParameterValue_FileType)
    }
    
    /// 参数错误：填充方式错误。
    public static var invalidParameterValue_FillType: TCVodError {
        TCVodError(.invalidParameterValue_FillType)
    }
    
    /// 参数错误：是否去除视频，应为0或1。
    public static var invalidParameterValue_FiltrateAudio: TCVodError {
        TCVodError(.invalidParameterValue_FiltrateAudio)
    }
    
    /// 参数错误：去除视频。
    public static var invalidParameterValue_FiltrateVideo: TCVodError {
        TCVodError(.invalidParameterValue_FiltrateVideo)
    }
    
    /// 参数值错误：Format。
    public static var invalidParameterValue_Format: TCVodError {
        TCVodError(.invalidParameterValue_Format)
    }
    
    /// 参数值错误：Format 为 webp 时，Width、Height 均为空。
    public static var invalidParameterValue_FormatWebpLackWidthAndHeight: TCVodError {
        TCVodError(.invalidParameterValue_FormatWebpLackWidthAndHeight)
    }
    
    /// 参数值错误：Format 为 webp 时，不允许 Width、Height 都为 0。
    public static var invalidParameterValue_FormatWebpWidthAndHeightBothZero: TCVodError {
        TCVodError(.invalidParameterValue_FormatWebpWidthAndHeightBothZero)
    }
    
    /// 参数错误：视频帧率。
    public static var invalidParameterValue_Fps: TCVodError {
        TCVodError(.invalidParameterValue_Fps)
    }
    
    /// 智能按帧标签控制字段参数错误。
    public static var invalidParameterValue_FrameTagConfigure: TCVodError {
        TCVodError(.invalidParameterValue_FrameTagConfigure)
    }
    
    /// 参数值错误：FunctionArg。
    public static var invalidParameterValue_FunctionArg: TCVodError {
        TCVodError(.invalidParameterValue_FunctionArg)
    }
    
    /// 参数值错误：FunctionName。
    public static var invalidParameterValue_FunctionName: TCVodError {
        TCVodError(.invalidParameterValue_FunctionName)
    }
    
    /// 参数错误：高度。
    public static var invalidParameterValue_Height: TCVodError {
        TCVodError(.invalidParameterValue_Height)
    }
    
    /// 智能精彩集锦控制参数错误。
    public static var invalidParameterValue_HighlightConfigure: TCVodError {
        TCVodError(.invalidParameterValue_HighlightConfigure)
    }
    
    /// ImageContent参数值无效。
    public static var invalidParameterValue_ImageContent: TCVodError {
        TCVodError(.invalidParameterValue_ImageContent)
    }
    
    /// 图片解 Base64 编码失败。
    public static var invalidParameterValue_ImageDecodeError: TCVodError {
        TCVodError(.invalidParameterValue_ImageDecodeError)
    }
    
    /// 参数错误：图片水印模板。
    public static var invalidParameterValue_ImageTemplate: TCVodError {
        TCVodError(.invalidParameterValue_ImageTemplate)
    }
    
    /// 参数值错误：Interval 无效。
    public static var invalidParameterValue_Interval: TCVodError {
        TCVodError(.invalidParameterValue_Interval)
    }
    
    /// 参数错误：无效的操作类型。
    public static var invalidParameterValue_InvalidOperationType: TCVodError {
        TCVodError(.invalidParameterValue_InvalidOperationType)
    }
    
    /// Isps 参数错误。
    public static var invalidParameterValue_Isps: TCVodError {
        TCVodError(.invalidParameterValue_Isps)
    }
    
    /// 参数值错误：打点信息内容过长。
    public static var invalidParameterValue_KeyFrameDescContentTooLong: TCVodError {
        TCVodError(.invalidParameterValue_KeyFrameDescContentTooLong)
    }
    
    /// 参数值错误：LabelSet 参数取值非法。
    public static var invalidParameterValue_LabelSet: TCVodError {
        TCVodError(.invalidParameterValue_LabelSet)
    }
    
    /// 参数错误：Limit。
    public static var invalidParameterValue_Limit: TCVodError {
        TCVodError(.invalidParameterValue_Limit)
    }
    
    /// 参数值错误：Limit 过大。
    public static var invalidParameterValue_LimitTooLarge: TCVodError {
        TCVodError(.invalidParameterValue_LimitTooLarge)
    }
    
    /// 参数取值错误：MediaManifestContent。
    public static var invalidParameterValue_MediaManifestContent: TCVodError {
        TCVodError(.invalidParameterValue_MediaManifestContent)
    }
    
    /// 参数值错误：媒体类型。
    public static var invalidParameterValue_MediaType: TCVodError {
        TCVodError(.invalidParameterValue_MediaType)
    }
    
    /// 参数值错误：媒体文件 URL。
    public static var invalidParameterValue_MediaUrl: TCVodError {
        TCVodError(.invalidParameterValue_MediaUrl)
    }
    
    /// Metric 参数错误。
    public static var invalidParameterValue_Metric: TCVodError {
        TCVodError(.invalidParameterValue_Metric)
    }
    
    /// 参数值错误：不允许修改默认模板。
    public static var invalidParameterValue_ModifyDefaultTemplate: TCVodError {
        TCVodError(.invalidParameterValue_ModifyDefaultTemplate)
    }
    
    /// 参数值错误：Name 超过长度限制。
    public static var invalidParameterValue_Name: TCVodError {
        TCVodError(.invalidParameterValue_Name)
    }
    
    /// 无效的文件名前缀。
    public static var invalidParameterValue_NamePrefixes: TCVodError {
        TCVodError(.invalidParameterValue_NamePrefixes)
    }
    
    /// Names数组中元素过多。
    public static var invalidParameterValue_Names: TCVodError {
        TCVodError(.invalidParameterValue_Names)
    }
    
    /// 参数错误：文件不支持解冻。
    public static var invalidParameterValue_NotRestorable: TCVodError {
        TCVodError(.invalidParameterValue_NotRestorable)
    }
    
    /// 参数值错误：物体库参数非法。
    public static var invalidParameterValue_ObjectLibrary: TCVodError {
        TCVodError(.invalidParameterValue_ObjectLibrary)
    }
    
    /// 参数值错误：Offset 无效。
    public static var invalidParameterValue_Offset: TCVodError {
        TCVodError(.invalidParameterValue_Offset)
    }
    
    /// 参数值错误：Offset 过大。
    public static var invalidParameterValue_OffsetTooLarge: TCVodError {
        TCVodError(.invalidParameterValue_OffsetTooLarge)
    }
    
    /// 参数值错误：Operation 无效。
    public static var invalidParameterValue_Operation: TCVodError {
        TCVodError(.invalidParameterValue_Operation)
    }
    
    /// 参数值错误：文件原存储类型异常。
    public static var invalidParameterValue_OriginalStorageClass: TCVodError {
        TCVodError(.invalidParameterValue_OriginalStorageClass)
    }
    
    /// 参数值错误：ParentId 无效。
    public static var invalidParameterValue_ParentId: TCVodError {
        TCVodError(.invalidParameterValue_ParentId)
    }
    
    /// 参数值错误：人脸图片格式错误。
    public static var invalidParameterValue_PicFormatError: TCVodError {
        TCVodError(.invalidParameterValue_PicFormatError)
    }
    
    /// 任务流模板名无效。
    public static var invalidParameterValue_ProcedureName: TCVodError {
        TCVodError(.invalidParameterValue_ProcedureName)
    }
    
    /// 参数值错误：Quality。
    public static var invalidParameterValue_Quality: TCVodError {
        TCVodError(.invalidParameterValue_Quality)
    }
    
    /// 参数值错误：RemoveAudio。
    public static var invalidParameterValue_RemoveAudio: TCVodError {
        TCVodError(.invalidParameterValue_RemoveAudio)
    }
    
    /// 参数值错误：RemoveVideo。
    public static var invalidParameterValue_RemoveVideo: TCVodError {
        TCVodError(.invalidParameterValue_RemoveVideo)
    }
    
    /// 参数错误：RepeatType 无效。
    public static var invalidParameterValue_RepeatType: TCVodError {
        TCVodError(.invalidParameterValue_RepeatType)
    }
    
    /// 参数错误：分辨率错误。
    public static var invalidParameterValue_Resolution: TCVodError {
        TCVodError(.invalidParameterValue_Resolution)
    }
    
    /// 无效的ResolutionAdaptive。
    public static var invalidParameterValue_ResolutionAdaptive: TCVodError {
        TCVodError(.invalidParameterValue_ResolutionAdaptive)
    }
    
    /// 参数错误：解冻天数错误。
    public static var invalidParameterValue_RestoreDay: TCVodError {
        TCVodError(.invalidParameterValue_RestoreDay)
    }
    
    /// 参数错误：不支持的解冻模式。
    public static var invalidParameterValue_RestoreTier: TCVodError {
        TCVodError(.invalidParameterValue_RestoreTier)
    }
    
    /// 参数值错误：ReviewConfidence 参数取值非法。
    public static var invalidParameterValue_ReviewConfidence: TCVodError {
        TCVodError(.invalidParameterValue_ReviewConfidence)
    }
    
    /// 参数值错误：ReviewWallSwitch 参数取值非法。
    public static var invalidParameterValue_ReviewWallSwitch: TCVodError {
        TCVodError(.invalidParameterValue_ReviewWallSwitch)
    }
    
    /// 参数值错误：RowCount。
    public static var invalidParameterValue_RowCount: TCVodError {
        TCVodError(.invalidParameterValue_RowCount)
    }
    
    /// 参数值错误：SampleInterval。
    public static var invalidParameterValue_SampleInterval: TCVodError {
        TCVodError(.invalidParameterValue_SampleInterval)
    }
    
    /// 无效的音频采样率。
    public static var invalidParameterValue_SampleRate: TCVodError {
        TCVodError(.invalidParameterValue_SampleRate)
    }
    
    /// 参数值错误：SampleType。
    public static var invalidParameterValue_SampleType: TCVodError {
        TCVodError(.invalidParameterValue_SampleType)
    }
    
    /// 参数值错误：ScreenshotInterval 参数取值非法。
    public static var invalidParameterValue_ScreenshotInterval: TCVodError {
        TCVodError(.invalidParameterValue_ScreenshotInterval)
    }
    
    /// SessionContext 过长。
    public static var invalidParameterValue_SessionContextTooLong: TCVodError {
        TCVodError(.invalidParameterValue_SessionContextTooLong)
    }
    
    /// 去重识别码重复，请求被去重。
    public static var invalidParameterValue_SessionId: TCVodError {
        TCVodError(.invalidParameterValue_SessionId)
    }
    
    /// SessionId 过长。
    public static var invalidParameterValue_SessionIdTooLong: TCVodError {
        TCVodError(.invalidParameterValue_SessionIdTooLong)
    }
    
    /// 参数值错误：Sort 无效。
    public static var invalidParameterValue_Sort: TCVodError {
        TCVodError(.invalidParameterValue_Sort)
    }
    
    /// 参数错误：音频通道方式。
    public static var invalidParameterValue_SoundSystem: TCVodError {
        TCVodError(.invalidParameterValue_SoundSystem)
    }
    
    /// SourceDefinition 错误，请检查媒体文件是否有对应的转码。
    public static var invalidParameterValue_SourceDefinition: TCVodError {
        TCVodError(.invalidParameterValue_SourceDefinition)
    }
    
    /// 参数值错误：SourceType 无效。
    public static var invalidParameterValue_SourceType: TCVodError {
        TCVodError(.invalidParameterValue_SourceType)
    }
    
    /// 未知的媒体文件来源。
    public static var invalidParameterValue_SourceTypes: TCVodError {
        TCVodError(.invalidParameterValue_SourceTypes)
    }
    
    /// 参数值错误：StartDate 无效。
    public static var invalidParameterValue_StartDate: TCVodError {
        TCVodError(.invalidParameterValue_StartDate)
    }
    
    /// 参数值错误：StartTime 无效。
    public static var invalidParameterValue_StartTime: TCVodError {
        TCVodError(.invalidParameterValue_StartTime)
    }
    
    /// 参数错误：无效的起始时间。
    public static var invalidParameterValue_StartTimeOffset: TCVodError {
        TCVodError(.invalidParameterValue_StartTimeOffset)
    }
    
    /// 参数值错误：人工确认结果取值非法。
    public static var invalidParameterValue_Status: TCVodError {
        TCVodError(.invalidParameterValue_Status)
    }
    
    /// 参数值错误：目标存储类型不在可选值中。
    public static var invalidParameterValue_StorageClass: TCVodError {
        TCVodError(.invalidParameterValue_StorageClass)
    }
    
    /// 参数值错误：存储地域。
    public static var invalidParameterValue_StorageRegion: TCVodError {
        TCVodError(.invalidParameterValue_StorageRegion)
    }
    
    /// 参数值错误：StorageRegions 无效。
    public static var invalidParameterValue_StorageRegions: TCVodError {
        TCVodError(.invalidParameterValue_StorageRegions)
    }
    
    /// 参数值错误：StorageType。
    public static var invalidParameterValue_StorageType: TCVodError {
        TCVodError(.invalidParameterValue_StorageType)
    }
    
    /// 参数值错误：StreamId无效。
    public static var invalidParameterValue_StreamIdInvalid: TCVodError {
        TCVodError(.invalidParameterValue_StreamIdInvalid)
    }
    
    /// 无效的流ID参数。
    public static var invalidParameterValue_StreamIds: TCVodError {
        TCVodError(.invalidParameterValue_StreamIds)
    }
    
    /// 参数值错误：子应用 ID。
    public static var invalidParameterValue_SubAppId: TCVodError {
        TCVodError(.invalidParameterValue_SubAppId)
    }
    
    /// 参数值错误：SubtitleFormat 参数非法。
    public static var invalidParameterValue_SubtitleFormat: TCVodError {
        TCVodError(.invalidParameterValue_SubtitleFormat)
    }
    
    /// 参数值错误：SVG 为空。
    public static var invalidParameterValue_SvgTemplate: TCVodError {
        TCVodError(.invalidParameterValue_SvgTemplate)
    }
    
    /// 参数值错误：SVG 高度。
    public static var invalidParameterValue_SvgTemplateHeight: TCVodError {
        TCVodError(.invalidParameterValue_SvgTemplateHeight)
    }
    
    /// 参数值错误：SVG 宽度。
    public static var invalidParameterValue_SvgTemplateWidth: TCVodError {
        TCVodError(.invalidParameterValue_SvgTemplateWidth)
    }
    
    /// 参数值错误：Switch 参数取值非法。
    public static var invalidParameterValue_Switch: TCVodError {
        TCVodError(.invalidParameterValue_Switch)
    }
    
    /// 参数值错误：TEHD Type 无效。
    public static var invalidParameterValue_TEHDType: TCVodError {
        TCVodError(.invalidParameterValue_TEHDType)
    }
    
    /// 智能标签控制字段参数错误。
    public static var invalidParameterValue_TagConfigure: TCVodError {
        TCVodError(.invalidParameterValue_TagConfigure)
    }
    
    /// 参数值错误：标签过长。
    public static var invalidParameterValue_TagTooLong: TCVodError {
        TCVodError(.invalidParameterValue_TagTooLong)
    }
    
    /// 参数值错误：Tags 无效。
    public static var invalidParameterValue_Tags: TCVodError {
        TCVodError(.invalidParameterValue_Tags)
    }
    
    /// 任务 ID 不存在。
    public static var invalidParameterValue_TaskId: TCVodError {
        TCVodError(.invalidParameterValue_TaskId)
    }
    
    /// 参数值错误：搜索文本。
    public static var invalidParameterValue_Text: TCVodError {
        TCVodError(.invalidParameterValue_Text)
    }
    
    /// 参数错误：文字透明度。
    public static var invalidParameterValue_TextAlpha: TCVodError {
        TCVodError(.invalidParameterValue_TextAlpha)
    }
    
    /// 参数错误：文字模板。
    public static var invalidParameterValue_TextTemplate: TCVodError {
        TCVodError(.invalidParameterValue_TextTemplate)
    }
    
    /// 参数值错误：Thumbnail 参数取值非法。
    public static var invalidParameterValue_Thumbnails: TCVodError {
        TCVodError(.invalidParameterValue_Thumbnails)
    }
    
    /// 参数值错误：TimeType。
    public static var invalidParameterValue_TimeType: TCVodError {
        TCVodError(.invalidParameterValue_TimeType)
    }
    
    /// Type 参数值错误。
    public static var invalidParameterValue_Type: TCVodError {
        TCVodError(.invalidParameterValue_Type)
    }
    
    /// 无效的 Types 参数。
    public static var invalidParameterValue_Types: TCVodError {
        TCVodError(.invalidParameterValue_Types)
    }
    
    /// 去重识别码一天内重复，请求被去重。
    public static var invalidParameterValue_UniqueIdentifier: TCVodError {
        TCVodError(.invalidParameterValue_UniqueIdentifier)
    }
    
    /// 参数值错误：文件不支持该解冻方式。
    public static var invalidParameterValue_UnsupportedRestoreTier: TCVodError {
        TCVodError(.invalidParameterValue_UnsupportedRestoreTier)
    }
    
    /// 参数值错误：不支持的目标存储类型，深度归档只支持部分园区。
    public static var invalidParameterValue_UnsupportedStorageClass: TCVodError {
        TCVodError(.invalidParameterValue_UnsupportedStorageClass)
    }
    
    /// 参数值错误：不支持的存储类型转换。
    public static var invalidParameterValue_UnsupportedTransition: TCVodError {
        TCVodError(.invalidParameterValue_UnsupportedTransition)
    }
    
    /// 参数错误：无效的Url。
    public static var invalidParameterValue_Url: TCVodError {
        TCVodError(.invalidParameterValue_Url)
    }
    
    /// 参数值错误：人脸用户自定义库过滤标签非法。
    public static var invalidParameterValue_UserDefineLibraryLabelSet: TCVodError {
        TCVodError(.invalidParameterValue_UserDefineLibraryLabelSet)
    }
    
    /// 参数错误：vcrf。
    public static var invalidParameterValue_Vcrf: TCVodError {
        TCVodError(.invalidParameterValue_Vcrf)
    }
    
    /// 参数错误：视频流码率。
    public static var invalidParameterValue_VideoBitrate: TCVodError {
        TCVodError(.invalidParameterValue_VideoBitrate)
    }
    
    /// 参数错误：视频流的编码格式。
    public static var invalidParameterValue_VideoCodec: TCVodError {
        TCVodError(.invalidParameterValue_VideoCodec)
    }
    
    /// 无效的 Vids 参数。
    public static var invalidParameterValue_Vids: TCVodError {
        TCVodError(.invalidParameterValue_Vids)
    }
    
    /// 参数值错误：点播会话。
    public static var invalidParameterValue_VodSessionKey: TCVodError {
        TCVodError(.invalidParameterValue_VodSessionKey)
    }
    
    /// 参数值错误：Watermarks 参数取值非法。
    public static var invalidParameterValue_Watermarks: TCVodError {
        TCVodError(.invalidParameterValue_Watermarks)
    }
    
    /// 参数错误：宽度。
    public static var invalidParameterValue_Width: TCVodError {
        TCVodError(.invalidParameterValue_Width)
    }
    
    /// 水印原点距离视频图像坐标原点的水平位置。支持 %、px 两种格式。
    public static var invalidParameterValue_XPos: TCVodError {
        TCVodError(.invalidParameterValue_XPos)
    }
    
    /// 水印原点距离视频图像坐标原点的垂直位置。支持 %、px 两种格式。
    public static var invalidParameterValue_YPos: TCVodError {
        TCVodError(.invalidParameterValue_YPos)
    }
    
    /// 任务流模板名字已存在。
    public static var invalidParameter_ExistedProcedureName: TCVodError {
        TCVodError(.invalidParameter_ExistedProcedureName)
    }
    
    /// 参数值错误：过期时间。
    public static var invalidParameter_ExpireTime: TCVodError {
        TCVodError(.invalidParameter_ExpireTime)
    }
    
    /// 任务流模板名字不存在。
    public static var invalidParameter_ProcedureNameNotExist: TCVodError {
        TCVodError(.invalidParameter_ProcedureNameNotExist)
    }
    
    /// 参数值错误：存储地域。
    public static var invalidParameter_StorageRegion: TCVodError {
        TCVodError(.invalidParameter_StorageRegion)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCVodError {
        TCVodError(.limitExceeded)
    }
    
    /// 超过限制值：新旧打点信息个数和超过限制值。
    public static var limitExceeded_KeyFrameDescCountReachMax: TCVodError {
        TCVodError(.limitExceeded_KeyFrameDescCountReachMax)
    }
    
    /// 超过限制值：新旧标签个数和超过限制值。
    public static var limitExceeded_TagCountReachMax: TCVodError {
        TCVodError(.limitExceeded_TagCountReachMax)
    }
    
    /// 超过限制值：模板数超限。
    public static var limitExceeded_TooMuchTemplate: TCVodError {
        TCVodError(.limitExceeded_TooMuchTemplate)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCVodError {
        TCVodError(.missingParameter)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCVodError {
        TCVodError(.requestLimitExceeded)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCVodError {
        TCVodError(.resourceNotFound)
    }
    
    /// 资源不存在：封面不存在。
    public static var resourceNotFound_CoverUrl: TCVodError {
        TCVodError(.resourceNotFound_CoverUrl)
    }
    
    /// 资源不存在：文件不存在。
    public static var resourceNotFound_FileNotExist: TCVodError {
        TCVodError(.resourceNotFound_FileNotExist)
    }
    
    /// 资源不存在：人物。
    public static var resourceNotFound_Person: TCVodError {
        TCVodError(.resourceNotFound_Person)
    }
    
    /// 没有开通服务。
    public static var resourceNotFound_ServiceNotExist: TCVodError {
        TCVodError(.resourceNotFound_ServiceNotExist)
    }
    
    /// 资源不存在：模板不存在。
    public static var resourceNotFound_TemplateNotExist: TCVodError {
        TCVodError(.resourceNotFound_TemplateNotExist)
    }
    
    /// 用户不存在。
    public static var resourceNotFound_UserNotExist: TCVodError {
        TCVodError(.resourceNotFound_UserNotExist)
    }
    
    /// 资源不存在：关键词。
    public static var resourceNotFound_Word: TCVodError {
        TCVodError(.resourceNotFound_Word)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCVodError {
        TCVodError(.resourceUnavailable)
    }
    
    /// 参数错误：不支持MasterPlaylist的M3u8。
    public static var resourceUnavailable_MasterPlaylist: TCVodError {
        TCVodError(.resourceUnavailable_MasterPlaylist)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCVodError {
        TCVodError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCVodError {
        TCVodError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCVodError {
        TCVodError(.unsupportedOperation)
    }
    
    /// 不支持删除非空分类。
    public static var unsupportedOperation_ClassNotEmpty: TCVodError {
        TCVodError(.unsupportedOperation_ClassNotEmpty)
    }
}

extension TCVodError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceNotFound.self, ResourceUnavailable.self, UnsupportedOperation.self]
    }
}

extension TCVodError: Equatable {
    public static func == (lhs: TCVodError, rhs: TCVodError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCVodError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}