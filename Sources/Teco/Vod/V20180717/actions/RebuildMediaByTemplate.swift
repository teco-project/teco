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

extension Vod {
    /// RebuildMediaByTemplate请求参数结构体
    public struct RebuildMediaByTemplateRequest: TCRequestModel {
        /// 媒体文件 ID。
        public let fileId: String

        /// 视频重生模板 ID。
        public let definition: Int64

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: String?

        /// 起始偏移时间，单位：秒，不填表示从视频开始截取。
        public let startTimeOffset: Float?

        /// 结束偏移时间，单位：秒，不填表示截取到视频末尾。
        public let endTimeOffset: Float?

        /// 视频重生后的文件配置。
        public let outputConfig: RebuildMediaOutputConfig?

        /// 用于去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        public let sessionId: String?

        /// 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        public let sessionContext: String?

        /// 任务的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        public let tasksPriority: Int64?

        /// 保留字段，特殊用途时使用。
        public let extInfo: String?

        public init(fileId: String, definition: Int64, subAppId: String? = nil, startTimeOffset: Float? = nil, endTimeOffset: Float? = nil, outputConfig: RebuildMediaOutputConfig? = nil, sessionId: String? = nil, sessionContext: String? = nil, tasksPriority: Int64? = nil, extInfo: String? = nil) {
            self.fileId = fileId
            self.definition = definition
            self.subAppId = subAppId
            self.startTimeOffset = startTimeOffset
            self.endTimeOffset = endTimeOffset
            self.outputConfig = outputConfig
            self.sessionId = sessionId
            self.sessionContext = sessionContext
            self.tasksPriority = tasksPriority
            self.extInfo = extInfo
        }

        enum CodingKeys: String, CodingKey {
            case fileId = "FileId"
            case definition = "Definition"
            case subAppId = "SubAppId"
            case startTimeOffset = "StartTimeOffset"
            case endTimeOffset = "EndTimeOffset"
            case outputConfig = "OutputConfig"
            case sessionId = "SessionId"
            case sessionContext = "SessionContext"
            case tasksPriority = "TasksPriority"
            case extInfo = "ExtInfo"
        }
    }

    /// RebuildMediaByTemplate返回参数结构体
    public struct RebuildMediaByTemplateResponse: TCResponseModel {
        /// 视频重生的任务 ID，可以通过该 ID 查询视频重生任务的状态。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 使用模板发起视频重生
    ///
    /// 使用模板发起视频重生。
    @inlinable
    public func rebuildMediaByTemplate(_ input: RebuildMediaByTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RebuildMediaByTemplateResponse> {
        self.client.execute(action: "RebuildMediaByTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 使用模板发起视频重生
    ///
    /// 使用模板发起视频重生。
    @inlinable
    public func rebuildMediaByTemplate(_ input: RebuildMediaByTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RebuildMediaByTemplateResponse {
        try await self.client.execute(action: "RebuildMediaByTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 使用模板发起视频重生
    ///
    /// 使用模板发起视频重生。
    @inlinable
    public func rebuildMediaByTemplate(fileId: String, definition: Int64, subAppId: String? = nil, startTimeOffset: Float? = nil, endTimeOffset: Float? = nil, outputConfig: RebuildMediaOutputConfig? = nil, sessionId: String? = nil, sessionContext: String? = nil, tasksPriority: Int64? = nil, extInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RebuildMediaByTemplateResponse> {
        self.rebuildMediaByTemplate(.init(fileId: fileId, definition: definition, subAppId: subAppId, startTimeOffset: startTimeOffset, endTimeOffset: endTimeOffset, outputConfig: outputConfig, sessionId: sessionId, sessionContext: sessionContext, tasksPriority: tasksPriority, extInfo: extInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 使用模板发起视频重生
    ///
    /// 使用模板发起视频重生。
    @inlinable
    public func rebuildMediaByTemplate(fileId: String, definition: Int64, subAppId: String? = nil, startTimeOffset: Float? = nil, endTimeOffset: Float? = nil, outputConfig: RebuildMediaOutputConfig? = nil, sessionId: String? = nil, sessionContext: String? = nil, tasksPriority: Int64? = nil, extInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RebuildMediaByTemplateResponse {
        try await self.rebuildMediaByTemplate(.init(fileId: fileId, definition: definition, subAppId: subAppId, startTimeOffset: startTimeOffset, endTimeOffset: endTimeOffset, outputConfig: outputConfig, sessionId: sessionId, sessionContext: sessionContext, tasksPriority: tasksPriority, extInfo: extInfo), region: region, logger: logger, on: eventLoop)
    }
}
