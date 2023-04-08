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
    /// DescribeFlowBriefs请求参数结构体
    public struct DescribeFlowBriefsRequest: TCRequestModel {
        /// 调用方用户信息，userId 必填
        public let `operator`: UserInfo

        /// 需要查询的流程ID列表，限制最大20个
        public let flowIds: [String]

        /// 应用相关信息
        public let agent: Agent?

        public init(operator: UserInfo, flowIds: [String], agent: Agent? = nil) {
            self.operator = `operator`
            self.flowIds = flowIds
            self.agent = agent
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case flowIds = "FlowIds"
            case agent = "Agent"
        }
    }

    /// DescribeFlowBriefs返回参数结构体
    public struct DescribeFlowBriefsResponse: TCResponseModel {
        /// 流程列表
        public let flowBriefs: [FlowBrief]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowBriefs = "FlowBriefs"
            case requestId = "RequestId"
        }
    }

    /// 查询流程摘要
    ///
    /// 查询流程摘要
    /// 适用场景：可用于主动查询某个合同流程的签署状态信息。可以配合回调通知使用。
    /// 日调用量默认10W
    @inlinable
    public func describeFlowBriefs(_ input: DescribeFlowBriefsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlowBriefsResponse> {
        self.client.execute(action: "DescribeFlowBriefs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询流程摘要
    ///
    /// 查询流程摘要
    /// 适用场景：可用于主动查询某个合同流程的签署状态信息。可以配合回调通知使用。
    /// 日调用量默认10W
    @inlinable
    public func describeFlowBriefs(_ input: DescribeFlowBriefsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowBriefsResponse {
        try await self.client.execute(action: "DescribeFlowBriefs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询流程摘要
    ///
    /// 查询流程摘要
    /// 适用场景：可用于主动查询某个合同流程的签署状态信息。可以配合回调通知使用。
    /// 日调用量默认10W
    @inlinable
    public func describeFlowBriefs(operator: UserInfo, flowIds: [String], agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlowBriefsResponse> {
        self.describeFlowBriefs(.init(operator: `operator`, flowIds: flowIds, agent: agent), region: region, logger: logger, on: eventLoop)
    }

    /// 查询流程摘要
    ///
    /// 查询流程摘要
    /// 适用场景：可用于主动查询某个合同流程的签署状态信息。可以配合回调通知使用。
    /// 日调用量默认10W
    @inlinable
    public func describeFlowBriefs(operator: UserInfo, flowIds: [String], agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowBriefsResponse {
        try await self.describeFlowBriefs(.init(operator: `operator`, flowIds: flowIds, agent: agent), region: region, logger: logger, on: eventLoop)
    }
}
