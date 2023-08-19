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
    /// ExtractCopyRightWatermark请求参数结构体
    public struct ExtractCopyRightWatermarkRequest: TCRequest {
        /// 需要提取水印的媒体 URL。
        public let url: String

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 标识来源上下文，用于透传用户请求信息，在 ExtractCopyRightWatermarkComplete 回调和任务流状态变更回调将返回该字段值，最长 1000 个字符。
        public let sessionContext: String?

        /// 用于任务去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        public let sessionId: String?

        /// 任务的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        public let tasksPriority: Int64?

        /// 保留字段，特殊用途时使用。
        public let extInfo: String?

        public init(url: String, subAppId: UInt64? = nil, sessionContext: String? = nil, sessionId: String? = nil, tasksPriority: Int64? = nil, extInfo: String? = nil) {
            self.url = url
            self.subAppId = subAppId
            self.sessionContext = sessionContext
            self.sessionId = sessionId
            self.tasksPriority = tasksPriority
            self.extInfo = extInfo
        }

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case subAppId = "SubAppId"
            case sessionContext = "SessionContext"
            case sessionId = "SessionId"
            case tasksPriority = "TasksPriority"
            case extInfo = "ExtInfo"
        }
    }

    /// ExtractCopyRightWatermark返回参数结构体
    public struct ExtractCopyRightWatermarkResponse: TCResponse {
        /// 任务 ID。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 提取版权水印
    ///
    /// 提取版权水印信息。
    @inlinable
    public func extractCopyRightWatermark(_ input: ExtractCopyRightWatermarkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExtractCopyRightWatermarkResponse> {
        self.client.execute(action: "ExtractCopyRightWatermark", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提取版权水印
    ///
    /// 提取版权水印信息。
    @inlinable
    public func extractCopyRightWatermark(_ input: ExtractCopyRightWatermarkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExtractCopyRightWatermarkResponse {
        try await self.client.execute(action: "ExtractCopyRightWatermark", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提取版权水印
    ///
    /// 提取版权水印信息。
    @inlinable
    public func extractCopyRightWatermark(url: String, subAppId: UInt64? = nil, sessionContext: String? = nil, sessionId: String? = nil, tasksPriority: Int64? = nil, extInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExtractCopyRightWatermarkResponse> {
        self.extractCopyRightWatermark(.init(url: url, subAppId: subAppId, sessionContext: sessionContext, sessionId: sessionId, tasksPriority: tasksPriority, extInfo: extInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 提取版权水印
    ///
    /// 提取版权水印信息。
    @inlinable
    public func extractCopyRightWatermark(url: String, subAppId: UInt64? = nil, sessionContext: String? = nil, sessionId: String? = nil, tasksPriority: Int64? = nil, extInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExtractCopyRightWatermarkResponse {
        try await self.extractCopyRightWatermark(.init(url: url, subAppId: subAppId, sessionContext: sessionContext, sessionId: sessionId, tasksPriority: tasksPriority, extInfo: extInfo), region: region, logger: logger, on: eventLoop)
    }
}
