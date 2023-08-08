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

extension Mps {
    /// ParseLiveStreamProcessNotification请求参数结构体
    public struct ParseLiveStreamProcessNotificationRequest: TCRequestModel {
        /// 从 CMQ 获取到的直播流事件通知内容。
        public let content: String

        public init(content: String) {
            self.content = content
        }

        enum CodingKeys: String, CodingKey {
            case content = "Content"
        }
    }

    /// ParseLiveStreamProcessNotification返回参数结构体
    public struct ParseLiveStreamProcessNotificationResponse: TCResponseModel {
        /// 直播流处理结果类型，包含：
        /// <li>AiReviewResult：内容审核结果；</li>
        /// <li>AiRecognitionResult：内容识别结果；</li>
        /// <li>ProcessEof：直播流处理结束。</li>
        public let notificationType: String

        /// 视频处理任务 ID。
        public let taskId: String

        /// 直播流处理错误信息，当 NotificationType 为 ProcessEof 时有效。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let processEofInfo: LiveStreamProcessErrorInfo?

        /// 内容审核结果，当 NotificationType 为 AiReviewResult 时有效。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let aiReviewResultInfo: LiveStreamAiReviewResultInfo?

        /// 内容识别结果，当 NotificationType 为 AiRecognitionResult 时有效。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let aiRecognitionResultInfo: LiveStreamAiRecognitionResultInfo?

        /// 内容分析结果，当 NotificationType 为 AiAnalysisResult 时有效。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let aiAnalysisResultInfo: LiveStreamAiAnalysisResultInfo?

        /// 媒体质检结果，当 NotificationType 为 AiQualityControlResult 时有效。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let aiQualityControlResultInfo: LiveStreamAiQualityControlResultInfo?

        /// 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长50个字符，不带或者带空字符串表示不做去重。
        public let sessionId: String

        /// 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长1000个字符。
        public let sessionContext: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case notificationType = "NotificationType"
            case taskId = "TaskId"
            case processEofInfo = "ProcessEofInfo"
            case aiReviewResultInfo = "AiReviewResultInfo"
            case aiRecognitionResultInfo = "AiRecognitionResultInfo"
            case aiAnalysisResultInfo = "AiAnalysisResultInfo"
            case aiQualityControlResultInfo = "AiQualityControlResultInfo"
            case sessionId = "SessionId"
            case sessionContext = "SessionContext"
            case requestId = "RequestId"
        }
    }

    /// 解析直播流处理结果
    ///
    /// 从 CMQ 获取到消息后，从消息的 msgBody 字段中解析出 MPS 直播流处理事件通知的内容。
    /// 该接口不用于发起网络调用，而是用来帮助生成各个语言平台的 SDK，您可以参考 SDK 中的解析实现事件通知的解析。
    @inlinable
    public func parseLiveStreamProcessNotification(_ input: ParseLiveStreamProcessNotificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ParseLiveStreamProcessNotificationResponse> {
        self.client.execute(action: "ParseLiveStreamProcessNotification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解析直播流处理结果
    ///
    /// 从 CMQ 获取到消息后，从消息的 msgBody 字段中解析出 MPS 直播流处理事件通知的内容。
    /// 该接口不用于发起网络调用，而是用来帮助生成各个语言平台的 SDK，您可以参考 SDK 中的解析实现事件通知的解析。
    @inlinable
    public func parseLiveStreamProcessNotification(_ input: ParseLiveStreamProcessNotificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ParseLiveStreamProcessNotificationResponse {
        try await self.client.execute(action: "ParseLiveStreamProcessNotification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解析直播流处理结果
    ///
    /// 从 CMQ 获取到消息后，从消息的 msgBody 字段中解析出 MPS 直播流处理事件通知的内容。
    /// 该接口不用于发起网络调用，而是用来帮助生成各个语言平台的 SDK，您可以参考 SDK 中的解析实现事件通知的解析。
    @inlinable
    public func parseLiveStreamProcessNotification(content: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ParseLiveStreamProcessNotificationResponse> {
        self.parseLiveStreamProcessNotification(.init(content: content), region: region, logger: logger, on: eventLoop)
    }

    /// 解析直播流处理结果
    ///
    /// 从 CMQ 获取到消息后，从消息的 msgBody 字段中解析出 MPS 直播流处理事件通知的内容。
    /// 该接口不用于发起网络调用，而是用来帮助生成各个语言平台的 SDK，您可以参考 SDK 中的解析实现事件通知的解析。
    @inlinable
    public func parseLiveStreamProcessNotification(content: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ParseLiveStreamProcessNotificationResponse {
        try await self.parseLiveStreamProcessNotification(.init(content: content), region: region, logger: logger, on: eventLoop)
    }
}
