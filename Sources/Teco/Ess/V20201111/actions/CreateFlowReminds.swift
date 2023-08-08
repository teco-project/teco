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
    /// CreateFlowReminds请求参数结构体
    public struct CreateFlowRemindsRequest: TCRequestModel {
        /// 调用方用户信息，userId 必填
        public let `operator`: UserInfo

        /// 需要执行催办的签署流程id数组，最多100个
        public let flowIds: [String]

        /// 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
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

    /// CreateFlowReminds返回参数结构体
    public struct CreateFlowRemindsResponse: TCResponseModel {
        /// 催办合同详情列表
        public let remindFlowRecords: [RemindFlowRecords]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case remindFlowRecords = "RemindFlowRecords"
            case requestId = "RequestId"
        }
    }

    /// 合同催办
    ///
    /// 指定需要批量催办的签署流程Id，批量催办合同，最多100个; 接口失败后返回错误信息
    /// 注意:
    /// 该接口不可直接调用，请联系客户经理申请使用
    /// 仅能催办当前状态为“待签署”的签署人，且只能催办一次
    /// 发起合同时，签署人的NotifyType需设置为sms，否则无法催办
    @inlinable
    public func createFlowReminds(_ input: CreateFlowRemindsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowRemindsResponse> {
        self.client.execute(action: "CreateFlowReminds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 合同催办
    ///
    /// 指定需要批量催办的签署流程Id，批量催办合同，最多100个; 接口失败后返回错误信息
    /// 注意:
    /// 该接口不可直接调用，请联系客户经理申请使用
    /// 仅能催办当前状态为“待签署”的签署人，且只能催办一次
    /// 发起合同时，签署人的NotifyType需设置为sms，否则无法催办
    @inlinable
    public func createFlowReminds(_ input: CreateFlowRemindsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowRemindsResponse {
        try await self.client.execute(action: "CreateFlowReminds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 合同催办
    ///
    /// 指定需要批量催办的签署流程Id，批量催办合同，最多100个; 接口失败后返回错误信息
    /// 注意:
    /// 该接口不可直接调用，请联系客户经理申请使用
    /// 仅能催办当前状态为“待签署”的签署人，且只能催办一次
    /// 发起合同时，签署人的NotifyType需设置为sms，否则无法催办
    @inlinable
    public func createFlowReminds(operator: UserInfo, flowIds: [String], agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowRemindsResponse> {
        self.createFlowReminds(.init(operator: `operator`, flowIds: flowIds, agent: agent), region: region, logger: logger, on: eventLoop)
    }

    /// 合同催办
    ///
    /// 指定需要批量催办的签署流程Id，批量催办合同，最多100个; 接口失败后返回错误信息
    /// 注意:
    /// 该接口不可直接调用，请联系客户经理申请使用
    /// 仅能催办当前状态为“待签署”的签署人，且只能催办一次
    /// 发起合同时，签署人的NotifyType需设置为sms，否则无法催办
    @inlinable
    public func createFlowReminds(operator: UserInfo, flowIds: [String], agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowRemindsResponse {
        try await self.createFlowReminds(.init(operator: `operator`, flowIds: flowIds, agent: agent), region: region, logger: logger, on: eventLoop)
    }
}
