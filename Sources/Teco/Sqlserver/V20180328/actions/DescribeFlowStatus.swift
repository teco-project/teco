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

extension Sqlserver {
    /// DescribeFlowStatus请求参数结构体
    public struct DescribeFlowStatusRequest: TCRequestModel {
        /// 流程ID
        public let flowId: Int64

        public init(flowId: Int64) {
            self.flowId = flowId
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
        }
    }

    /// DescribeFlowStatus返回参数结构体
    public struct DescribeFlowStatusResponse: TCResponseModel {
        /// 流程状态，0：成功，1：失败，2：运行中
        public let status: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 查询流程状态
    ///
    /// 本接口(DescribeFlowStatus)用于查询流程状态。
    @inlinable
    public func describeFlowStatus(_ input: DescribeFlowStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlowStatusResponse> {
        self.client.execute(action: "DescribeFlowStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询流程状态
    ///
    /// 本接口(DescribeFlowStatus)用于查询流程状态。
    @inlinable
    public func describeFlowStatus(_ input: DescribeFlowStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowStatusResponse {
        try await self.client.execute(action: "DescribeFlowStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询流程状态
    ///
    /// 本接口(DescribeFlowStatus)用于查询流程状态。
    @inlinable
    public func describeFlowStatus(flowId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlowStatusResponse> {
        let input = DescribeFlowStatusRequest(flowId: flowId)
        return self.client.execute(action: "DescribeFlowStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询流程状态
    ///
    /// 本接口(DescribeFlowStatus)用于查询流程状态。
    @inlinable
    public func describeFlowStatus(flowId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowStatusResponse {
        let input = DescribeFlowStatusRequest(flowId: flowId)
        return try await self.client.execute(action: "DescribeFlowStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
