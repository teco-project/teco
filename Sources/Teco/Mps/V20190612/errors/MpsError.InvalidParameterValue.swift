//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension TCMpsError {
    public struct InvalidParameterValue: TCMpsErrorType {
        enum Code: String {
            case audioBitrate = "InvalidParameterValue.AudioBitrate"
            case audioChannel = "InvalidParameterValue.AudioChannel"
            case audioCodec = "InvalidParameterValue.AudioCodec"
            case audioSampleRate = "InvalidParameterValue.AudioSampleRate"
            case bitrate = "InvalidParameterValue.Bitrate"
            case blockConfidence = "InvalidParameterValue.BlockConfidence"
            case classifcationConfigure = "InvalidParameterValue.ClassifcationConfigure"
            case codec = "InvalidParameterValue.Codec"
            case columnCount = "InvalidParameterValue.ColumnCount"
            case comment = "InvalidParameterValue.Comment"
            case container = "InvalidParameterValue.Container"
            case containerType = "InvalidParameterValue.ContainerType"
            case coordinateOrigin = "InvalidParameterValue.CoordinateOrigin"
            case coverConfigure = "InvalidParameterValue.CoverConfigure"
            case defaultLibraryLabelSet = "InvalidParameterValue.DefaultLibraryLabelSet"
            case definition = "InvalidParameterValue.Definition"
            case definitions = "InvalidParameterValue.Definitions"
            case deleteDefaultTemplate = "InvalidParameterValue.DeleteDefaultTemplate"
            case destinationLanguage = "InvalidParameterValue.DestinationLanguage"
            case disableHigherVideoBitrate = "InvalidParameterValue.DisableHigherVideoBitrate"
            case disableHigherVideoResolution = "InvalidParameterValue.DisableHigherVideoResolution"
            case faceDuplicate = "InvalidParameterValue.FaceDuplicate"
            case faceLibrary = "InvalidParameterValue.FaceLibrary"
            case faceScore = "InvalidParameterValue.FaceScore"
            case fillType = "InvalidParameterValue.FillType"
            case format = "InvalidParameterValue.Format"
            case formatWebpLackWidthAndHeight = "InvalidParameterValue.FormatWebpLackWidthAndHeight"
            case formatWebpWidthAndHeightBothZero = "InvalidParameterValue.FormatWebpWidthAndHeightBothZero"
            case fps = "InvalidParameterValue.Fps"
            case frameTagConfigure = "InvalidParameterValue.FrameTagConfigure"
            case functionArg = "InvalidParameterValue.FunctionArg"
            case functionName = "InvalidParameterValue.FunctionName"
            case gop = "InvalidParameterValue.Gop"
            case height = "InvalidParameterValue.Height"
            case imageContent = "InvalidParameterValue.ImageContent"
            case imageTemplate = "InvalidParameterValue.ImageTemplate"
            case invalidContent = "InvalidParameterValue.InvalidContent"
            case invalidOperationType = "InvalidParameterValue.InvalidOperationType"
            case labelSet = "InvalidParameterValue.LabelSet"
            case limit = "InvalidParameterValue.Limit"
            case modifyDefaultTemplate = "InvalidParameterValue.ModifyDefaultTemplate"
            case name = "InvalidParameterValue.Name"
            case notProcessingTask = "InvalidParameterValue.NotProcessingTask"
            case objectLibrary = "InvalidParameterValue.ObjectLibrary"
            case picFormatError = "InvalidParameterValue.PicFormatError"
            case quality = "InvalidParameterValue.Quality"
            case removeAudio = "InvalidParameterValue.RemoveAudio"
            case removeVideo = "InvalidParameterValue.RemoveVideo"
            case repeatType = "InvalidParameterValue.RepeatType"
            case resolution = "InvalidParameterValue.Resolution"
            case resolutionAdaptive = "InvalidParameterValue.ResolutionAdaptive"
            case reviewConfidence = "InvalidParameterValue.ReviewConfidence"
            case rowCount = "InvalidParameterValue.RowCount"
            case sampleInterval = "InvalidParameterValue.SampleInterval"
            case sampleRate = "InvalidParameterValue.SampleRate"
            case sampleType = "InvalidParameterValue.SampleType"
            case sessionContextTooLong = "InvalidParameterValue.SessionContextTooLong"
            case sessionId = "InvalidParameterValue.SessionId"
            case sessionIdTooLong = "InvalidParameterValue.SessionIdTooLong"
            case soundSystem = "InvalidParameterValue.SoundSystem"
            case sourceLanguage = "InvalidParameterValue.SourceLanguage"
            case srcFile = "InvalidParameterValue.SrcFile"
            case subtitleFormat = "InvalidParameterValue.SubtitleFormat"
            case svgTemplate = "InvalidParameterValue.SvgTemplate"
            case svgTemplateHeight = "InvalidParameterValue.SvgTemplateHeight"
            case svgTemplateWidth = "InvalidParameterValue.SvgTemplateWidth"
            case `switch` = "InvalidParameterValue.Switch"
            case tagConfigure = "InvalidParameterValue.TagConfigure"
            case taskId = "InvalidParameterValue.TaskId"
            case tehdType = "InvalidParameterValue.TEHDType"
            case textAlpha = "InvalidParameterValue.TextAlpha"
            case textTemplate = "InvalidParameterValue.TextTemplate"
            case type = "InvalidParameterValue.Type"
            case userDefineLibraryLabelSet = "InvalidParameterValue.UserDefineLibraryLabelSet"
            case videoBitrate = "InvalidParameterValue.VideoBitrate"
            case videoCodec = "InvalidParameterValue.VideoCodec"
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

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
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

        /// 参数值错误：智能分类控制字段参数错误。
        public static var classifcationConfigure: InvalidParameterValue {
            InvalidParameterValue(.classifcationConfigure)
        }

        /// 无效的音频/视频编编码格式。
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

        /// 参数值错误：智能封面控制字段参数错误。
        public static var coverConfigure: InvalidParameterValue {
            InvalidParameterValue(.coverConfigure)
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

        public static var destinationLanguage: InvalidParameterValue {
            InvalidParameterValue(.destinationLanguage)
        }

        /// 无效的禁止码率低转高开关值。
        public static var disableHigherVideoBitrate: InvalidParameterValue {
            InvalidParameterValue(.disableHigherVideoBitrate)
        }

        /// 无效的禁止分辨率低转高开关值。
        public static var disableHigherVideoResolution: InvalidParameterValue {
            InvalidParameterValue(.disableHigherVideoResolution)
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

        /// 参数错误：填充方式错误。
        public static var fillType: InvalidParameterValue {
            InvalidParameterValue(.fillType)
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

        /// 参数值错误：智能按帧标签控制字段参数错误。
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

        /// 无效的Gop值。
        public static var gop: InvalidParameterValue {
            InvalidParameterValue(.gop)
        }

        /// 参数错误：高度。
        public static var height: InvalidParameterValue {
            InvalidParameterValue(.height)
        }

        /// ImageContent参数值无效。
        public static var imageContent: InvalidParameterValue {
            InvalidParameterValue(.imageContent)
        }

        /// 参数错误：图片水印模板。
        public static var imageTemplate: InvalidParameterValue {
            InvalidParameterValue(.imageTemplate)
        }

        /// 解析内容 Content 的值不合法。
        public static var invalidContent: InvalidParameterValue {
            InvalidParameterValue(.invalidContent)
        }

        /// 无效的操作类型。
        public static var invalidOperationType: InvalidParameterValue {
            InvalidParameterValue(.invalidOperationType)
        }

        /// 参数值错误：LabelSet 参数取值非法。
        public static var labelSet: InvalidParameterValue {
            InvalidParameterValue(.labelSet)
        }

        /// 参数错误：Limit。
        public static var limit: InvalidParameterValue {
            InvalidParameterValue(.limit)
        }

        /// 参数值错误：不允许修改默认模板。
        public static var modifyDefaultTemplate: InvalidParameterValue {
            InvalidParameterValue(.modifyDefaultTemplate)
        }

        /// 参数值错误：Name 超过长度限制。
        public static var name: InvalidParameterValue {
            InvalidParameterValue(.name)
        }

        /// 不支持状态不为处理中的任务。
        public static var notProcessingTask: InvalidParameterValue {
            InvalidParameterValue(.notProcessingTask)
        }

        /// 参数值错误：物体库参数非法。
        public static var objectLibrary: InvalidParameterValue {
            InvalidParameterValue(.objectLibrary)
        }

        /// 参数值错误：人脸图片格式错误。
        public static var picFormatError: InvalidParameterValue {
            InvalidParameterValue(.picFormatError)
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

        /// 参数值错误：ReviewConfidence 参数取值非法。
        public static var reviewConfidence: InvalidParameterValue {
            InvalidParameterValue(.reviewConfidence)
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

        /// 参数错误：音频通道方式。
        public static var soundSystem: InvalidParameterValue {
            InvalidParameterValue(.soundSystem)
        }

        public static var sourceLanguage: InvalidParameterValue {
            InvalidParameterValue(.sourceLanguage)
        }

        /// 源文件错误。
        public static var srcFile: InvalidParameterValue {
            InvalidParameterValue(.srcFile)
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
            InvalidParameterValue(.switch)
        }

        /// 参数值错误：智能标签控制字段参数错误。
        public static var tagConfigure: InvalidParameterValue {
            InvalidParameterValue(.tagConfigure)
        }

        /// 任务 ID 不存在。
        public static var taskId: InvalidParameterValue {
            InvalidParameterValue(.taskId)
        }

        /// 参数值错误：TEHD Type 无效。
        public static var tehdType: InvalidParameterValue {
            InvalidParameterValue(.tehdType)
        }

        /// 参数错误：文字透明度。
        public static var textAlpha: InvalidParameterValue {
            InvalidParameterValue(.textAlpha)
        }

        /// 参数错误：文字模板。
        public static var textTemplate: InvalidParameterValue {
            InvalidParameterValue(.textTemplate)
        }

        /// 参数错误：Type 参数值错误。
        public static var type: InvalidParameterValue {
            InvalidParameterValue(.type)
        }

        /// 参数值错误：人脸用户自定义库过滤标签非法。
        public static var userDefineLibraryLabelSet: InvalidParameterValue {
            InvalidParameterValue(.userDefineLibraryLabelSet)
        }

        /// 参数错误：视频流码率。
        public static var videoBitrate: InvalidParameterValue {
            InvalidParameterValue(.videoBitrate)
        }

        /// 参数错误：视频流的编码格式。
        public static var videoCodec: InvalidParameterValue {
            InvalidParameterValue(.videoCodec)
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

        public func asMpsError() -> TCMpsError {
            let code: TCMpsError.Code
            switch self.error {
            case .audioBitrate:
                code = .invalidParameterValue_AudioBitrate
            case .audioChannel:
                code = .invalidParameterValue_AudioChannel
            case .audioCodec:
                code = .invalidParameterValue_AudioCodec
            case .audioSampleRate:
                code = .invalidParameterValue_AudioSampleRate
            case .bitrate:
                code = .invalidParameterValue_Bitrate
            case .blockConfidence:
                code = .invalidParameterValue_BlockConfidence
            case .classifcationConfigure:
                code = .invalidParameterValue_ClassifcationConfigure
            case .codec:
                code = .invalidParameterValue_Codec
            case .columnCount:
                code = .invalidParameterValue_ColumnCount
            case .comment:
                code = .invalidParameterValue_Comment
            case .container:
                code = .invalidParameterValue_Container
            case .containerType:
                code = .invalidParameterValue_ContainerType
            case .coordinateOrigin:
                code = .invalidParameterValue_CoordinateOrigin
            case .coverConfigure:
                code = .invalidParameterValue_CoverConfigure
            case .defaultLibraryLabelSet:
                code = .invalidParameterValue_DefaultLibraryLabelSet
            case .definition:
                code = .invalidParameterValue_Definition
            case .definitions:
                code = .invalidParameterValue_Definitions
            case .deleteDefaultTemplate:
                code = .invalidParameterValue_DeleteDefaultTemplate
            case .destinationLanguage:
                code = .invalidParameterValue_DestinationLanguage
            case .disableHigherVideoBitrate:
                code = .invalidParameterValue_DisableHigherVideoBitrate
            case .disableHigherVideoResolution:
                code = .invalidParameterValue_DisableHigherVideoResolution
            case .faceDuplicate:
                code = .invalidParameterValue_FaceDuplicate
            case .faceLibrary:
                code = .invalidParameterValue_FaceLibrary
            case .faceScore:
                code = .invalidParameterValue_FaceScore
            case .fillType:
                code = .invalidParameterValue_FillType
            case .format:
                code = .invalidParameterValue_Format
            case .formatWebpLackWidthAndHeight:
                code = .invalidParameterValue_FormatWebpLackWidthAndHeight
            case .formatWebpWidthAndHeightBothZero:
                code = .invalidParameterValue_FormatWebpWidthAndHeightBothZero
            case .fps:
                code = .invalidParameterValue_Fps
            case .frameTagConfigure:
                code = .invalidParameterValue_FrameTagConfigure
            case .functionArg:
                code = .invalidParameterValue_FunctionArg
            case .functionName:
                code = .invalidParameterValue_FunctionName
            case .gop:
                code = .invalidParameterValue_Gop
            case .height:
                code = .invalidParameterValue_Height
            case .imageContent:
                code = .invalidParameterValue_ImageContent
            case .imageTemplate:
                code = .invalidParameterValue_ImageTemplate
            case .invalidContent:
                code = .invalidParameterValue_InvalidContent
            case .invalidOperationType:
                code = .invalidParameterValue_InvalidOperationType
            case .labelSet:
                code = .invalidParameterValue_LabelSet
            case .limit:
                code = .invalidParameterValue_Limit
            case .modifyDefaultTemplate:
                code = .invalidParameterValue_ModifyDefaultTemplate
            case .name:
                code = .invalidParameterValue_Name
            case .notProcessingTask:
                code = .invalidParameterValue_NotProcessingTask
            case .objectLibrary:
                code = .invalidParameterValue_ObjectLibrary
            case .picFormatError:
                code = .invalidParameterValue_PicFormatError
            case .quality:
                code = .invalidParameterValue_Quality
            case .removeAudio:
                code = .invalidParameterValue_RemoveAudio
            case .removeVideo:
                code = .invalidParameterValue_RemoveVideo
            case .repeatType:
                code = .invalidParameterValue_RepeatType
            case .resolution:
                code = .invalidParameterValue_Resolution
            case .resolutionAdaptive:
                code = .invalidParameterValue_ResolutionAdaptive
            case .reviewConfidence:
                code = .invalidParameterValue_ReviewConfidence
            case .rowCount:
                code = .invalidParameterValue_RowCount
            case .sampleInterval:
                code = .invalidParameterValue_SampleInterval
            case .sampleRate:
                code = .invalidParameterValue_SampleRate
            case .sampleType:
                code = .invalidParameterValue_SampleType
            case .sessionContextTooLong:
                code = .invalidParameterValue_SessionContextTooLong
            case .sessionId:
                code = .invalidParameterValue_SessionId
            case .sessionIdTooLong:
                code = .invalidParameterValue_SessionIdTooLong
            case .soundSystem:
                code = .invalidParameterValue_SoundSystem
            case .sourceLanguage:
                code = .invalidParameterValue_SourceLanguage
            case .srcFile:
                code = .invalidParameterValue_SrcFile
            case .subtitleFormat:
                code = .invalidParameterValue_SubtitleFormat
            case .svgTemplate:
                code = .invalidParameterValue_SvgTemplate
            case .svgTemplateHeight:
                code = .invalidParameterValue_SvgTemplateHeight
            case .svgTemplateWidth:
                code = .invalidParameterValue_SvgTemplateWidth
            case .switch:
                code = .invalidParameterValue_Switch
            case .tagConfigure:
                code = .invalidParameterValue_TagConfigure
            case .taskId:
                code = .invalidParameterValue_TaskId
            case .tehdType:
                code = .invalidParameterValue_TEHDType
            case .textAlpha:
                code = .invalidParameterValue_TextAlpha
            case .textTemplate:
                code = .invalidParameterValue_TextTemplate
            case .type:
                code = .invalidParameterValue_Type
            case .userDefineLibraryLabelSet:
                code = .invalidParameterValue_UserDefineLibraryLabelSet
            case .videoBitrate:
                code = .invalidParameterValue_VideoBitrate
            case .videoCodec:
                code = .invalidParameterValue_VideoCodec
            case .width:
                code = .invalidParameterValue_Width
            case .xPos:
                code = .invalidParameterValue_XPos
            case .yPos:
                code = .invalidParameterValue_YPos
            case .other:
                code = .invalidParameterValue
            }
            return TCMpsError(code, context: self.context)
        }
    }
}
