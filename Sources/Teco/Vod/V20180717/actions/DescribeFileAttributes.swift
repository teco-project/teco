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
    /// DescribeFileAttributes请求参数结构体
    public struct DescribeFileAttributesRequest: TCRequest {
        /// 媒体文件 ID
        public let fileId: String

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 用于去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        public let sessionId: String?

        /// 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        public let sessionContext: String?

        /// 任务优先级，数值越大优先级越高，取值范围是-10到 10，不填代表0。
        public let tasksPriority: Int64?

        /// 保留字段，特殊用途时使用。
        public let extInfo: String?

        public init(fileId: String, subAppId: UInt64? = nil, sessionId: String? = nil, sessionContext: String? = nil, tasksPriority: Int64? = nil, extInfo: String? = nil) {
            self.fileId = fileId
            self.subAppId = subAppId
            self.sessionId = sessionId
            self.sessionContext = sessionContext
            self.tasksPriority = tasksPriority
            self.extInfo = extInfo
        }

        enum CodingKeys: String, CodingKey {
            case fileId = "FileId"
            case subAppId = "SubAppId"
            case sessionId = "SessionId"
            case sessionContext = "SessionContext"
            case tasksPriority = "TasksPriority"
            case extInfo = "ExtInfo"
        }
    }

    /// DescribeFileAttributes返回参数结构体
    public struct DescribeFileAttributesResponse: TCResponse {
        /// 任务 ID 。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 获取文件属性
    ///
    /// 用于异步获取文件属性。
    /// - 当前仅支持获取源文件的 Md5。
    /// - 对输入文件为 HLS 或 DASH 的情况，仅获取索引文件的属性。
    @inlinable
    public func describeFileAttributes(_ input: DescribeFileAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileAttributesResponse> {
        self.client.execute(action: "DescribeFileAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取文件属性
    ///
    /// 用于异步获取文件属性。
    /// - 当前仅支持获取源文件的 Md5。
    /// - 对输入文件为 HLS 或 DASH 的情况，仅获取索引文件的属性。
    @inlinable
    public func describeFileAttributes(_ input: DescribeFileAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileAttributesResponse {
        try await self.client.execute(action: "DescribeFileAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取文件属性
    ///
    /// 用于异步获取文件属性。
    /// - 当前仅支持获取源文件的 Md5。
    /// - 对输入文件为 HLS 或 DASH 的情况，仅获取索引文件的属性。
    @inlinable
    public func describeFileAttributes(fileId: String, subAppId: UInt64? = nil, sessionId: String? = nil, sessionContext: String? = nil, tasksPriority: Int64? = nil, extInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileAttributesResponse> {
        self.describeFileAttributes(.init(fileId: fileId, subAppId: subAppId, sessionId: sessionId, sessionContext: sessionContext, tasksPriority: tasksPriority, extInfo: extInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 获取文件属性
    ///
    /// 用于异步获取文件属性。
    /// - 当前仅支持获取源文件的 Md5。
    /// - 对输入文件为 HLS 或 DASH 的情况，仅获取索引文件的属性。
    @inlinable
    public func describeFileAttributes(fileId: String, subAppId: UInt64? = nil, sessionId: String? = nil, sessionContext: String? = nil, tasksPriority: Int64? = nil, extInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileAttributesResponse {
        try await self.describeFileAttributes(.init(fileId: fileId, subAppId: subAppId, sessionId: sessionId, sessionContext: sessionContext, tasksPriority: tasksPriority, extInfo: extInfo), region: region, logger: logger, on: eventLoop)
    }
}
