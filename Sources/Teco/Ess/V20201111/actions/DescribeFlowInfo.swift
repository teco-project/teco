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

import TecoCore

extension Ess {
    /// DescribeFlowInfo请求参数结构体
    public struct DescribeFlowInfoRequest: TCRequestModel {
        /// 需要查询的流程ID列表，限制最大100个
        public let flowIds: [String]

        /// 调用方用户信息
        public let `operator`: UserInfo?

        /// 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
        public let agent: Agent?

        public init(flowIds: [String], operator: UserInfo? = nil, agent: Agent? = nil) {
            self.flowIds = flowIds
            self.operator = `operator`
            self.agent = agent
        }

        enum CodingKeys: String, CodingKey {
            case flowIds = "FlowIds"
            case `operator` = "Operator"
            case agent = "Agent"
        }
    }

    /// DescribeFlowInfo返回参数结构体
    public struct DescribeFlowInfoResponse: TCResponseModel {
        /// 签署流程信息
        public let flowDetailInfos: [FlowDetailInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowDetailInfos = "FlowDetailInfos"
            case requestId = "RequestId"
        }
    }

    /// 查询合同详情
    ///
    /// 查询合同详情
    /// 适用场景：可用于主动查询某个合同详情信息。
    @inlinable
    public func describeFlowInfo(_ input: DescribeFlowInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlowInfoResponse> {
        self.client.execute(action: "DescribeFlowInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询合同详情
    ///
    /// 查询合同详情
    /// 适用场景：可用于主动查询某个合同详情信息。
    @inlinable
    public func describeFlowInfo(_ input: DescribeFlowInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowInfoResponse {
        try await self.client.execute(action: "DescribeFlowInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询合同详情
    ///
    /// 查询合同详情
    /// 适用场景：可用于主动查询某个合同详情信息。
    @inlinable
    public func describeFlowInfo(flowIds: [String], operator: UserInfo? = nil, agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlowInfoResponse> {
        self.describeFlowInfo(.init(flowIds: flowIds, operator: `operator`, agent: agent), region: region, logger: logger, on: eventLoop)
    }

    /// 查询合同详情
    ///
    /// 查询合同详情
    /// 适用场景：可用于主动查询某个合同详情信息。
    @inlinable
    public func describeFlowInfo(flowIds: [String], operator: UserInfo? = nil, agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowInfoResponse {
        try await self.describeFlowInfo(.init(flowIds: flowIds, operator: `operator`, agent: agent), region: region, logger: logger, on: eventLoop)
    }
}
