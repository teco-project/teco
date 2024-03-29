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

extension Bizlive {
    /// DescribeWorkers请求参数结构体
    public struct DescribeWorkersRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeWorkers返回参数结构体
    public struct DescribeWorkersResponse: TCResponse {
        /// 各个区域的机器情况
        public let regionDetail: [WorkerRegionInfo]

        /// 空闲机器总数量
        public let idle: UInt64

        /// 区域个数
        public let regionNum: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case regionDetail = "RegionDetail"
            case idle = "Idle"
            case regionNum = "RegionNum"
            case requestId = "RequestId"
        }
    }

    /// 查询空闲机器数量
    @inlinable
    public func describeWorkers(_ input: DescribeWorkersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkersResponse> {
        self.client.execute(action: "DescribeWorkers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询空闲机器数量
    @inlinable
    public func describeWorkers(_ input: DescribeWorkersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkersResponse {
        try await self.client.execute(action: "DescribeWorkers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询空闲机器数量
    @inlinable
    public func describeWorkers(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkersResponse> {
        self.describeWorkers(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询空闲机器数量
    @inlinable
    public func describeWorkers(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkersResponse {
        try await self.describeWorkers(.init(), region: region, logger: logger, on: eventLoop)
    }
}
