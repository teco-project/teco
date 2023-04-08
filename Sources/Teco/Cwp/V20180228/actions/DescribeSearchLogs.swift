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

extension Cwp {
    /// DescribeSearchLogs请求参数结构体
    public struct DescribeSearchLogsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeSearchLogs返回参数结构体
    public struct DescribeSearchLogsResponse: TCResponseModel {
        /// 历史搜索记录 保留最新的10条
        public let data: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取历史搜索记录
    @inlinable
    public func describeSearchLogs(_ input: DescribeSearchLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSearchLogsResponse> {
        self.client.execute(action: "DescribeSearchLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取历史搜索记录
    @inlinable
    public func describeSearchLogs(_ input: DescribeSearchLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSearchLogsResponse {
        try await self.client.execute(action: "DescribeSearchLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取历史搜索记录
    @inlinable
    public func describeSearchLogs(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSearchLogsResponse> {
        self.describeSearchLogs(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取历史搜索记录
    @inlinable
    public func describeSearchLogs(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSearchLogsResponse {
        try await self.describeSearchLogs(.init(), region: region, logger: logger, on: eventLoop)
    }
}
