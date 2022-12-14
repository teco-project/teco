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

extension Vod {
    /// ReviewAudioVideo请求参数结构体
    public struct ReviewAudioVideoRequest: TCRequestModel {
        /// 媒体文件 ID，即该文件在云点播上的全局唯一标识符，在上传成功后由云点播后台分配。可以在 [视频上传完成事件通知](/document/product/266/7830) 或 [云点播控制台](https://console.cloud.tencent.com/vod/media) 获取该字段。
        public let fileId: String

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 音视频审核模板 ID，默认值为 10。取值范围：
        /// <li>10：预置模板，支持检测的违规标签包括色情（Porn）、暴恐（Terror）和不适宜的信息（Polity）。</li>
        public let definition: UInt64?

        /// 任务流的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        public let tasksPriority: Int64?

        /// 来源上下文，用于透传用户请求信息，音视频审核完成回调将返回该字段值，最长 1000 个字符。
        public let sessionContext: String?

        /// 用于去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        public let sessionId: String?

        /// 保留字段，特殊用途时使用。
        public let extInfo: String?

        public init(fileId: String, subAppId: UInt64? = nil, definition: UInt64? = nil, tasksPriority: Int64? = nil, sessionContext: String? = nil, sessionId: String? = nil, extInfo: String? = nil) {
            self.fileId = fileId
            self.subAppId = subAppId
            self.definition = definition
            self.tasksPriority = tasksPriority
            self.sessionContext = sessionContext
            self.sessionId = sessionId
            self.extInfo = extInfo
        }

        enum CodingKeys: String, CodingKey {
            case fileId = "FileId"
            case subAppId = "SubAppId"
            case definition = "Definition"
            case tasksPriority = "TasksPriority"
            case sessionContext = "SessionContext"
            case sessionId = "SessionId"
            case extInfo = "ExtInfo"
        }
    }

    /// ReviewAudioVideo返回参数结构体
    public struct ReviewAudioVideoResponse: TCResponseModel {
        /// 任务 ID
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 音视频审核
    ///
    /// 对点播中的音视频媒体发起审核任务，智能检测视频画面、画面中的文字、语音中的文字、声音出现的违规内容。
    /// 如使用事件通知，事件通知的类型为 [音视频审核完成](https://cloud.tencent.com/document/product/266/81258)。
    @inlinable
    public func reviewAudioVideo(_ input: ReviewAudioVideoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ReviewAudioVideoResponse > {
        self.client.execute(action: "ReviewAudioVideo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 音视频审核
    ///
    /// 对点播中的音视频媒体发起审核任务，智能检测视频画面、画面中的文字、语音中的文字、声音出现的违规内容。
    /// 如使用事件通知，事件通知的类型为 [音视频审核完成](https://cloud.tencent.com/document/product/266/81258)。
    @inlinable
    public func reviewAudioVideo(_ input: ReviewAudioVideoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReviewAudioVideoResponse {
        try await self.client.execute(action: "ReviewAudioVideo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 音视频审核
    ///
    /// 对点播中的音视频媒体发起审核任务，智能检测视频画面、画面中的文字、语音中的文字、声音出现的违规内容。
    /// 如使用事件通知，事件通知的类型为 [音视频审核完成](https://cloud.tencent.com/document/product/266/81258)。
    @inlinable
    public func reviewAudioVideo(fileId: String, subAppId: UInt64? = nil, definition: UInt64? = nil, tasksPriority: Int64? = nil, sessionContext: String? = nil, sessionId: String? = nil, extInfo: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ReviewAudioVideoResponse > {
        self.reviewAudioVideo(ReviewAudioVideoRequest(fileId: fileId, subAppId: subAppId, definition: definition, tasksPriority: tasksPriority, sessionContext: sessionContext, sessionId: sessionId, extInfo: extInfo), logger: logger, on: eventLoop)
    }

    /// 音视频审核
    ///
    /// 对点播中的音视频媒体发起审核任务，智能检测视频画面、画面中的文字、语音中的文字、声音出现的违规内容。
    /// 如使用事件通知，事件通知的类型为 [音视频审核完成](https://cloud.tencent.com/document/product/266/81258)。
    @inlinable
    public func reviewAudioVideo(fileId: String, subAppId: UInt64? = nil, definition: UInt64? = nil, tasksPriority: Int64? = nil, sessionContext: String? = nil, sessionId: String? = nil, extInfo: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReviewAudioVideoResponse {
        try await self.reviewAudioVideo(ReviewAudioVideoRequest(fileId: fileId, subAppId: subAppId, definition: definition, tasksPriority: tasksPriority, sessionContext: sessionContext, sessionId: sessionId, extInfo: extInfo), logger: logger, on: eventLoop)
    }
}
