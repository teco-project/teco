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

extension Tcss {
    /// DescribeSearchExportList请求参数结构体
    public struct DescribeSearchExportListRequest: TCRequest {
        /// ES查询条件JSON
        public let query: String

        public init(query: String) {
            self.query = query
        }

        enum CodingKeys: String, CodingKey {
            case query = "Query"
        }
    }

    /// DescribeSearchExportList返回参数结构体
    public struct DescribeSearchExportListResponse: TCResponse {
        /// 导出任务ID，前端拿着任务ID查询任务进度
        public let jobId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 导出ES查询文档列表
    @inlinable
    public func describeSearchExportList(_ input: DescribeSearchExportListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSearchExportListResponse> {
        self.client.execute(action: "DescribeSearchExportList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出ES查询文档列表
    @inlinable
    public func describeSearchExportList(_ input: DescribeSearchExportListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSearchExportListResponse {
        try await self.client.execute(action: "DescribeSearchExportList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出ES查询文档列表
    @inlinable
    public func describeSearchExportList(query: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSearchExportListResponse> {
        self.describeSearchExportList(.init(query: query), region: region, logger: logger, on: eventLoop)
    }

    /// 导出ES查询文档列表
    @inlinable
    public func describeSearchExportList(query: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSearchExportListResponse {
        try await self.describeSearchExportList(.init(query: query), region: region, logger: logger, on: eventLoop)
    }
}
