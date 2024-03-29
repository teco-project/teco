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

import Logging
import NIOCore
import TecoCore

extension Tiw {
    /// StartWhiteboardPush请求参数结构体
    public struct StartWhiteboardPushRequest: TCRequest {
        /// 客户的SdkAppId
        public let sdkAppId: Int64

        /// 需要推流的白板房间号，取值范围: (1, 4294967295)。
        ///
        /// 1. 白板推流默认以RoomId的字符串表达形式作为IM群组的GroupID（比如RoomId为1234，则IM群组的GroupID为"1234"）加群进行信令同步，请在开始推流前确保相应IM群组已创建完成，否则会导致推流失败。
        /// 2. 在没有指定TRTCRoomId和TRTCRoomIdStr的情况下，默认会以RoomId作为白板流进行推流的TRTC房间号。
        public let roomId: Int64

        /// 用于白板推流服务进入白板房间的用户ID。在没有额外指定`IMAuthParam`和`TRTCAuthParam`的情况下，这个用户ID同时会用于IM登录、IM加群、TRTC进房推流等操作。
        /// 用户ID最大长度不能大于60个字节，该用户ID必须是一个单独的未同时在其他地方使用的用户ID，白板推流服务使用这个用户ID进入房间进行白板音视频推流，若该用户ID和其他地方同时在使用的用户ID重复，会导致白板推流服务与其他使用场景帐号互踢，影响正常推流。
        public let pushUserId: String

        /// 与PushUserId对应的IM签名(usersig)。
        public let pushUserSig: String

        /// 白板参数，例如白板宽高、背景颜色等
        public let whiteboard: Whiteboard?

        /// 自动停止推流超时时间，单位秒，取值范围[300, 259200], 默认值为1800秒。
        ///
        /// 当白板超过设定时间没有操作的时候，白板推流服务会自动停止白板推流。
        public let autoStopTimeout: Int64?

        /// 对主白板推流任务进行操作时，是否同时同步操作备份任务
        public let autoManageBackup: Bool?

        /// 备份白板推流相关参数。
        ///
        /// 指定了备份参数的情况下，白板推流服务会在房间内新增一路白板画面视频流，即同一个房间内会有两路白板画面推流。
        public let backup: WhiteboardPushBackupParam?

        /// TRTC高级权限控制参数，如果在实时音视频开启了高级权限控制功能，必须提供PrivateMapKey才能保证正常推流。
        public let privateMapKey: String?

        /// 白板推流视频帧率，取值范围[0, 30]，默认20fps
        public let videoFPS: Int64?

        /// 白板推流码率， 取值范围[0, 2000]，默认1200kbps。
        ///
        /// 这里的码率设置是一个参考值，实际推流的时候使用的是动态码率，所以真实码率不会固定为指定值，会在指定值附近波动。
        public let videoBitrate: Int64?

        /// 在实时音视频云端录制模式选择为 `指定用户录制` 模式的时候是否自动录制白板推流。
        ///
        /// 默认在实时音视频的云端录制模式选择为 `指定用户录制` 模式的情况下，不会自动进行白板推流录制，如果希望进行白板推流录制，请将此参数设置为true。
        ///
        /// 如果实时音视频的云端录制模式选择为 `全局自动录制` 模式，可忽略此参数。
        public let autoRecord: Bool?

        /// 指定白板推流录制的RecordID，指定的RecordID会用于填充实时音视频云端录制完成后的回调消息中的 "userdefinerecordid" 字段内容，便于您更方便的识别录制回调，以及在点播媒体资源管理中查找相应的录制视频文件。
        ///
        /// 限制长度为64字节，只允许包含大小写英文字母（a-zA-Z）、数字（0-9）及下划线和连词符。
        ///
        /// 此字段设置后，不管`AutoRecord`字段取值如何，都将自动进行白板推流录制。
        ///
        /// 默认RecordId生成规则如下：
        /// urlencode(SdkAppID_RoomID_PushUserID)
        ///
        /// 例如：
        /// SdkAppID = 12345678，RoomID = 12345，PushUserID = push_user_1
        /// 那么：RecordId = 12345678_12345_push_user_1
        public let userDefinedRecordId: String?

        /// 在实时音视频旁路推流模式选择为`指定用户旁路`模式的时候，是否自动旁路白板推流。
        ///
        /// 默认在实时音视频的旁路推流模式选择为 `指定用户旁路` 模式的情况下，不会自动旁路白板推流，如果希望旁路白板推流，请将此参数设置为true。
        ///
        /// 如果实时音视频的旁路推流模式选择为 `全局自动旁路` 模式，可忽略此参数。
        public let autoPublish: Bool?

        /// 指定实时音视频在旁路白板推流时的StreamID，设置之后，您就可以在腾讯云直播 CDN 上通过标准直播方案（FLV或HLS）播放该用户的音视频流。
        ///
        /// 限制长度为64字节，只允许包含大小写英文字母（a-zA-Z）、数字（0-9）及下划线和连词符。
        ///
        /// 此字段设置后，不管`AutoPublish`字段取值如何，都将自动旁路白板推流。
        ///
        /// 默认StreamID生成规则如下：
        /// urlencode(SdkAppID_RoomID_PushUserID_main)
        ///
        /// 例如：
        /// SdkAppID = 12345678，RoomID = 12345，PushUserID = push_user_1
        /// 那么：StreamID = 12345678_12345_push_user_1_main
        public let userDefinedStreamId: String?

        /// 内部参数，不需要关注此参数
        public let extraData: String?

        /// TRTC数字类型房间号，取值范围: (1, 4294967295)。
        ///
        /// 在同时指定了RoomId与TRTCRoomId的情况下，优先使用TRTCRoomId作为白板流进行推流的TRTC房间号。
        ///
        /// 当指定了TRTCRoomIdStr的情况下，此字段将被忽略。
        public let trtcRoomId: Int64?

        /// TRTC字符串类型房间号。
        ///
        /// 在指定了TRTCRoomIdStr的情况下，会优先使用TRTCRoomIdStr作为白板流进行推流的TRTC房间号。
        public let trtcRoomIdStr: String?

        /// IM鉴权信息参数，用于IM鉴权。
        /// 当白板信令所使用的IM应用与白板应用的SdkAppId不一致时，可以通过此参数提供对应IM应用鉴权信息。
        ///
        /// 如果提供了此参数，白板推流服务会优先使用此参数指定的SdkAppId作为白板信令的传输通道，否则使用公共参数中的SdkAppId作为白板信令的传输通道。
        public let imAuthParam: AuthParam?

        /// TRTC鉴权信息参数，用于TRTC进房推流鉴权。
        /// 当需要推流到的TRTC房间所对应的TRTC应用与白板应用的SdkAppId不一致时，可以通过此参数提供对应的TRTC应用鉴权信息。
        ///
        /// 如果提供了此参数，白板推流服务会优先使用此参数指定的SdkAppId作为白板推流的目标TRTC应用，否则使用公共参数中的SdkAppId作为白板推流的目标TRTC应用。
        public let trtcAuthParam: AuthParam?

        /// 指定白板推流时推流用户进TRTC房间的进房模式。默认为 TRTCAppSceneVideoCall
        ///
        /// TRTCAppSceneVideoCall - 视频通话场景，即绝大多数时间都是两人或两人以上视频通话的场景，内部编码器和网络协议优化侧重流畅性，降低通话延迟和卡顿率。
        /// TRTCAppSceneLIVE - 直播场景，即绝大多数时间都是一人直播，偶尔有多人视频互动的场景，内部编码器和网络协议优化侧重性能和兼容性，性能和清晰度表现更佳。
        public let trtcEnterRoomMode: String?

        public init(sdkAppId: Int64, roomId: Int64, pushUserId: String, pushUserSig: String, whiteboard: Whiteboard? = nil, autoStopTimeout: Int64? = nil, autoManageBackup: Bool? = nil, backup: WhiteboardPushBackupParam? = nil, privateMapKey: String? = nil, videoFPS: Int64? = nil, videoBitrate: Int64? = nil, autoRecord: Bool? = nil, userDefinedRecordId: String? = nil, autoPublish: Bool? = nil, userDefinedStreamId: String? = nil, extraData: String? = nil, trtcRoomId: Int64? = nil, trtcRoomIdStr: String? = nil, imAuthParam: AuthParam? = nil, trtcAuthParam: AuthParam? = nil, trtcEnterRoomMode: String? = nil) {
            self.sdkAppId = sdkAppId
            self.roomId = roomId
            self.pushUserId = pushUserId
            self.pushUserSig = pushUserSig
            self.whiteboard = whiteboard
            self.autoStopTimeout = autoStopTimeout
            self.autoManageBackup = autoManageBackup
            self.backup = backup
            self.privateMapKey = privateMapKey
            self.videoFPS = videoFPS
            self.videoBitrate = videoBitrate
            self.autoRecord = autoRecord
            self.userDefinedRecordId = userDefinedRecordId
            self.autoPublish = autoPublish
            self.userDefinedStreamId = userDefinedStreamId
            self.extraData = extraData
            self.trtcRoomId = trtcRoomId
            self.trtcRoomIdStr = trtcRoomIdStr
            self.imAuthParam = imAuthParam
            self.trtcAuthParam = trtcAuthParam
            self.trtcEnterRoomMode = trtcEnterRoomMode
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case roomId = "RoomId"
            case pushUserId = "PushUserId"
            case pushUserSig = "PushUserSig"
            case whiteboard = "Whiteboard"
            case autoStopTimeout = "AutoStopTimeout"
            case autoManageBackup = "AutoManageBackup"
            case backup = "Backup"
            case privateMapKey = "PrivateMapKey"
            case videoFPS = "VideoFPS"
            case videoBitrate = "VideoBitrate"
            case autoRecord = "AutoRecord"
            case userDefinedRecordId = "UserDefinedRecordId"
            case autoPublish = "AutoPublish"
            case userDefinedStreamId = "UserDefinedStreamId"
            case extraData = "ExtraData"
            case trtcRoomId = "TRTCRoomId"
            case trtcRoomIdStr = "TRTCRoomIdStr"
            case imAuthParam = "IMAuthParam"
            case trtcAuthParam = "TRTCAuthParam"
            case trtcEnterRoomMode = "TRTCEnterRoomMode"
        }
    }

    /// StartWhiteboardPush返回参数结构体
    public struct StartWhiteboardPushResponse: TCResponse {
        /// 推流任务Id
        public let taskId: String

        /// 备份任务结果参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let backup: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case backup = "Backup"
            case requestId = "RequestId"
        }
    }

    /// 开始白板推流
    ///
    /// 发起一个白板推流任务
    @inlinable
    public func startWhiteboardPush(_ input: StartWhiteboardPushRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartWhiteboardPushResponse> {
        self.client.execute(action: "StartWhiteboardPush", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开始白板推流
    ///
    /// 发起一个白板推流任务
    @inlinable
    public func startWhiteboardPush(_ input: StartWhiteboardPushRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartWhiteboardPushResponse {
        try await self.client.execute(action: "StartWhiteboardPush", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开始白板推流
    ///
    /// 发起一个白板推流任务
    @inlinable
    public func startWhiteboardPush(sdkAppId: Int64, roomId: Int64, pushUserId: String, pushUserSig: String, whiteboard: Whiteboard? = nil, autoStopTimeout: Int64? = nil, autoManageBackup: Bool? = nil, backup: WhiteboardPushBackupParam? = nil, privateMapKey: String? = nil, videoFPS: Int64? = nil, videoBitrate: Int64? = nil, autoRecord: Bool? = nil, userDefinedRecordId: String? = nil, autoPublish: Bool? = nil, userDefinedStreamId: String? = nil, extraData: String? = nil, trtcRoomId: Int64? = nil, trtcRoomIdStr: String? = nil, imAuthParam: AuthParam? = nil, trtcAuthParam: AuthParam? = nil, trtcEnterRoomMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartWhiteboardPushResponse> {
        self.startWhiteboardPush(.init(sdkAppId: sdkAppId, roomId: roomId, pushUserId: pushUserId, pushUserSig: pushUserSig, whiteboard: whiteboard, autoStopTimeout: autoStopTimeout, autoManageBackup: autoManageBackup, backup: backup, privateMapKey: privateMapKey, videoFPS: videoFPS, videoBitrate: videoBitrate, autoRecord: autoRecord, userDefinedRecordId: userDefinedRecordId, autoPublish: autoPublish, userDefinedStreamId: userDefinedStreamId, extraData: extraData, trtcRoomId: trtcRoomId, trtcRoomIdStr: trtcRoomIdStr, imAuthParam: imAuthParam, trtcAuthParam: trtcAuthParam, trtcEnterRoomMode: trtcEnterRoomMode), region: region, logger: logger, on: eventLoop)
    }

    /// 开始白板推流
    ///
    /// 发起一个白板推流任务
    @inlinable
    public func startWhiteboardPush(sdkAppId: Int64, roomId: Int64, pushUserId: String, pushUserSig: String, whiteboard: Whiteboard? = nil, autoStopTimeout: Int64? = nil, autoManageBackup: Bool? = nil, backup: WhiteboardPushBackupParam? = nil, privateMapKey: String? = nil, videoFPS: Int64? = nil, videoBitrate: Int64? = nil, autoRecord: Bool? = nil, userDefinedRecordId: String? = nil, autoPublish: Bool? = nil, userDefinedStreamId: String? = nil, extraData: String? = nil, trtcRoomId: Int64? = nil, trtcRoomIdStr: String? = nil, imAuthParam: AuthParam? = nil, trtcAuthParam: AuthParam? = nil, trtcEnterRoomMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartWhiteboardPushResponse {
        try await self.startWhiteboardPush(.init(sdkAppId: sdkAppId, roomId: roomId, pushUserId: pushUserId, pushUserSig: pushUserSig, whiteboard: whiteboard, autoStopTimeout: autoStopTimeout, autoManageBackup: autoManageBackup, backup: backup, privateMapKey: privateMapKey, videoFPS: videoFPS, videoBitrate: videoBitrate, autoRecord: autoRecord, userDefinedRecordId: userDefinedRecordId, autoPublish: autoPublish, userDefinedStreamId: userDefinedStreamId, extraData: extraData, trtcRoomId: trtcRoomId, trtcRoomIdStr: trtcRoomIdStr, imAuthParam: imAuthParam, trtcAuthParam: trtcAuthParam, trtcEnterRoomMode: trtcEnterRoomMode), region: region, logger: logger, on: eventLoop)
    }
}
