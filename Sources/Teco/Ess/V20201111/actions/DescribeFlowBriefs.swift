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

extension Ess {
    /// DescribeFlowBriefs请求参数结构体
    public struct DescribeFlowBriefsRequest: TCRequest {
        /// 执行本接口操作的员工信息。
        /// 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        public let `operator`: UserInfo

        /// 查询的合同流程ID列表最多支持100个流程ID。
        /// 如果某个合同流程ID不存在，系统会跳过此ID的查询，继续查询剩余存在的合同流程。
        ///
        /// 可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。
        public let flowIds: [String]

        /// 代理企业和员工的信息。
        /// 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
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
    public struct DescribeFlowBriefsResponse: TCResponse {
        /// 合同流程基础信息列表，包含流程的名称、状态、创建日期等基本信息。
        /// 注：`与入参 FlowIds 的顺序可能存在不一致的情况。`
        public let flowBriefs: [FlowBrief]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowBriefs = "FlowBriefs"
            case requestId = "RequestId"
        }
    }

    /// 查询流程基础信息
    ///
    /// 查询流程基础信息
    /// 适用场景：可用于主动查询某个合同流程的签署状态信息。可以配合回调通知使用。
    ///
    /// 注: `每个企业限制日调用量限制：100W，当日超过此限制后再调用接口返回错误`
    @inlinable
    public func describeFlowBriefs(_ input: DescribeFlowBriefsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlowBriefsResponse> {
        self.client.execute(action: "DescribeFlowBriefs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询流程基础信息
    ///
    /// 查询流程基础信息
    /// 适用场景：可用于主动查询某个合同流程的签署状态信息。可以配合回调通知使用。
    ///
    /// 注: `每个企业限制日调用量限制：100W，当日超过此限制后再调用接口返回错误`
    @inlinable
    public func describeFlowBriefs(_ input: DescribeFlowBriefsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowBriefsResponse {
        try await self.client.execute(action: "DescribeFlowBriefs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询流程基础信息
    ///
    /// 查询流程基础信息
    /// 适用场景：可用于主动查询某个合同流程的签署状态信息。可以配合回调通知使用。
    ///
    /// 注: `每个企业限制日调用量限制：100W，当日超过此限制后再调用接口返回错误`
    @inlinable
    public func describeFlowBriefs(operator: UserInfo, flowIds: [String], agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlowBriefsResponse> {
        self.describeFlowBriefs(.init(operator: `operator`, flowIds: flowIds, agent: agent), region: region, logger: logger, on: eventLoop)
    }

    /// 查询流程基础信息
    ///
    /// 查询流程基础信息
    /// 适用场景：可用于主动查询某个合同流程的签署状态信息。可以配合回调通知使用。
    ///
    /// 注: `每个企业限制日调用量限制：100W，当日超过此限制后再调用接口返回错误`
    @inlinable
    public func describeFlowBriefs(operator: UserInfo, flowIds: [String], agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowBriefsResponse {
        try await self.describeFlowBriefs(.init(operator: `operator`, flowIds: flowIds, agent: agent), region: region, logger: logger, on: eventLoop)
    }
}
