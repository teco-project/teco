//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCTrtcError {
    public struct InvalidParameter: TCTrtcErrorType {
        enum Code: String {
            case appId = "InvalidParameter.AppId"
            case audioEncodeParams = "InvalidParameter.AudioEncodeParams"
            case bodyParamsError = "InvalidParameter.BodyParamsError"
            case checkContentFailed = "InvalidParameter.CheckContentFailed"
            case checkSuffixFailed = "InvalidParameter.CheckSuffixFailed"
            case encodeParams = "InvalidParameter.EncodeParams"
            case endTs = "InvalidParameter.EndTs"
            case mainVideoRightAlign = "InvalidParameter.MainVideoRightAlign"
            case mainVideoStreamType = "InvalidParameter.MainVideoStreamType"
            case outOfRange = "InvalidParameter.OutOfRange"
            case outputParams = "InvalidParameter.OutputParams"
            case pageNumber = "InvalidParameter.PageNumber"
            case pageSize = "InvalidParameter.PageSize"
            case pageSizeOversize = "InvalidParameter.PageSizeOversize"
            case pictureNotFound = "InvalidParameter.PictureNotFound"
            case presetLayoutConfig = "InvalidParameter.PresetLayoutConfig"
            case publishCdnUrls = "InvalidParameter.PublishCdnUrls"
            case pureAudioStream = "InvalidParameter.PureAudioStream"
            case queryScaleOversize = "InvalidParameter.QueryScaleOversize"
            case recordAudioOnly = "InvalidParameter.RecordAudioOnly"
            case recordId = "InvalidParameter.RecordId"
            case roomId = "InvalidParameter.RoomId"
            case sdkAppId = "InvalidParameter.SdkAppId"
            case sdkAppid = "InvalidParameter.SdkAppid"
            case smallVideoLayoutParams = "InvalidParameter.SmallVideoLayoutParams"
            case smallVideoStreamType = "InvalidParameter.SmallVideoStreamType"
            case startTimeExpire = "InvalidParameter.StartTimeExpire"
            case startTimeOversize = "InvalidParameter.StartTimeOversize"
            case startTs = "InvalidParameter.StartTs"
            case startTsOversize = "InvalidParameter.StartTsOversize"
            case strRoomId = "InvalidParameter.StrRoomId"
            case streamId = "InvalidParameter.StreamId"
            case urlParamsError = "InvalidParameter.UrlParamsError"
            case userId = "InvalidParameter.UserId"
            case userIds = "InvalidParameter.UserIds"
            case userIdsMorethanSix = "InvalidParameter.UserIdsMorethanSix"
            case videoResolution = "InvalidParameter.VideoResolution"
            case other = "InvalidParameter"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
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
        
        /// AppId校验失败。
        public static var appId: InvalidParameter {
            InvalidParameter(.appId)
        }
        
        /// 音频编码参数错误。
        public static var audioEncodeParams: InvalidParameter {
            InvalidParameter(.audioEncodeParams)
        }
        
        /// body 解析参数失败。
        public static var bodyParamsError: InvalidParameter {
            InvalidParameter(.bodyParamsError)
        }
        
        /// 图片过大。
        public static var checkContentFailed: InvalidParameter {
            InvalidParameter(.checkContentFailed)
        }
        
        /// 后缀名校验失败。
        ///
        /// 请输入合法的后缀名。
        public static var checkSuffixFailed: InvalidParameter {
            InvalidParameter(.checkSuffixFailed)
        }
        
        /// EncodeParams参数错误。
        public static var encodeParams: InvalidParameter {
            InvalidParameter(.encodeParams)
        }
        
        /// EndTs参数错误。
        public static var endTs: InvalidParameter {
            InvalidParameter(.endTs)
        }
        
        /// 大画面居右显示参数错误。
        public static var mainVideoRightAlign: InvalidParameter {
            InvalidParameter(.mainVideoRightAlign)
        }
        
        /// 大画面流类型错误。
        public static var mainVideoStreamType: InvalidParameter {
            InvalidParameter(.mainVideoStreamType)
        }
        
        /// 参数超出范围。
        public static var outOfRange: InvalidParameter {
            InvalidParameter(.outOfRange)
        }
        
        /// OutputParams参数错误。
        public static var outputParams: InvalidParameter {
            InvalidParameter(.outputParams)
        }
        
        /// PageNumber 参数错误。
        public static var pageNumber: InvalidParameter {
            InvalidParameter(.pageNumber)
        }
        
        /// PageSize参数错误。
        public static var pageSize: InvalidParameter {
            InvalidParameter(.pageSize)
        }
        
        /// PageSize超过100。
        public static var pageSizeOversize: InvalidParameter {
            InvalidParameter(.pageSizeOversize)
        }
        
        /// 待操作的图片未找到。
        public static var pictureNotFound: InvalidParameter {
            InvalidParameter(.pictureNotFound)
        }
        
        /// 自定义布局参数错误。
        public static var presetLayoutConfig: InvalidParameter {
            InvalidParameter(.presetLayoutConfig)
        }
        
        /// PublishCdnUrls参数校验失败。
        public static var publishCdnUrls: InvalidParameter {
            InvalidParameter(.publishCdnUrls)
        }
        
        /// 纯音频推流参数错误。
        public static var pureAudioStream: InvalidParameter {
            InvalidParameter(.pureAudioStream)
        }
        
        /// 查询范围超过文档限制。
        public static var queryScaleOversize: InvalidParameter {
            InvalidParameter(.queryScaleOversize)
        }
        
        /// 纯音频录制参数错误。
        public static var recordAudioOnly: InvalidParameter {
            InvalidParameter(.recordAudioOnly)
        }
        
        /// RecordId参数错误。
        public static var recordId: InvalidParameter {
            InvalidParameter(.recordId)
        }
        
        /// RoomId参数错误。
        public static var roomId: InvalidParameter {
            InvalidParameter(.roomId)
        }
        
        /// SdkAppId参数错误。
        public static var sdkAppId: InvalidParameter {
            InvalidParameter(.sdkAppId)
        }
        
        /// 不能操作的SdkAppid。
        public static var sdkAppid: InvalidParameter {
            InvalidParameter(.sdkAppid)
        }
        
        /// 小画面布局参数错误。
        public static var smallVideoLayoutParams: InvalidParameter {
            InvalidParameter(.smallVideoLayoutParams)
        }
        
        /// 小画面布局中流类型参数错误。
        public static var smallVideoStreamType: InvalidParameter {
            InvalidParameter(.smallVideoStreamType)
        }
        
        /// 查询开始时间超过文档限制。
        public static var startTimeExpire: InvalidParameter {
            InvalidParameter(.startTimeExpire)
        }
        
        /// 详情请见:https://cloud.tencent.com/document/product/647/81331。
        public static var startTimeOversize: InvalidParameter {
            InvalidParameter(.startTimeOversize)
        }
        
        /// StartTs参数错误。
        public static var startTs: InvalidParameter {
            InvalidParameter(.startTs)
        }
        
        /// 查询开始时间超过文档限制。
        public static var startTsOversize: InvalidParameter {
            InvalidParameter(.startTsOversize)
        }
        
        public static var strRoomId: InvalidParameter {
            InvalidParameter(.strRoomId)
        }
        
        /// StreamId参数错误。
        public static var streamId: InvalidParameter {
            InvalidParameter(.streamId)
        }
        
        /// Url解析参数失败。
        public static var urlParamsError: InvalidParameter {
            InvalidParameter(.urlParamsError)
        }
        
        /// UserId参数错误。
        public static var userId: InvalidParameter {
            InvalidParameter(.userId)
        }
        
        /// UserIds参数错误。
        public static var userIds: InvalidParameter {
            InvalidParameter(.userIds)
        }
        
        /// 用户数超过6个。
        public static var userIdsMorethanSix: InvalidParameter {
            InvalidParameter(.userIdsMorethanSix)
        }
        
        /// 视频分辨率参数错误。
        public static var videoResolution: InvalidParameter {
            InvalidParameter(.videoResolution)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
        
        public func asTrtcError() -> TCTrtcError {
            let code: TCTrtcError.Code
            switch self.error {
            case .appId: 
                code = .invalidParameter_AppId
            case .audioEncodeParams: 
                code = .invalidParameter_AudioEncodeParams
            case .bodyParamsError: 
                code = .invalidParameter_BodyParamsError
            case .checkContentFailed: 
                code = .invalidParameter_CheckContentFailed
            case .checkSuffixFailed: 
                code = .invalidParameter_CheckSuffixFailed
            case .encodeParams: 
                code = .invalidParameter_EncodeParams
            case .endTs: 
                code = .invalidParameter_EndTs
            case .mainVideoRightAlign: 
                code = .invalidParameter_MainVideoRightAlign
            case .mainVideoStreamType: 
                code = .invalidParameter_MainVideoStreamType
            case .outOfRange: 
                code = .invalidParameter_OutOfRange
            case .outputParams: 
                code = .invalidParameter_OutputParams
            case .pageNumber: 
                code = .invalidParameter_PageNumber
            case .pageSize: 
                code = .invalidParameter_PageSize
            case .pageSizeOversize: 
                code = .invalidParameter_PageSizeOversize
            case .pictureNotFound: 
                code = .invalidParameter_PictureNotFound
            case .presetLayoutConfig: 
                code = .invalidParameter_PresetLayoutConfig
            case .publishCdnUrls: 
                code = .invalidParameter_PublishCdnUrls
            case .pureAudioStream: 
                code = .invalidParameter_PureAudioStream
            case .queryScaleOversize: 
                code = .invalidParameter_QueryScaleOversize
            case .recordAudioOnly: 
                code = .invalidParameter_RecordAudioOnly
            case .recordId: 
                code = .invalidParameter_RecordId
            case .roomId: 
                code = .invalidParameter_RoomId
            case .sdkAppId: 
                code = .invalidParameter_SdkAppId
            case .sdkAppid: 
                code = .invalidParameter_SdkAppid
            case .smallVideoLayoutParams: 
                code = .invalidParameter_SmallVideoLayoutParams
            case .smallVideoStreamType: 
                code = .invalidParameter_SmallVideoStreamType
            case .startTimeExpire: 
                code = .invalidParameter_StartTimeExpire
            case .startTimeOversize: 
                code = .invalidParameter_StartTimeOversize
            case .startTs: 
                code = .invalidParameter_StartTs
            case .startTsOversize: 
                code = .invalidParameter_StartTsOversize
            case .strRoomId: 
                code = .invalidParameter_StrRoomId
            case .streamId: 
                code = .invalidParameter_StreamId
            case .urlParamsError: 
                code = .invalidParameter_UrlParamsError
            case .userId: 
                code = .invalidParameter_UserId
            case .userIds: 
                code = .invalidParameter_UserIds
            case .userIdsMorethanSix: 
                code = .invalidParameter_UserIdsMorethanSix
            case .videoResolution: 
                code = .invalidParameter_VideoResolution
            case .other: 
                code = .invalidParameter
            }
            return TCTrtcError(code, context: self.context)
        }
    }
}
