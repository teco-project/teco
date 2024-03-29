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

extension Cynosdb {
    /// DescribeFlow请求参数结构体
    public struct DescribeFlowRequest: TCRequest {
        /// 任务流ID
        public let flowId: Int64

        public init(flowId: Int64) {
            self.flowId = flowId
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
        }
    }

    /// DescribeFlow返回参数结构体
    public struct DescribeFlowResponse: TCResponse {
        /// 任务流状态。0-成功，1-失败，2-处理中
        public let status: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 查询任务流信息
    ///
    /// 本接口（DescribeFlow）用于查询任务流信息
    @inlinable
    public func describeFlow(_ input: DescribeFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlowResponse> {
        self.client.execute(action: "DescribeFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务流信息
    ///
    /// 本接口（DescribeFlow）用于查询任务流信息
    @inlinable
    public func describeFlow(_ input: DescribeFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowResponse {
        try await self.client.execute(action: "DescribeFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务流信息
    ///
    /// 本接口（DescribeFlow）用于查询任务流信息
    @inlinable
    public func describeFlow(flowId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlowResponse> {
        self.describeFlow(.init(flowId: flowId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务流信息
    ///
    /// 本接口（DescribeFlow）用于查询任务流信息
    @inlinable
    public func describeFlow(flowId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowResponse {
        try await self.describeFlow(.init(flowId: flowId), region: region, logger: logger, on: eventLoop)
    }
}
