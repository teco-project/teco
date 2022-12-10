public struct TCMpsError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_BucketNotifyAlreadyExist = "FailedOperation.BucketNotifyAlreadyExist"
        case failedOperation_CosStatusInavlid = "FailedOperation.CosStatusInavlid"
        case failedOperation_InvalidMpsUser = "FailedOperation.InvalidMpsUser"
        case failedOperation_InvalidUser = "FailedOperation.InvalidUser"
        case internalError = "InternalError"
        case internalError_AccessDBError = "InternalError.AccessDBError"
        case internalError_GenDefinition = "InternalError.GenDefinition"
        case internalError_UploadWatermarkError = "InternalError.UploadWatermarkError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AudioBitrate = "InvalidParameterValue.AudioBitrate"
        case invalidParameterValue_AudioChannel = "InvalidParameterValue.AudioChannel"
        case invalidParameterValue_AudioCodec = "InvalidParameterValue.AudioCodec"
        case invalidParameterValue_AudioSampleRate = "InvalidParameterValue.AudioSampleRate"
        case invalidParameterValue_Bitrate = "InvalidParameterValue.Bitrate"
        case invalidParameterValue_BlockConfidence = "InvalidParameterValue.BlockConfidence"
        case invalidParameterValue_ClassifcationConfigure = "InvalidParameterValue.ClassifcationConfigure"
        case invalidParameterValue_Codec = "InvalidParameterValue.Codec"
        case invalidParameterValue_ColumnCount = "InvalidParameterValue.ColumnCount"
        case invalidParameterValue_Comment = "InvalidParameterValue.Comment"
        case invalidParameterValue_Container = "InvalidParameterValue.Container"
        case invalidParameterValue_ContainerType = "InvalidParameterValue.ContainerType"
        case invalidParameterValue_CoordinateOrigin = "InvalidParameterValue.CoordinateOrigin"
        case invalidParameterValue_CoverConfigure = "InvalidParameterValue.CoverConfigure"
        case invalidParameterValue_DefaultLibraryLabelSet = "InvalidParameterValue.DefaultLibraryLabelSet"
        case invalidParameterValue_Definition = "InvalidParameterValue.Definition"
        case invalidParameterValue_Definitions = "InvalidParameterValue.Definitions"
        case invalidParameterValue_DeleteDefaultTemplate = "InvalidParameterValue.DeleteDefaultTemplate"
        case invalidParameterValue_DisableHigherVideoBitrate = "InvalidParameterValue.DisableHigherVideoBitrate"
        case invalidParameterValue_DisableHigherVideoResolution = "InvalidParameterValue.DisableHigherVideoResolution"
        case invalidParameterValue_FaceDuplicate = "InvalidParameterValue.FaceDuplicate"
        case invalidParameterValue_FaceLibrary = "InvalidParameterValue.FaceLibrary"
        case invalidParameterValue_FaceScore = "InvalidParameterValue.FaceScore"
        case invalidParameterValue_FillType = "InvalidParameterValue.FillType"
        case invalidParameterValue_Format = "InvalidParameterValue.Format"
        case invalidParameterValue_FormatWebpLackWidthAndHeight = "InvalidParameterValue.FormatWebpLackWidthAndHeight"
        case invalidParameterValue_FormatWebpWidthAndHeightBothZero = "InvalidParameterValue.FormatWebpWidthAndHeightBothZero"
        case invalidParameterValue_Fps = "InvalidParameterValue.Fps"
        case invalidParameterValue_FrameTagConfigure = "InvalidParameterValue.FrameTagConfigure"
        case invalidParameterValue_FunctionArg = "InvalidParameterValue.FunctionArg"
        case invalidParameterValue_FunctionName = "InvalidParameterValue.FunctionName"
        case invalidParameterValue_Gop = "InvalidParameterValue.Gop"
        case invalidParameterValue_Height = "InvalidParameterValue.Height"
        case invalidParameterValue_ImageContent = "InvalidParameterValue.ImageContent"
        case invalidParameterValue_ImageTemplate = "InvalidParameterValue.ImageTemplate"
        case invalidParameterValue_InvalidContent = "InvalidParameterValue.InvalidContent"
        case invalidParameterValue_InvalidOperationType = "InvalidParameterValue.InvalidOperationType"
        case invalidParameterValue_LabelSet = "InvalidParameterValue.LabelSet"
        case invalidParameterValue_Limit = "InvalidParameterValue.Limit"
        case invalidParameterValue_ModifyDefaultTemplate = "InvalidParameterValue.ModifyDefaultTemplate"
        case invalidParameterValue_Name = "InvalidParameterValue.Name"
        case invalidParameterValue_NotProcessingTask = "InvalidParameterValue.NotProcessingTask"
        case invalidParameterValue_ObjectLibrary = "InvalidParameterValue.ObjectLibrary"
        case invalidParameterValue_PicFormatError = "InvalidParameterValue.PicFormatError"
        case invalidParameterValue_Quality = "InvalidParameterValue.Quality"
        case invalidParameterValue_RemoveAudio = "InvalidParameterValue.RemoveAudio"
        case invalidParameterValue_RemoveVideo = "InvalidParameterValue.RemoveVideo"
        case invalidParameterValue_RepeatType = "InvalidParameterValue.RepeatType"
        case invalidParameterValue_Resolution = "InvalidParameterValue.Resolution"
        case invalidParameterValue_ResolutionAdaptive = "InvalidParameterValue.ResolutionAdaptive"
        case invalidParameterValue_ReviewConfidence = "InvalidParameterValue.ReviewConfidence"
        case invalidParameterValue_RowCount = "InvalidParameterValue.RowCount"
        case invalidParameterValue_SampleInterval = "InvalidParameterValue.SampleInterval"
        case invalidParameterValue_SampleRate = "InvalidParameterValue.SampleRate"
        case invalidParameterValue_SampleType = "InvalidParameterValue.SampleType"
        case invalidParameterValue_SessionContextTooLong = "InvalidParameterValue.SessionContextTooLong"
        case invalidParameterValue_SessionId = "InvalidParameterValue.SessionId"
        case invalidParameterValue_SessionIdTooLong = "InvalidParameterValue.SessionIdTooLong"
        case invalidParameterValue_SoundSystem = "InvalidParameterValue.SoundSystem"
        case invalidParameterValue_SrcFile = "InvalidParameterValue.SrcFile"
        case invalidParameterValue_SubtitleFormat = "InvalidParameterValue.SubtitleFormat"
        case invalidParameterValue_SvgTemplate = "InvalidParameterValue.SvgTemplate"
        case invalidParameterValue_SvgTemplateHeight = "InvalidParameterValue.SvgTemplateHeight"
        case invalidParameterValue_SvgTemplateWidth = "InvalidParameterValue.SvgTemplateWidth"
        case invalidParameterValue_Switch = "InvalidParameterValue.Switch"
        case invalidParameterValue_TEHDType = "InvalidParameterValue.TEHDType"
        case invalidParameterValue_TagConfigure = "InvalidParameterValue.TagConfigure"
        case invalidParameterValue_TaskId = "InvalidParameterValue.TaskId"
        case invalidParameterValue_TextAlpha = "InvalidParameterValue.TextAlpha"
        case invalidParameterValue_TextTemplate = "InvalidParameterValue.TextTemplate"
        case invalidParameterValue_Type = "InvalidParameterValue.Type"
        case invalidParameterValue_UserDefineLibraryLabelSet = "InvalidParameterValue.UserDefineLibraryLabelSet"
        case invalidParameterValue_VideoBitrate = "InvalidParameterValue.VideoBitrate"
        case invalidParameterValue_VideoCodec = "InvalidParameterValue.VideoCodec"
        case invalidParameterValue_Width = "InvalidParameterValue.Width"
        case invalidParameterValue_XPos = "InvalidParameterValue.XPos"
        case invalidParameterValue_YPos = "InvalidParameterValue.YPos"
        case invalidParameter_EndTime = "InvalidParameter.EndTime"
        case invalidParameter_ExceededQuantityLimit = "InvalidParameter.ExceededQuantityLimit"
        case invalidParameter_Id = "InvalidParameter.Id"
        case invalidParameter_Input = "InvalidParameter.Input"
        case invalidParameter_InputOutputId = "InvalidParameter.InputOutputId"
        case invalidParameter_MaxBandwidth = "InvalidParameter.MaxBandwidth"
        case invalidParameter_Name = "InvalidParameter.Name"
        case invalidParameter_NotFound = "InvalidParameter.NotFound"
        case invalidParameter_Output = "InvalidParameter.Output"
        case invalidParameter_OutputGroups = "InvalidParameter.OutputGroups"
        case invalidParameter_OutputId = "InvalidParameter.OutputId"
        case invalidParameter_PageNum = "InvalidParameter.PageNum"
        case invalidParameter_PageSize = "InvalidParameter.PageSize"
        case invalidParameter_Period = "InvalidParameter.Period"
        case invalidParameter_Pipeline = "InvalidParameter.Pipeline"
        case invalidParameter_Protocol = "InvalidParameter.Protocol"
        case invalidParameter_SortType = "InvalidParameter.SortType"
        case invalidParameter_StartTime = "InvalidParameter.StartTime"
        case invalidParameter_State = "InvalidParameter.State"
        case invalidParameter_Type = "InvalidParameter.Type"
        case limitExceeded_TooMuchTemplate = "LimitExceeded.TooMuchTemplate"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_CosBucketNameInvalid = "ResourceNotFound.CosBucketNameInvalid"
        case resourceNotFound_CosBucketNotExist = "ResourceNotFound.CosBucketNotExist"
        case resourceNotFound_Person = "ResourceNotFound.Person"
        case resourceNotFound_TemplateNotExist = "ResourceNotFound.TemplateNotExist"
        case resourceNotFound_Word = "ResourceNotFound.Word"
        case unauthorizedOperation = "UnauthorizedOperation"
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
    
    /// 操作失败。
    public static var failedOperation: TCMpsError {
        TCMpsError(.failedOperation)
    }
    
    /// 操作失败：bucket 已经设置通知。
    public static var failedOperation_BucketNotifyAlreadyExist: TCMpsError {
        TCMpsError(.failedOperation_BucketNotifyAlreadyExist)
    }
    
    /// 操作失败：COS 已经停服。
    public static var failedOperation_CosStatusInavlid: TCMpsError {
        TCMpsError(.failedOperation_CosStatusInavlid)
    }
    
    /// 操作失败：非法 mps 用户。
    public static var failedOperation_InvalidMpsUser: TCMpsError {
        TCMpsError(.failedOperation_InvalidMpsUser)
    }
    
    /// 操作失败：无效用户。
    public static var failedOperation_InvalidUser: TCMpsError {
        TCMpsError(.failedOperation_InvalidUser)
    }
    
    /// 内部错误。
    public static var internalError: TCMpsError {
        TCMpsError(.internalError)
    }
    
    /// 数据错误。
    public static var internalError_AccessDBError: TCMpsError {
        TCMpsError(.internalError_AccessDBError)
    }
    
    /// 内部错误：生成模板 ID 失败。
    public static var internalError_GenDefinition: TCMpsError {
        TCMpsError(.internalError_GenDefinition)
    }
    
    /// 内部错误：上传水印图片失败。
    public static var internalError_UploadWatermarkError: TCMpsError {
        TCMpsError(.internalError_UploadWatermarkError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCMpsError {
        TCMpsError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCMpsError {
        TCMpsError(.invalidParameterValue)
    }
    
    /// 参数错误：音频流码率。
    public static var invalidParameterValue_AudioBitrate: TCMpsError {
        TCMpsError(.invalidParameterValue_AudioBitrate)
    }
    
    /// 参数值错误：AudioChannel。
    public static var invalidParameterValue_AudioChannel: TCMpsError {
        TCMpsError(.invalidParameterValue_AudioChannel)
    }
    
    /// 参数错误：音频流编码格式。
    public static var invalidParameterValue_AudioCodec: TCMpsError {
        TCMpsError(.invalidParameterValue_AudioCodec)
    }
    
    /// 参数错误：音频流采样率。
    public static var invalidParameterValue_AudioSampleRate: TCMpsError {
        TCMpsError(.invalidParameterValue_AudioSampleRate)
    }
    
    /// 无效的音频/视频码率。
    public static var invalidParameterValue_Bitrate: TCMpsError {
        TCMpsError(.invalidParameterValue_Bitrate)
    }
    
    /// 参数值错误：BlockConfidence 参数取值非法。
    public static var invalidParameterValue_BlockConfidence: TCMpsError {
        TCMpsError(.invalidParameterValue_BlockConfidence)
    }
    
    /// 参数值错误：智能分类控制字段参数错误。
    public static var invalidParameterValue_ClassifcationConfigure: TCMpsError {
        TCMpsError(.invalidParameterValue_ClassifcationConfigure)
    }
    
    /// 无效的音频/视频编编码格式。
    public static var invalidParameterValue_Codec: TCMpsError {
        TCMpsError(.invalidParameterValue_Codec)
    }
    
    /// 参数值错误：ColumnCount。
    public static var invalidParameterValue_ColumnCount: TCMpsError {
        TCMpsError(.invalidParameterValue_ColumnCount)
    }
    
    /// 参数错误：对该模板的描述。
    public static var invalidParameterValue_Comment: TCMpsError {
        TCMpsError(.invalidParameterValue_Comment)
    }
    
    /// 参数错误：封装格式。
    public static var invalidParameterValue_Container: TCMpsError {
        TCMpsError(.invalidParameterValue_Container)
    }
    
    /// 参数值错误：ContainerType。
    public static var invalidParameterValue_ContainerType: TCMpsError {
        TCMpsError(.invalidParameterValue_ContainerType)
    }
    
    /// 参数值错误：CoordinateOrigin。
    public static var invalidParameterValue_CoordinateOrigin: TCMpsError {
        TCMpsError(.invalidParameterValue_CoordinateOrigin)
    }
    
    /// 参数值错误：智能封面控制字段参数错误。
    public static var invalidParameterValue_CoverConfigure: TCMpsError {
        TCMpsError(.invalidParameterValue_CoverConfigure)
    }
    
    /// 参数值错误：人脸默认库过滤标签非法。
    public static var invalidParameterValue_DefaultLibraryLabelSet: TCMpsError {
        TCMpsError(.invalidParameterValue_DefaultLibraryLabelSet)
    }
    
    /// 参数错误：Definition。
    public static var invalidParameterValue_Definition: TCMpsError {
        TCMpsError(.invalidParameterValue_Definition)
    }
    
    /// 参数错误：Definitions。
    public static var invalidParameterValue_Definitions: TCMpsError {
        TCMpsError(.invalidParameterValue_Definitions)
    }
    
    /// 参数值错误：不允许删除默认模板。
    public static var invalidParameterValue_DeleteDefaultTemplate: TCMpsError {
        TCMpsError(.invalidParameterValue_DeleteDefaultTemplate)
    }
    
    /// 无效的禁止码率低转高开关值。
    public static var invalidParameterValue_DisableHigherVideoBitrate: TCMpsError {
        TCMpsError(.invalidParameterValue_DisableHigherVideoBitrate)
    }
    
    /// 无效的禁止分辨率低转高开关值。
    public static var invalidParameterValue_DisableHigherVideoResolution: TCMpsError {
        TCMpsError(.invalidParameterValue_DisableHigherVideoResolution)
    }
    
    /// 参数值错误：人脸重复。
    public static var invalidParameterValue_FaceDuplicate: TCMpsError {
        TCMpsError(.invalidParameterValue_FaceDuplicate)
    }
    
    /// 参数值错误：人脸库参数非法。
    public static var invalidParameterValue_FaceLibrary: TCMpsError {
        TCMpsError(.invalidParameterValue_FaceLibrary)
    }
    
    /// 参数值错误：人脸分数参数取值非法。
    public static var invalidParameterValue_FaceScore: TCMpsError {
        TCMpsError(.invalidParameterValue_FaceScore)
    }
    
    /// 参数错误：填充方式错误。
    public static var invalidParameterValue_FillType: TCMpsError {
        TCMpsError(.invalidParameterValue_FillType)
    }
    
    /// 参数值错误：Format。
    public static var invalidParameterValue_Format: TCMpsError {
        TCMpsError(.invalidParameterValue_Format)
    }
    
    /// 参数值错误：Format 为 webp 时，Width、Height 均为空。
    public static var invalidParameterValue_FormatWebpLackWidthAndHeight: TCMpsError {
        TCMpsError(.invalidParameterValue_FormatWebpLackWidthAndHeight)
    }
    
    /// 参数值错误：Format 为 webp 时，不允许 Width、Height 都为 0。
    public static var invalidParameterValue_FormatWebpWidthAndHeightBothZero: TCMpsError {
        TCMpsError(.invalidParameterValue_FormatWebpWidthAndHeightBothZero)
    }
    
    /// 参数错误：视频帧率。
    public static var invalidParameterValue_Fps: TCMpsError {
        TCMpsError(.invalidParameterValue_Fps)
    }
    
    /// 参数值错误：智能按帧标签控制字段参数错误。
    public static var invalidParameterValue_FrameTagConfigure: TCMpsError {
        TCMpsError(.invalidParameterValue_FrameTagConfigure)
    }
    
    /// 参数值错误：FunctionArg。
    public static var invalidParameterValue_FunctionArg: TCMpsError {
        TCMpsError(.invalidParameterValue_FunctionArg)
    }
    
    /// 参数值错误：FunctionName。
    public static var invalidParameterValue_FunctionName: TCMpsError {
        TCMpsError(.invalidParameterValue_FunctionName)
    }
    
    /// 无效的Gop值。
    public static var invalidParameterValue_Gop: TCMpsError {
        TCMpsError(.invalidParameterValue_Gop)
    }
    
    /// 参数错误：高度。
    public static var invalidParameterValue_Height: TCMpsError {
        TCMpsError(.invalidParameterValue_Height)
    }
    
    /// ImageContent参数值无效。
    public static var invalidParameterValue_ImageContent: TCMpsError {
        TCMpsError(.invalidParameterValue_ImageContent)
    }
    
    /// 参数错误：图片水印模板。
    public static var invalidParameterValue_ImageTemplate: TCMpsError {
        TCMpsError(.invalidParameterValue_ImageTemplate)
    }
    
    /// 解析内容 Content 的值不合法。
    public static var invalidParameterValue_InvalidContent: TCMpsError {
        TCMpsError(.invalidParameterValue_InvalidContent)
    }
    
    /// 无效的操作类型。
    public static var invalidParameterValue_InvalidOperationType: TCMpsError {
        TCMpsError(.invalidParameterValue_InvalidOperationType)
    }
    
    /// 参数值错误：LabelSet 参数取值非法。
    public static var invalidParameterValue_LabelSet: TCMpsError {
        TCMpsError(.invalidParameterValue_LabelSet)
    }
    
    /// 参数错误：Limit。
    public static var invalidParameterValue_Limit: TCMpsError {
        TCMpsError(.invalidParameterValue_Limit)
    }
    
    /// 参数值错误：不允许修改默认模板。
    public static var invalidParameterValue_ModifyDefaultTemplate: TCMpsError {
        TCMpsError(.invalidParameterValue_ModifyDefaultTemplate)
    }
    
    /// 参数值错误：Name 超过长度限制。
    public static var invalidParameterValue_Name: TCMpsError {
        TCMpsError(.invalidParameterValue_Name)
    }
    
    /// 不支持状态不为处理中的任务。
    public static var invalidParameterValue_NotProcessingTask: TCMpsError {
        TCMpsError(.invalidParameterValue_NotProcessingTask)
    }
    
    /// 参数值错误：物体库参数非法。
    public static var invalidParameterValue_ObjectLibrary: TCMpsError {
        TCMpsError(.invalidParameterValue_ObjectLibrary)
    }
    
    /// 参数值错误：人脸图片格式错误。
    public static var invalidParameterValue_PicFormatError: TCMpsError {
        TCMpsError(.invalidParameterValue_PicFormatError)
    }
    
    /// 参数值错误：Quality。
    public static var invalidParameterValue_Quality: TCMpsError {
        TCMpsError(.invalidParameterValue_Quality)
    }
    
    /// 参数值错误：RemoveAudio。
    public static var invalidParameterValue_RemoveAudio: TCMpsError {
        TCMpsError(.invalidParameterValue_RemoveAudio)
    }
    
    /// 参数值错误：RemoveVideo。
    public static var invalidParameterValue_RemoveVideo: TCMpsError {
        TCMpsError(.invalidParameterValue_RemoveVideo)
    }
    
    /// 参数错误：RepeatType 无效。
    public static var invalidParameterValue_RepeatType: TCMpsError {
        TCMpsError(.invalidParameterValue_RepeatType)
    }
    
    /// 参数错误：分辨率错误。
    public static var invalidParameterValue_Resolution: TCMpsError {
        TCMpsError(.invalidParameterValue_Resolution)
    }
    
    /// 无效的ResolutionAdaptive。
    public static var invalidParameterValue_ResolutionAdaptive: TCMpsError {
        TCMpsError(.invalidParameterValue_ResolutionAdaptive)
    }
    
    /// 参数值错误：ReviewConfidence 参数取值非法。
    public static var invalidParameterValue_ReviewConfidence: TCMpsError {
        TCMpsError(.invalidParameterValue_ReviewConfidence)
    }
    
    /// 参数值错误：RowCount。
    public static var invalidParameterValue_RowCount: TCMpsError {
        TCMpsError(.invalidParameterValue_RowCount)
    }
    
    /// 参数值错误：SampleInterval。
    public static var invalidParameterValue_SampleInterval: TCMpsError {
        TCMpsError(.invalidParameterValue_SampleInterval)
    }
    
    /// 无效的音频采样率。
    public static var invalidParameterValue_SampleRate: TCMpsError {
        TCMpsError(.invalidParameterValue_SampleRate)
    }
    
    /// 参数值错误：SampleType。
    public static var invalidParameterValue_SampleType: TCMpsError {
        TCMpsError(.invalidParameterValue_SampleType)
    }
    
    /// SessionContext 过长。
    public static var invalidParameterValue_SessionContextTooLong: TCMpsError {
        TCMpsError(.invalidParameterValue_SessionContextTooLong)
    }
    
    /// 去重识别码重复，请求被去重。
    public static var invalidParameterValue_SessionId: TCMpsError {
        TCMpsError(.invalidParameterValue_SessionId)
    }
    
    /// SessionId 过长。
    public static var invalidParameterValue_SessionIdTooLong: TCMpsError {
        TCMpsError(.invalidParameterValue_SessionIdTooLong)
    }
    
    /// 参数错误：音频通道方式。
    public static var invalidParameterValue_SoundSystem: TCMpsError {
        TCMpsError(.invalidParameterValue_SoundSystem)
    }
    
    /// 源文件错误。
    public static var invalidParameterValue_SrcFile: TCMpsError {
        TCMpsError(.invalidParameterValue_SrcFile)
    }
    
    /// 参数值错误：SubtitleFormat 参数非法。
    public static var invalidParameterValue_SubtitleFormat: TCMpsError {
        TCMpsError(.invalidParameterValue_SubtitleFormat)
    }
    
    /// 参数值错误：SVG 为空。
    public static var invalidParameterValue_SvgTemplate: TCMpsError {
        TCMpsError(.invalidParameterValue_SvgTemplate)
    }
    
    /// 参数值错误：SVG 高度。
    public static var invalidParameterValue_SvgTemplateHeight: TCMpsError {
        TCMpsError(.invalidParameterValue_SvgTemplateHeight)
    }
    
    /// 参数值错误：SVG 宽度。
    public static var invalidParameterValue_SvgTemplateWidth: TCMpsError {
        TCMpsError(.invalidParameterValue_SvgTemplateWidth)
    }
    
    /// 参数值错误：Switch 参数取值非法。
    public static var invalidParameterValue_Switch: TCMpsError {
        TCMpsError(.invalidParameterValue_Switch)
    }
    
    /// 参数值错误：TEHD Type 无效。
    public static var invalidParameterValue_TEHDType: TCMpsError {
        TCMpsError(.invalidParameterValue_TEHDType)
    }
    
    /// 参数值错误：智能标签控制字段参数错误。
    public static var invalidParameterValue_TagConfigure: TCMpsError {
        TCMpsError(.invalidParameterValue_TagConfigure)
    }
    
    /// 任务 ID 不存在。
    public static var invalidParameterValue_TaskId: TCMpsError {
        TCMpsError(.invalidParameterValue_TaskId)
    }
    
    /// 参数错误：文字透明度。
    public static var invalidParameterValue_TextAlpha: TCMpsError {
        TCMpsError(.invalidParameterValue_TextAlpha)
    }
    
    /// 参数错误：文字模板。
    public static var invalidParameterValue_TextTemplate: TCMpsError {
        TCMpsError(.invalidParameterValue_TextTemplate)
    }
    
    /// 参数错误：Type 参数值错误。
    public static var invalidParameterValue_Type: TCMpsError {
        TCMpsError(.invalidParameterValue_Type)
    }
    
    /// 参数值错误：人脸用户自定义库过滤标签非法。
    public static var invalidParameterValue_UserDefineLibraryLabelSet: TCMpsError {
        TCMpsError(.invalidParameterValue_UserDefineLibraryLabelSet)
    }
    
    /// 参数错误：视频流码率。
    public static var invalidParameterValue_VideoBitrate: TCMpsError {
        TCMpsError(.invalidParameterValue_VideoBitrate)
    }
    
    /// 参数错误：视频流的编码格式。
    public static var invalidParameterValue_VideoCodec: TCMpsError {
        TCMpsError(.invalidParameterValue_VideoCodec)
    }
    
    /// 参数错误：宽度。
    public static var invalidParameterValue_Width: TCMpsError {
        TCMpsError(.invalidParameterValue_Width)
    }
    
    /// 水印原点距离视频图像坐标原点的水平位置。支持 %、px 两种格式。
    public static var invalidParameterValue_XPos: TCMpsError {
        TCMpsError(.invalidParameterValue_XPos)
    }
    
    /// 水印原点距离视频图像坐标原点的垂直位置。支持 %、px 两种格式。
    public static var invalidParameterValue_YPos: TCMpsError {
        TCMpsError(.invalidParameterValue_YPos)
    }
    
    public static var invalidParameter_EndTime: TCMpsError {
        TCMpsError(.invalidParameter_EndTime)
    }
    
    public static var invalidParameter_ExceededQuantityLimit: TCMpsError {
        TCMpsError(.invalidParameter_ExceededQuantityLimit)
    }
    
    public static var invalidParameter_Id: TCMpsError {
        TCMpsError(.invalidParameter_Id)
    }
    
    public static var invalidParameter_Input: TCMpsError {
        TCMpsError(.invalidParameter_Input)
    }
    
    public static var invalidParameter_InputOutputId: TCMpsError {
        TCMpsError(.invalidParameter_InputOutputId)
    }
    
    public static var invalidParameter_MaxBandwidth: TCMpsError {
        TCMpsError(.invalidParameter_MaxBandwidth)
    }
    
    public static var invalidParameter_Name: TCMpsError {
        TCMpsError(.invalidParameter_Name)
    }
    
    public static var invalidParameter_NotFound: TCMpsError {
        TCMpsError(.invalidParameter_NotFound)
    }
    
    public static var invalidParameter_Output: TCMpsError {
        TCMpsError(.invalidParameter_Output)
    }
    
    public static var invalidParameter_OutputGroups: TCMpsError {
        TCMpsError(.invalidParameter_OutputGroups)
    }
    
    public static var invalidParameter_OutputId: TCMpsError {
        TCMpsError(.invalidParameter_OutputId)
    }
    
    public static var invalidParameter_PageNum: TCMpsError {
        TCMpsError(.invalidParameter_PageNum)
    }
    
    public static var invalidParameter_PageSize: TCMpsError {
        TCMpsError(.invalidParameter_PageSize)
    }
    
    public static var invalidParameter_Period: TCMpsError {
        TCMpsError(.invalidParameter_Period)
    }
    
    public static var invalidParameter_Pipeline: TCMpsError {
        TCMpsError(.invalidParameter_Pipeline)
    }
    
    public static var invalidParameter_Protocol: TCMpsError {
        TCMpsError(.invalidParameter_Protocol)
    }
    
    public static var invalidParameter_SortType: TCMpsError {
        TCMpsError(.invalidParameter_SortType)
    }
    
    public static var invalidParameter_StartTime: TCMpsError {
        TCMpsError(.invalidParameter_StartTime)
    }
    
    public static var invalidParameter_State: TCMpsError {
        TCMpsError(.invalidParameter_State)
    }
    
    public static var invalidParameter_Type: TCMpsError {
        TCMpsError(.invalidParameter_Type)
    }
    
    /// 超过限制值：模板数超限。
    public static var limitExceeded_TooMuchTemplate: TCMpsError {
        TCMpsError(.limitExceeded_TooMuchTemplate)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCMpsError {
        TCMpsError(.resourceNotFound)
    }
    
    /// 资源不存在：Cos bucket 名称无效。
    public static var resourceNotFound_CosBucketNameInvalid: TCMpsError {
        TCMpsError(.resourceNotFound_CosBucketNameInvalid)
    }
    
    /// 资源不存在：Cos bucket 不存在。
    public static var resourceNotFound_CosBucketNotExist: TCMpsError {
        TCMpsError(.resourceNotFound_CosBucketNotExist)
    }
    
    /// 资源不存在：人物。
    public static var resourceNotFound_Person: TCMpsError {
        TCMpsError(.resourceNotFound_Person)
    }
    
    /// 资源不存在：模板不存在。
    public static var resourceNotFound_TemplateNotExist: TCMpsError {
        TCMpsError(.resourceNotFound_TemplateNotExist)
    }
    
    /// 资源不存在：关键词。
    public static var resourceNotFound_Word: TCMpsError {
        TCMpsError(.resourceNotFound_Word)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCMpsError {
        TCMpsError(.unauthorizedOperation)
    }
}

extension TCMpsError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceNotFound.self]
    }
}

extension TCMpsError: Equatable {
    public static func == (lhs: TCMpsError, rhs: TCMpsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCMpsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}