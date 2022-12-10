//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCVodError {
    public struct InvalidParameterValue: TCErrorType {
        enum Code: String {
            case addKeyFrameDescsAndClearKeyFrameDescsConflict = "InvalidParameterValue.AddKeyFrameDescsAndClearKeyFrameDescsConflict"
            case addKeyFrameDescsAndDeleteKeyFrameDescsConflict = "InvalidParameterValue.AddKeyFrameDescsAndDeleteKeyFrameDescsConflict"
            case addTagsAndClearTagsConflict = "InvalidParameterValue.AddTagsAndClearTagsConflict"
            case addTagsAndDeleteTagsConflict = "InvalidParameterValue.AddTagsAndDeleteTagsConflict"
            case aiAnalysisTaskDefinition = "InvalidParameterValue.AiAnalysisTaskDefinition"
            case aiContentReviewTaskDefinition = "InvalidParameterValue.AiContentReviewTaskDefinition"
            case aiRecognitionTaskDefinition = "InvalidParameterValue.AiRecognitionTaskDefinition"
            case area = "InvalidParameterValue.Area"
            case audioBitrate = "InvalidParameterValue.AudioBitrate"
            case audioChannel = "InvalidParameterValue.AudioChannel"
            case audioCodec = "InvalidParameterValue.AudioCodec"
            case audioSampleRate = "InvalidParameterValue.AudioSampleRate"
            case bitrate = "InvalidParameterValue.Bitrate"
            case blockConfidence = "InvalidParameterValue.BlockConfidence"
            case categories = "InvalidParameterValue.Categories"
            case classId = "InvalidParameterValue.ClassId"
            case classIds = "InvalidParameterValue.ClassIds"
            case className = "InvalidParameterValue.ClassName"
            case classifcationConfigure = "InvalidParameterValue.ClassifcationConfigure"
            case clipDuration = "InvalidParameterValue.ClipDuration"
            case codec = "InvalidParameterValue.Codec"
            case columnCount = "InvalidParameterValue.ColumnCount"
            case comment = "InvalidParameterValue.Comment"
            case container = "InvalidParameterValue.Container"
            case containerType = "InvalidParameterValue.ContainerType"
            case coordinateOrigin = "InvalidParameterValue.CoordinateOrigin"
            case coverConfigure = "InvalidParameterValue.CoverConfigure"
            case coverType = "InvalidParameterValue.CoverType"
            case coverUrl = "InvalidParameterValue.CoverUrl"
            case cutAndCrops = "InvalidParameterValue.CutAndCrops"
            case dataInterval = "InvalidParameterValue.DataInterval"
            case dataType = "InvalidParameterValue.DataType"
            case date = "InvalidParameterValue.Date"
            case defaultLibraryLabelSet = "InvalidParameterValue.DefaultLibraryLabelSet"
            case definition = "InvalidParameterValue.Definition"
            case definitions = "InvalidParameterValue.Definitions"
            case deleteDefaultTemplate = "InvalidParameterValue.DeleteDefaultTemplate"
            case description = "InvalidParameterValue.Description"
            case disableHigherVideoBitrate = "InvalidParameterValue.DisableHigherVideoBitrate"
            case disableHigherVideoResolution = "InvalidParameterValue.DisableHigherVideoResolution"
            case districts = "InvalidParameterValue.Districts"
            case domainName = "InvalidParameterValue.DomainName"
            case domainNameInBlackList = "InvalidParameterValue.DomainNameInBlackList"
            case domainNames = "InvalidParameterValue.DomainNames"
            case drmType = "InvalidParameterValue.DrmType"
            case endDate = "InvalidParameterValue.EndDate"
            case endTime = "InvalidParameterValue.EndTime"
            case endTimeOffset = "InvalidParameterValue.EndTimeOffset"
            case expireTime = "InvalidParameterValue.ExpireTime"
            case faceDuplicate = "InvalidParameterValue.FaceDuplicate"
            case faceLibrary = "InvalidParameterValue.FaceLibrary"
            case faceScore = "InvalidParameterValue.FaceScore"
            case fileId = "InvalidParameterValue.FileId"
            case fileIds = "InvalidParameterValue.FileIds"
            case fileIdsEmpty = "InvalidParameterValue.FileIdsEmpty"
            case fileIdsTooMany = "InvalidParameterValue.FileIdsTooMany"
            case fileType = "InvalidParameterValue.FileType"
            case fillType = "InvalidParameterValue.FillType"
            case filtrateAudio = "InvalidParameterValue.FiltrateAudio"
            case filtrateVideo = "InvalidParameterValue.FiltrateVideo"
            case format = "InvalidParameterValue.Format"
            case formatWebpLackWidthAndHeight = "InvalidParameterValue.FormatWebpLackWidthAndHeight"
            case formatWebpWidthAndHeightBothZero = "InvalidParameterValue.FormatWebpWidthAndHeightBothZero"
            case fps = "InvalidParameterValue.Fps"
            case frameTagConfigure = "InvalidParameterValue.FrameTagConfigure"
            case functionArg = "InvalidParameterValue.FunctionArg"
            case functionName = "InvalidParameterValue.FunctionName"
            case height = "InvalidParameterValue.Height"
            case highlightConfigure = "InvalidParameterValue.HighlightConfigure"
            case imageContent = "InvalidParameterValue.ImageContent"
            case imageDecodeError = "InvalidParameterValue.ImageDecodeError"
            case imageTemplate = "InvalidParameterValue.ImageTemplate"
            case interval = "InvalidParameterValue.Interval"
            case invalidOperationType = "InvalidParameterValue.InvalidOperationType"
            case isps = "InvalidParameterValue.Isps"
            case keyFrameDescContentTooLong = "InvalidParameterValue.KeyFrameDescContentTooLong"
            case labelSet = "InvalidParameterValue.LabelSet"
            case limit = "InvalidParameterValue.Limit"
            case limitTooLarge = "InvalidParameterValue.LimitTooLarge"
            case mediaManifestContent = "InvalidParameterValue.MediaManifestContent"
            case mediaType = "InvalidParameterValue.MediaType"
            case mediaUrl = "InvalidParameterValue.MediaUrl"
            case metric = "InvalidParameterValue.Metric"
            case modifyDefaultTemplate = "InvalidParameterValue.ModifyDefaultTemplate"
            case name = "InvalidParameterValue.Name"
            case namePrefixes = "InvalidParameterValue.NamePrefixes"
            case names = "InvalidParameterValue.Names"
            case notRestorable = "InvalidParameterValue.NotRestorable"
            case objectLibrary = "InvalidParameterValue.ObjectLibrary"
            case offset = "InvalidParameterValue.Offset"
            case offsetTooLarge = "InvalidParameterValue.OffsetTooLarge"
            case operation = "InvalidParameterValue.Operation"
            case originalStorageClass = "InvalidParameterValue.OriginalStorageClass"
            case parentId = "InvalidParameterValue.ParentId"
            case picFormatError = "InvalidParameterValue.PicFormatError"
            case procedureName = "InvalidParameterValue.ProcedureName"
            case quality = "InvalidParameterValue.Quality"
            case removeAudio = "InvalidParameterValue.RemoveAudio"
            case removeVideo = "InvalidParameterValue.RemoveVideo"
            case repeatType = "InvalidParameterValue.RepeatType"
            case resolution = "InvalidParameterValue.Resolution"
            case resolutionAdaptive = "InvalidParameterValue.ResolutionAdaptive"
            case restoreDay = "InvalidParameterValue.RestoreDay"
            case restoreTier = "InvalidParameterValue.RestoreTier"
            case reviewConfidence = "InvalidParameterValue.ReviewConfidence"
            case reviewWallSwitch = "InvalidParameterValue.ReviewWallSwitch"
            case rowCount = "InvalidParameterValue.RowCount"
            case sampleInterval = "InvalidParameterValue.SampleInterval"
            case sampleRate = "InvalidParameterValue.SampleRate"
            case sampleType = "InvalidParameterValue.SampleType"
            case screenshotInterval = "InvalidParameterValue.ScreenshotInterval"
            case sessionContextTooLong = "InvalidParameterValue.SessionContextTooLong"
            case sessionId = "InvalidParameterValue.SessionId"
            case sessionIdTooLong = "InvalidParameterValue.SessionIdTooLong"
            case sort = "InvalidParameterValue.Sort"
            case soundSystem = "InvalidParameterValue.SoundSystem"
            case sourceDefinition = "InvalidParameterValue.SourceDefinition"
            case sourceType = "InvalidParameterValue.SourceType"
            case sourceTypes = "InvalidParameterValue.SourceTypes"
            case startDate = "InvalidParameterValue.StartDate"
            case startTime = "InvalidParameterValue.StartTime"
            case startTimeOffset = "InvalidParameterValue.StartTimeOffset"
            case status = "InvalidParameterValue.Status"
            case storageClass = "InvalidParameterValue.StorageClass"
            case storageRegion = "InvalidParameterValue.StorageRegion"
            case storageRegions = "InvalidParameterValue.StorageRegions"
            case storageType = "InvalidParameterValue.StorageType"
            case streamIdInvalid = "InvalidParameterValue.StreamIdInvalid"
            case streamIds = "InvalidParameterValue.StreamIds"
            case subAppId = "InvalidParameterValue.SubAppId"
            case subtitleFormat = "InvalidParameterValue.SubtitleFormat"
            case svgTemplate = "InvalidParameterValue.SvgTemplate"
            case svgTemplateHeight = "InvalidParameterValue.SvgTemplateHeight"
            case svgTemplateWidth = "InvalidParameterValue.SvgTemplateWidth"
            case `switch` = "InvalidParameterValue.Switch"
            case tagConfigure = "InvalidParameterValue.TagConfigure"
            case tagTooLong = "InvalidParameterValue.TagTooLong"
            case tags = "InvalidParameterValue.Tags"
            case taskId = "InvalidParameterValue.TaskId"
            case tehdType = "InvalidParameterValue.TEHDType"
            case text = "InvalidParameterValue.Text"
            case textAlpha = "InvalidParameterValue.TextAlpha"
            case textTemplate = "InvalidParameterValue.TextTemplate"
            case thumbnails = "InvalidParameterValue.Thumbnails"
            case timeType = "InvalidParameterValue.TimeType"
            case type = "InvalidParameterValue.Type"
            case types = "InvalidParameterValue.Types"
            case uniqueIdentifier = "InvalidParameterValue.UniqueIdentifier"
            case unsupportedRestoreTier = "InvalidParameterValue.UnsupportedRestoreTier"
            case unsupportedStorageClass = "InvalidParameterValue.UnsupportedStorageClass"
            case unsupportedTransition = "InvalidParameterValue.UnsupportedTransition"
            case url = "InvalidParameterValue.Url"
            case userDefineLibraryLabelSet = "InvalidParameterValue.UserDefineLibraryLabelSet"
            case vcrf = "InvalidParameterValue.Vcrf"
            case videoBitrate = "InvalidParameterValue.VideoBitrate"
            case videoCodec = "InvalidParameterValue.VideoCodec"
            case vids = "InvalidParameterValue.Vids"
            case vodSessionKey = "InvalidParameterValue.VodSessionKey"
            case watermarks = "InvalidParameterValue.Watermarks"
            case width = "InvalidParameterValue.Width"
            case xPos = "InvalidParameterValue.XPos"
            case yPos = "InvalidParameterValue.YPos"
            case other = "InvalidParameterValue"
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
        
        /// 参数值错误：AddKeyFrameDescs 与 ClearKeyFrameDescs 参数冲突。
        public static var addKeyFrameDescsAndClearKeyFrameDescsConflict: InvalidParameterValue {
            InvalidParameterValue(.addKeyFrameDescsAndClearKeyFrameDescsConflict)
        }
        
        /// 参数值错误：AddKeyFrameDescs 与 DeleteKeyFrameDescs 参数冲突。
        public static var addKeyFrameDescsAndDeleteKeyFrameDescsConflict: InvalidParameterValue {
            InvalidParameterValue(.addKeyFrameDescsAndDeleteKeyFrameDescsConflict)
        }
        
        /// 参数值错误：AddTags 与 ClearTags 参数冲突。
        public static var addTagsAndClearTagsConflict: InvalidParameterValue {
            InvalidParameterValue(.addTagsAndClearTagsConflict)
        }
        
        /// 参数值错误：AddTags 与 DeleteTags 参数冲突。
        public static var addTagsAndDeleteTagsConflict: InvalidParameterValue {
            InvalidParameterValue(.addTagsAndDeleteTagsConflict)
        }
        
        /// 参数值错误：AI 分析 Definition。
        public static var aiAnalysisTaskDefinition: InvalidParameterValue {
            InvalidParameterValue(.aiAnalysisTaskDefinition)
        }
        
        /// 参数值错误：AI 内容审核 Definition。
        public static var aiContentReviewTaskDefinition: InvalidParameterValue {
            InvalidParameterValue(.aiContentReviewTaskDefinition)
        }
        
        /// 参数值错误：AI 识别 Definition。
        public static var aiRecognitionTaskDefinition: InvalidParameterValue {
            InvalidParameterValue(.aiRecognitionTaskDefinition)
        }
        
        /// Area 参数错误。
        public static var area: InvalidParameterValue {
            InvalidParameterValue(.area)
        }
        
        /// 参数错误：音频流码率。
        public static var audioBitrate: InvalidParameterValue {
            InvalidParameterValue(.audioBitrate)
        }
        
        /// 参数值错误：AudioChannel。
        public static var audioChannel: InvalidParameterValue {
            InvalidParameterValue(.audioChannel)
        }
        
        /// 参数错误：音频流编码格式。
        public static var audioCodec: InvalidParameterValue {
            InvalidParameterValue(.audioCodec)
        }
        
        /// 参数错误：音频流采样率。
        public static var audioSampleRate: InvalidParameterValue {
            InvalidParameterValue(.audioSampleRate)
        }
        
        /// 无效的音频/视频码率。
        public static var bitrate: InvalidParameterValue {
            InvalidParameterValue(.bitrate)
        }
        
        /// 参数值错误：BlockConfidence 参数取值非法。
        public static var blockConfidence: InvalidParameterValue {
            InvalidParameterValue(.blockConfidence)
        }
        
        /// 无效的文件类型。
        public static var categories: InvalidParameterValue {
            InvalidParameterValue(.categories)
        }
        
        /// 参数值错误：分类 ID。
        public static var classId: InvalidParameterValue {
            InvalidParameterValue(.classId)
        }
        
        /// 参数值错误：ClassIds 无效。
        public static var classIds: InvalidParameterValue {
            InvalidParameterValue(.classIds)
        }
        
        /// 参数值错误：ClassName 无效。
        public static var className: InvalidParameterValue {
            InvalidParameterValue(.className)
        }
        
        /// 智能分类控制字段参数错误。
        public static var classifcationConfigure: InvalidParameterValue {
            InvalidParameterValue(.classifcationConfigure)
        }
        
        /// 参数值错误：裁剪时间段太长。
        public static var clipDuration: InvalidParameterValue {
            InvalidParameterValue(.clipDuration)
        }
        
        /// 无效的音频/视频编码格式。
        public static var codec: InvalidParameterValue {
            InvalidParameterValue(.codec)
        }
        
        /// 参数值错误：ColumnCount。
        public static var columnCount: InvalidParameterValue {
            InvalidParameterValue(.columnCount)
        }
        
        /// 参数错误：对该模板的描述。
        public static var comment: InvalidParameterValue {
            InvalidParameterValue(.comment)
        }
        
        /// 参数错误：封装格式。
        public static var container: InvalidParameterValue {
            InvalidParameterValue(.container)
        }
        
        /// 参数值错误：ContainerType。
        public static var containerType: InvalidParameterValue {
            InvalidParameterValue(.containerType)
        }
        
        /// 参数值错误：CoordinateOrigin。
        public static var coordinateOrigin: InvalidParameterValue {
            InvalidParameterValue(.coordinateOrigin)
        }
        
        /// 智能封面控制字段参数错误。
        public static var coverConfigure: InvalidParameterValue {
            InvalidParameterValue(.coverConfigure)
        }
        
        /// 参数值错误：封面类型。
        public static var coverType: InvalidParameterValue {
            InvalidParameterValue(.coverType)
        }
        
        /// 参数值错误：封面 URL。
        public static var coverUrl: InvalidParameterValue {
            InvalidParameterValue(.coverUrl)
        }
        
        /// 参数值错误：CutAndCrops 参数取值非法。
        public static var cutAndCrops: InvalidParameterValue {
            InvalidParameterValue(.cutAndCrops)
        }
        
        /// 参数值错误，时间粒度。
        public static var dataInterval: InvalidParameterValue {
            InvalidParameterValue(.dataInterval)
        }
        
        /// 参数值错误，数据类型。
        public static var dataType: InvalidParameterValue {
            InvalidParameterValue(.dataType)
        }
        
        /// 参数值错误：Date。
        public static var date: InvalidParameterValue {
            InvalidParameterValue(.date)
        }
        
        /// 参数值错误：人脸默认库过滤标签非法。
        public static var defaultLibraryLabelSet: InvalidParameterValue {
            InvalidParameterValue(.defaultLibraryLabelSet)
        }
        
        /// 参数错误：Definition。
        public static var definition: InvalidParameterValue {
            InvalidParameterValue(.definition)
        }
        
        /// 参数错误：Definitions。
        public static var definitions: InvalidParameterValue {
            InvalidParameterValue(.definitions)
        }
        
        /// 参数值错误：不允许删除默认模板。
        public static var deleteDefaultTemplate: InvalidParameterValue {
            InvalidParameterValue(.deleteDefaultTemplate)
        }
        
        /// 参数值错误：Description 超过长度限制。
        public static var description: InvalidParameterValue {
            InvalidParameterValue(.description)
        }
        
        /// 无效的禁止码率低转高开关值。
        public static var disableHigherVideoBitrate: InvalidParameterValue {
            InvalidParameterValue(.disableHigherVideoBitrate)
        }
        
        /// 无效的禁止分辨率低转高开关值。
        public static var disableHigherVideoResolution: InvalidParameterValue {
            InvalidParameterValue(.disableHigherVideoResolution)
        }
        
        /// Districts 参数值错误。
        public static var districts: InvalidParameterValue {
            InvalidParameterValue(.districts)
        }
        
        /// 参数错误：不存在的域名。
        public static var domainName: InvalidParameterValue {
            InvalidParameterValue(.domainName)
        }
        
        /// 恶意域名，无法添加。
        public static var domainNameInBlackList: InvalidParameterValue {
            InvalidParameterValue(.domainNameInBlackList)
        }
        
        /// 参数值，域名列表太大。
        public static var domainNames: InvalidParameterValue {
            InvalidParameterValue(.domainNames)
        }
        
        /// 无效的DRM类型。
        public static var drmType: InvalidParameterValue {
            InvalidParameterValue(.drmType)
        }
        
        /// 参数值错误：EndDate 无效。
        public static var endDate: InvalidParameterValue {
            InvalidParameterValue(.endDate)
        }
        
        /// 参数值错误：EndTime 无效。
        public static var endTime: InvalidParameterValue {
            InvalidParameterValue(.endTime)
        }
        
        /// 参数错误：无效的结束时间。
        public static var endTimeOffset: InvalidParameterValue {
            InvalidParameterValue(.endTimeOffset)
        }
        
        /// 参数值错误：ExpireTime 格式错误。
        public static var expireTime: InvalidParameterValue {
            InvalidParameterValue(.expireTime)
        }
        
        /// 参数值错误：人脸重复。
        public static var faceDuplicate: InvalidParameterValue {
            InvalidParameterValue(.faceDuplicate)
        }
        
        /// 参数值错误：人脸库参数非法。
        public static var faceLibrary: InvalidParameterValue {
            InvalidParameterValue(.faceLibrary)
        }
        
        /// 参数值错误：人脸分数参数取值非法。
        public static var faceScore: InvalidParameterValue {
            InvalidParameterValue(.faceScore)
        }
        
        /// FileId 不存在。
        public static var fileId: InvalidParameterValue {
            InvalidParameterValue(.fileId)
        }
        
        /// FileIds 参数错误。
        public static var fileIds: InvalidParameterValue {
            InvalidParameterValue(.fileIds)
        }
        
        /// FileIds 数组为空。
        public static var fileIdsEmpty: InvalidParameterValue {
            InvalidParameterValue(.fileIdsEmpty)
        }
        
        /// 参数值错误：FileId 过多。
        public static var fileIdsTooMany: InvalidParameterValue {
            InvalidParameterValue(.fileIdsTooMany)
        }
        
        /// 错误的视频类型。
        public static var fileType: InvalidParameterValue {
            InvalidParameterValue(.fileType)
        }
        
        /// 参数错误：填充方式错误。
        public static var fillType: InvalidParameterValue {
            InvalidParameterValue(.fillType)
        }
        
        /// 参数错误：是否去除视频，应为0或1。
        public static var filtrateAudio: InvalidParameterValue {
            InvalidParameterValue(.filtrateAudio)
        }
        
        /// 参数错误：去除视频。
        public static var filtrateVideo: InvalidParameterValue {
            InvalidParameterValue(.filtrateVideo)
        }
        
        /// 参数值错误：Format。
        public static var format: InvalidParameterValue {
            InvalidParameterValue(.format)
        }
        
        /// 参数值错误：Format 为 webp 时，Width、Height 均为空。
        public static var formatWebpLackWidthAndHeight: InvalidParameterValue {
            InvalidParameterValue(.formatWebpLackWidthAndHeight)
        }
        
        /// 参数值错误：Format 为 webp 时，不允许 Width、Height 都为 0。
        public static var formatWebpWidthAndHeightBothZero: InvalidParameterValue {
            InvalidParameterValue(.formatWebpWidthAndHeightBothZero)
        }
        
        /// 参数错误：视频帧率。
        public static var fps: InvalidParameterValue {
            InvalidParameterValue(.fps)
        }
        
        /// 智能按帧标签控制字段参数错误。
        public static var frameTagConfigure: InvalidParameterValue {
            InvalidParameterValue(.frameTagConfigure)
        }
        
        /// 参数值错误：FunctionArg。
        public static var functionArg: InvalidParameterValue {
            InvalidParameterValue(.functionArg)
        }
        
        /// 参数值错误：FunctionName。
        public static var functionName: InvalidParameterValue {
            InvalidParameterValue(.functionName)
        }
        
        /// 参数错误：高度。
        public static var height: InvalidParameterValue {
            InvalidParameterValue(.height)
        }
        
        /// 智能精彩集锦控制参数错误。
        public static var highlightConfigure: InvalidParameterValue {
            InvalidParameterValue(.highlightConfigure)
        }
        
        /// ImageContent参数值无效。
        public static var imageContent: InvalidParameterValue {
            InvalidParameterValue(.imageContent)
        }
        
        /// 图片解 Base64 编码失败。
        public static var imageDecodeError: InvalidParameterValue {
            InvalidParameterValue(.imageDecodeError)
        }
        
        /// 参数错误：图片水印模板。
        public static var imageTemplate: InvalidParameterValue {
            InvalidParameterValue(.imageTemplate)
        }
        
        /// 参数值错误：Interval 无效。
        public static var interval: InvalidParameterValue {
            InvalidParameterValue(.interval)
        }
        
        /// 参数错误：无效的操作类型。
        public static var invalidOperationType: InvalidParameterValue {
            InvalidParameterValue(.invalidOperationType)
        }
        
        /// Isps 参数错误。
        public static var isps: InvalidParameterValue {
            InvalidParameterValue(.isps)
        }
        
        /// 参数值错误：打点信息内容过长。
        public static var keyFrameDescContentTooLong: InvalidParameterValue {
            InvalidParameterValue(.keyFrameDescContentTooLong)
        }
        
        /// 参数值错误：LabelSet 参数取值非法。
        public static var labelSet: InvalidParameterValue {
            InvalidParameterValue(.labelSet)
        }
        
        /// 参数错误：Limit。
        public static var limit: InvalidParameterValue {
            InvalidParameterValue(.limit)
        }
        
        /// 参数值错误：Limit 过大。
        public static var limitTooLarge: InvalidParameterValue {
            InvalidParameterValue(.limitTooLarge)
        }
        
        /// 参数取值错误：MediaManifestContent。
        public static var mediaManifestContent: InvalidParameterValue {
            InvalidParameterValue(.mediaManifestContent)
        }
        
        /// 参数值错误：媒体类型。
        public static var mediaType: InvalidParameterValue {
            InvalidParameterValue(.mediaType)
        }
        
        /// 参数值错误：媒体文件 URL。
        public static var mediaUrl: InvalidParameterValue {
            InvalidParameterValue(.mediaUrl)
        }
        
        /// Metric 参数错误。
        public static var metric: InvalidParameterValue {
            InvalidParameterValue(.metric)
        }
        
        /// 参数值错误：不允许修改默认模板。
        public static var modifyDefaultTemplate: InvalidParameterValue {
            InvalidParameterValue(.modifyDefaultTemplate)
        }
        
        /// 参数值错误：Name 超过长度限制。
        public static var name: InvalidParameterValue {
            InvalidParameterValue(.name)
        }
        
        /// 无效的文件名前缀。
        public static var namePrefixes: InvalidParameterValue {
            InvalidParameterValue(.namePrefixes)
        }
        
        /// Names数组中元素过多。
        public static var names: InvalidParameterValue {
            InvalidParameterValue(.names)
        }
        
        /// 参数错误：文件不支持解冻。
        public static var notRestorable: InvalidParameterValue {
            InvalidParameterValue(.notRestorable)
        }
        
        /// 参数值错误：物体库参数非法。
        public static var objectLibrary: InvalidParameterValue {
            InvalidParameterValue(.objectLibrary)
        }
        
        /// 参数值错误：Offset 无效。
        public static var offset: InvalidParameterValue {
            InvalidParameterValue(.offset)
        }
        
        /// 参数值错误：Offset 过大。
        public static var offsetTooLarge: InvalidParameterValue {
            InvalidParameterValue(.offsetTooLarge)
        }
        
        /// 参数值错误：Operation 无效。
        public static var operation: InvalidParameterValue {
            InvalidParameterValue(.operation)
        }
        
        /// 参数值错误：文件原存储类型异常。
        public static var originalStorageClass: InvalidParameterValue {
            InvalidParameterValue(.originalStorageClass)
        }
        
        /// 参数值错误：ParentId 无效。
        public static var parentId: InvalidParameterValue {
            InvalidParameterValue(.parentId)
        }
        
        /// 参数值错误：人脸图片格式错误。
        public static var picFormatError: InvalidParameterValue {
            InvalidParameterValue(.picFormatError)
        }
        
        /// 任务流模板名无效。
        public static var procedureName: InvalidParameterValue {
            InvalidParameterValue(.procedureName)
        }
        
        /// 参数值错误：Quality。
        public static var quality: InvalidParameterValue {
            InvalidParameterValue(.quality)
        }
        
        /// 参数值错误：RemoveAudio。
        public static var removeAudio: InvalidParameterValue {
            InvalidParameterValue(.removeAudio)
        }
        
        /// 参数值错误：RemoveVideo。
        public static var removeVideo: InvalidParameterValue {
            InvalidParameterValue(.removeVideo)
        }
        
        /// 参数错误：RepeatType 无效。
        public static var repeatType: InvalidParameterValue {
            InvalidParameterValue(.repeatType)
        }
        
        /// 参数错误：分辨率错误。
        public static var resolution: InvalidParameterValue {
            InvalidParameterValue(.resolution)
        }
        
        /// 无效的ResolutionAdaptive。
        public static var resolutionAdaptive: InvalidParameterValue {
            InvalidParameterValue(.resolutionAdaptive)
        }
        
        /// 参数错误：解冻天数错误。
        public static var restoreDay: InvalidParameterValue {
            InvalidParameterValue(.restoreDay)
        }
        
        /// 参数错误：不支持的解冻模式。
        public static var restoreTier: InvalidParameterValue {
            InvalidParameterValue(.restoreTier)
        }
        
        /// 参数值错误：ReviewConfidence 参数取值非法。
        public static var reviewConfidence: InvalidParameterValue {
            InvalidParameterValue(.reviewConfidence)
        }
        
        /// 参数值错误：ReviewWallSwitch 参数取值非法。
        public static var reviewWallSwitch: InvalidParameterValue {
            InvalidParameterValue(.reviewWallSwitch)
        }
        
        /// 参数值错误：RowCount。
        public static var rowCount: InvalidParameterValue {
            InvalidParameterValue(.rowCount)
        }
        
        /// 参数值错误：SampleInterval。
        public static var sampleInterval: InvalidParameterValue {
            InvalidParameterValue(.sampleInterval)
        }
        
        /// 无效的音频采样率。
        public static var sampleRate: InvalidParameterValue {
            InvalidParameterValue(.sampleRate)
        }
        
        /// 参数值错误：SampleType。
        public static var sampleType: InvalidParameterValue {
            InvalidParameterValue(.sampleType)
        }
        
        /// 参数值错误：ScreenshotInterval 参数取值非法。
        public static var screenshotInterval: InvalidParameterValue {
            InvalidParameterValue(.screenshotInterval)
        }
        
        /// SessionContext 过长。
        public static var sessionContextTooLong: InvalidParameterValue {
            InvalidParameterValue(.sessionContextTooLong)
        }
        
        /// 去重识别码重复，请求被去重。
        public static var sessionId: InvalidParameterValue {
            InvalidParameterValue(.sessionId)
        }
        
        /// SessionId 过长。
        public static var sessionIdTooLong: InvalidParameterValue {
            InvalidParameterValue(.sessionIdTooLong)
        }
        
        /// 参数值错误：Sort 无效。
        public static var sort: InvalidParameterValue {
            InvalidParameterValue(.sort)
        }
        
        /// 参数错误：音频通道方式。
        public static var soundSystem: InvalidParameterValue {
            InvalidParameterValue(.soundSystem)
        }
        
        /// SourceDefinition 错误，请检查媒体文件是否有对应的转码。
        public static var sourceDefinition: InvalidParameterValue {
            InvalidParameterValue(.sourceDefinition)
        }
        
        /// 参数值错误：SourceType 无效。
        public static var sourceType: InvalidParameterValue {
            InvalidParameterValue(.sourceType)
        }
        
        /// 未知的媒体文件来源。
        public static var sourceTypes: InvalidParameterValue {
            InvalidParameterValue(.sourceTypes)
        }
        
        /// 参数值错误：StartDate 无效。
        public static var startDate: InvalidParameterValue {
            InvalidParameterValue(.startDate)
        }
        
        /// 参数值错误：StartTime 无效。
        public static var startTime: InvalidParameterValue {
            InvalidParameterValue(.startTime)
        }
        
        /// 参数错误：无效的起始时间。
        public static var startTimeOffset: InvalidParameterValue {
            InvalidParameterValue(.startTimeOffset)
        }
        
        /// 参数值错误：人工确认结果取值非法。
        public static var status: InvalidParameterValue {
            InvalidParameterValue(.status)
        }
        
        /// 参数值错误：目标存储类型不在可选值中。
        public static var storageClass: InvalidParameterValue {
            InvalidParameterValue(.storageClass)
        }
        
        /// 参数值错误：存储地域。
        public static var storageRegion: InvalidParameterValue {
            InvalidParameterValue(.storageRegion)
        }
        
        /// 参数值错误：StorageRegions 无效。
        public static var storageRegions: InvalidParameterValue {
            InvalidParameterValue(.storageRegions)
        }
        
        /// 参数值错误：StorageType。
        public static var storageType: InvalidParameterValue {
            InvalidParameterValue(.storageType)
        }
        
        /// 参数值错误：StreamId无效。
        public static var streamIdInvalid: InvalidParameterValue {
            InvalidParameterValue(.streamIdInvalid)
        }
        
        /// 无效的流ID参数。
        public static var streamIds: InvalidParameterValue {
            InvalidParameterValue(.streamIds)
        }
        
        /// 参数值错误：子应用 ID。
        public static var subAppId: InvalidParameterValue {
            InvalidParameterValue(.subAppId)
        }
        
        /// 参数值错误：SubtitleFormat 参数非法。
        public static var subtitleFormat: InvalidParameterValue {
            InvalidParameterValue(.subtitleFormat)
        }
        
        /// 参数值错误：SVG 为空。
        public static var svgTemplate: InvalidParameterValue {
            InvalidParameterValue(.svgTemplate)
        }
        
        /// 参数值错误：SVG 高度。
        public static var svgTemplateHeight: InvalidParameterValue {
            InvalidParameterValue(.svgTemplateHeight)
        }
        
        /// 参数值错误：SVG 宽度。
        public static var svgTemplateWidth: InvalidParameterValue {
            InvalidParameterValue(.svgTemplateWidth)
        }
        
        /// 参数值错误：Switch 参数取值非法。
        public static var `switch`: InvalidParameterValue {
            InvalidParameterValue(.`switch`)
        }
        
        /// 智能标签控制字段参数错误。
        public static var tagConfigure: InvalidParameterValue {
            InvalidParameterValue(.tagConfigure)
        }
        
        /// 参数值错误：标签过长。
        public static var tagTooLong: InvalidParameterValue {
            InvalidParameterValue(.tagTooLong)
        }
        
        /// 参数值错误：Tags 无效。
        public static var tags: InvalidParameterValue {
            InvalidParameterValue(.tags)
        }
        
        /// 任务 ID 不存在。
        public static var taskId: InvalidParameterValue {
            InvalidParameterValue(.taskId)
        }
        
        /// 参数值错误：TEHD Type 无效。
        public static var tehdType: InvalidParameterValue {
            InvalidParameterValue(.tehdType)
        }
        
        /// 参数值错误：搜索文本。
        public static var text: InvalidParameterValue {
            InvalidParameterValue(.text)
        }
        
        /// 参数错误：文字透明度。
        public static var textAlpha: InvalidParameterValue {
            InvalidParameterValue(.textAlpha)
        }
        
        /// 参数错误：文字模板。
        public static var textTemplate: InvalidParameterValue {
            InvalidParameterValue(.textTemplate)
        }
        
        /// 参数值错误：Thumbnail 参数取值非法。
        public static var thumbnails: InvalidParameterValue {
            InvalidParameterValue(.thumbnails)
        }
        
        /// 参数值错误：TimeType。
        public static var timeType: InvalidParameterValue {
            InvalidParameterValue(.timeType)
        }
        
        /// Type 参数值错误。
        public static var type: InvalidParameterValue {
            InvalidParameterValue(.type)
        }
        
        /// 无效的 Types 参数。
        public static var types: InvalidParameterValue {
            InvalidParameterValue(.types)
        }
        
        /// 去重识别码一天内重复，请求被去重。
        public static var uniqueIdentifier: InvalidParameterValue {
            InvalidParameterValue(.uniqueIdentifier)
        }
        
        /// 参数值错误：文件不支持该解冻方式。
        public static var unsupportedRestoreTier: InvalidParameterValue {
            InvalidParameterValue(.unsupportedRestoreTier)
        }
        
        /// 参数值错误：不支持的目标存储类型，深度归档只支持部分园区。
        public static var unsupportedStorageClass: InvalidParameterValue {
            InvalidParameterValue(.unsupportedStorageClass)
        }
        
        /// 参数值错误：不支持的存储类型转换。
        public static var unsupportedTransition: InvalidParameterValue {
            InvalidParameterValue(.unsupportedTransition)
        }
        
        /// 参数错误：无效的Url。
        public static var url: InvalidParameterValue {
            InvalidParameterValue(.url)
        }
        
        /// 参数值错误：人脸用户自定义库过滤标签非法。
        public static var userDefineLibraryLabelSet: InvalidParameterValue {
            InvalidParameterValue(.userDefineLibraryLabelSet)
        }
        
        /// 参数错误：vcrf。
        public static var vcrf: InvalidParameterValue {
            InvalidParameterValue(.vcrf)
        }
        
        /// 参数错误：视频流码率。
        public static var videoBitrate: InvalidParameterValue {
            InvalidParameterValue(.videoBitrate)
        }
        
        /// 参数错误：视频流的编码格式。
        public static var videoCodec: InvalidParameterValue {
            InvalidParameterValue(.videoCodec)
        }
        
        /// 无效的 Vids 参数。
        public static var vids: InvalidParameterValue {
            InvalidParameterValue(.vids)
        }
        
        /// 参数值错误：点播会话。
        public static var vodSessionKey: InvalidParameterValue {
            InvalidParameterValue(.vodSessionKey)
        }
        
        /// 参数值错误：Watermarks 参数取值非法。
        public static var watermarks: InvalidParameterValue {
            InvalidParameterValue(.watermarks)
        }
        
        /// 参数错误：宽度。
        public static var width: InvalidParameterValue {
            InvalidParameterValue(.width)
        }
        
        /// 水印原点距离视频图像坐标原点的水平位置。支持 %、px 两种格式。
        public static var xPos: InvalidParameterValue {
            InvalidParameterValue(.xPos)
        }
        
        /// 水印原点距离视频图像坐标原点的垂直位置。支持 %、px 两种格式。
        public static var yPos: InvalidParameterValue {
            InvalidParameterValue(.yPos)
        }
        
        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }
    }
}

extension TCVodError.InvalidParameterValue: Equatable {
    public static func == (lhs: TCVodError.InvalidParameterValue, rhs: TCVodError.InvalidParameterValue) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCVodError.InvalidParameterValue: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCVodError.InvalidParameterValue {
    public func toVodError() -> TCVodError {
        guard let code = TCVodError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCVodError(code, context: self.context)
    }
}