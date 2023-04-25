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

extension Rum {
    /// DescribeData请求参数结构体
    public struct DescribeDataRequest: TCRequestModel {
        /// 查询字符串
        public let query: String

        /// 项目ID
        public let id: Int64

        public init(query: String, id: Int64) {
            self.query = query
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case query = "Query"
            case id = "ID"
        }
    }

    /// DescribeData返回参数结构体
    public struct DescribeDataResponse: TCResponseModel {
        /// 返回字符串
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取QueryData
    ///
    /// 转发monitor查询
    @inlinable
    public func describeData(_ input: DescribeDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataResponse> {
        self.client.execute(action: "DescribeData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取QueryData
    ///
    /// 转发monitor查询
    @inlinable
    public func describeData(_ input: DescribeDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataResponse {
        try await self.client.execute(action: "DescribeData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取QueryData
    ///
    /// 转发monitor查询
    @inlinable
    public func describeData(query: String, id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataResponse> {
        self.describeData(.init(query: query, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 获取QueryData
    ///
    /// 转发monitor查询
    @inlinable
    public func describeData(query: String, id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataResponse {
        try await self.describeData(.init(query: query, id: id), region: region, logger: logger, on: eventLoop)
    }
}
