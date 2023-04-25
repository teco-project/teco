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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Vod {
    /// RemoveWatermark请求参数结构体
    public struct RemoveWatermarkRequest: TCRequestModel {
        /// 媒体文件 ID 。
        public let fileId: String

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        public let sessionId: String?

        /// 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        public let sessionContext: String?

        /// 任务流的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        public let tasksPriority: Int64?

        /// 该字段已无效。
        public let tasksNotifyMode: String?

        public init(fileId: String, subAppId: UInt64? = nil, sessionId: String? = nil, sessionContext: String? = nil, tasksPriority: Int64? = nil, tasksNotifyMode: String? = nil) {
            self.fileId = fileId
            self.subAppId = subAppId
            self.sessionId = sessionId
            self.sessionContext = sessionContext
            self.tasksPriority = tasksPriority
            self.tasksNotifyMode = tasksNotifyMode
        }

        enum CodingKeys: String, CodingKey {
            case fileId = "FileId"
            case subAppId = "SubAppId"
            case sessionId = "SessionId"
            case sessionContext = "SessionContext"
            case tasksPriority = "TasksPriority"
            case tasksNotifyMode = "TasksNotifyMode"
        }
    }

    /// RemoveWatermark返回参数结构体
    public struct RemoveWatermarkResponse: TCResponseModel {
        /// 任务 ID 。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 智能去除水印
    @inlinable
    public func removeWatermark(_ input: RemoveWatermarkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveWatermarkResponse> {
        self.client.execute(action: "RemoveWatermark", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 智能去除水印
    @inlinable
    public func removeWatermark(_ input: RemoveWatermarkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveWatermarkResponse {
        try await self.client.execute(action: "RemoveWatermark", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 智能去除水印
    @inlinable
    public func removeWatermark(fileId: String, subAppId: UInt64? = nil, sessionId: String? = nil, sessionContext: String? = nil, tasksPriority: Int64? = nil, tasksNotifyMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveWatermarkResponse> {
        self.removeWatermark(.init(fileId: fileId, subAppId: subAppId, sessionId: sessionId, sessionContext: sessionContext, tasksPriority: tasksPriority, tasksNotifyMode: tasksNotifyMode), region: region, logger: logger, on: eventLoop)
    }

    /// 智能去除水印
    @inlinable
    public func removeWatermark(fileId: String, subAppId: UInt64? = nil, sessionId: String? = nil, sessionContext: String? = nil, tasksPriority: Int64? = nil, tasksNotifyMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveWatermarkResponse {
        try await self.removeWatermark(.init(fileId: fileId, subAppId: subAppId, sessionId: sessionId, sessionContext: sessionContext, tasksPriority: tasksPriority, tasksNotifyMode: tasksNotifyMode), region: region, logger: logger, on: eventLoop)
    }
}
