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

extension Cls {
    /// DescribeLogContext请求参数结构体
    public struct DescribeLogContextRequest: TCRequestModel {
        /// 要查询的日志主题ID
        public let topicId: String

        /// 日志时间,  格式: YYYY-mm-dd HH:MM:SS.FFF
        public let bTime: String

        /// 日志包序号
        public let pkgId: String

        /// 日志包内一条日志的序号
        public let pkgLogId: Int64

        /// 上文日志条数,  默认值10
        public let prevLogs: Int64?

        /// 下文日志条数,  默认值10
        public let nextLogs: Int64?

        public init(topicId: String, bTime: String, pkgId: String, pkgLogId: Int64, prevLogs: Int64? = nil, nextLogs: Int64? = nil) {
            self.topicId = topicId
            self.bTime = bTime
            self.pkgId = pkgId
            self.pkgLogId = pkgLogId
            self.prevLogs = prevLogs
            self.nextLogs = nextLogs
        }

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case bTime = "BTime"
            case pkgId = "PkgId"
            case pkgLogId = "PkgLogId"
            case prevLogs = "PrevLogs"
            case nextLogs = "NextLogs"
        }
    }

    /// DescribeLogContext返回参数结构体
    public struct DescribeLogContextResponse: TCResponseModel {
        /// 日志上下文信息集合
        public let logContextInfos: [LogContextInfo]

        /// 上文日志是否已经返回
        public let prevOver: Bool

        /// 下文日志是否已经返回
        public let nextOver: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case logContextInfos = "LogContextInfos"
            case prevOver = "PrevOver"
            case nextOver = "NextOver"
            case requestId = "RequestId"
        }
    }

    /// 上下文检索
    ///
    /// 本接口用于搜索日志上下文附近的内容
    @inlinable
    public func describeLogContext(_ input: DescribeLogContextRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogContextResponse> {
        self.client.execute(action: "DescribeLogContext", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上下文检索
    ///
    /// 本接口用于搜索日志上下文附近的内容
    @inlinable
    public func describeLogContext(_ input: DescribeLogContextRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogContextResponse {
        try await self.client.execute(action: "DescribeLogContext", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上下文检索
    ///
    /// 本接口用于搜索日志上下文附近的内容
    @inlinable
    public func describeLogContext(topicId: String, bTime: String, pkgId: String, pkgLogId: Int64, prevLogs: Int64? = nil, nextLogs: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogContextResponse> {
        self.describeLogContext(.init(topicId: topicId, bTime: bTime, pkgId: pkgId, pkgLogId: pkgLogId, prevLogs: prevLogs, nextLogs: nextLogs), region: region, logger: logger, on: eventLoop)
    }

    /// 上下文检索
    ///
    /// 本接口用于搜索日志上下文附近的内容
    @inlinable
    public func describeLogContext(topicId: String, bTime: String, pkgId: String, pkgLogId: Int64, prevLogs: Int64? = nil, nextLogs: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogContextResponse {
        try await self.describeLogContext(.init(topicId: topicId, bTime: bTime, pkgId: pkgId, pkgLogId: pkgLogId, prevLogs: prevLogs, nextLogs: nextLogs), region: region, logger: logger, on: eventLoop)
    }
}
