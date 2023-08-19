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

extension Solar {
    /// DescribeProjectStock请求参数结构体
    public struct DescribeProjectStockRequest: TCRequest {
        /// 子项目id
        public let subProjectId: String

        public init(subProjectId: String) {
            self.subProjectId = subProjectId
        }

        enum CodingKeys: String, CodingKey {
            case subProjectId = "SubProjectId"
        }
    }

    /// DescribeProjectStock返回参数结构体
    public struct DescribeProjectStockResponse: TCResponse {
        /// 项目库存列表
        public let projectStocks: [ProjectStock]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case projectStocks = "ProjectStocks"
            case requestId = "RequestId"
        }
    }

    /// 项目库存详情
    @inlinable
    public func describeProjectStock(_ input: DescribeProjectStockRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectStockResponse> {
        self.client.execute(action: "DescribeProjectStock", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 项目库存详情
    @inlinable
    public func describeProjectStock(_ input: DescribeProjectStockRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectStockResponse {
        try await self.client.execute(action: "DescribeProjectStock", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 项目库存详情
    @inlinable
    public func describeProjectStock(subProjectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectStockResponse> {
        self.describeProjectStock(.init(subProjectId: subProjectId), region: region, logger: logger, on: eventLoop)
    }

    /// 项目库存详情
    @inlinable
    public func describeProjectStock(subProjectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectStockResponse {
        try await self.describeProjectStock(.init(subProjectId: subProjectId), region: region, logger: logger, on: eventLoop)
    }
}
