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

extension Cwp {
    /// DescribeIndexList请求参数结构体
    public struct DescribeIndexListRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeIndexList返回参数结构体
    public struct DescribeIndexListResponse: TCResponseModel {
        /// ES 索引信息
        public let data: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取索引列表
    @inlinable
    public func describeIndexList(_ input: DescribeIndexListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIndexListResponse> {
        self.client.execute(action: "DescribeIndexList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取索引列表
    @inlinable
    public func describeIndexList(_ input: DescribeIndexListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIndexListResponse {
        try await self.client.execute(action: "DescribeIndexList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取索引列表
    @inlinable
    public func describeIndexList(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIndexListResponse> {
        self.describeIndexList(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取索引列表
    @inlinable
    public func describeIndexList(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIndexListResponse {
        try await self.describeIndexList(.init(), region: region, logger: logger, on: eventLoop)
    }
}
