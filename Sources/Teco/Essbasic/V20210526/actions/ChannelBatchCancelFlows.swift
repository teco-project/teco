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

extension Essbasic {
    /// ChannelBatchCancelFlows请求参数结构体
    public struct ChannelBatchCancelFlowsRequest: TCRequestModel {
        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        public let agent: Agent

        /// 签署流程Id数组，最多100个，超过100不处理
        public let flowIds: [String]

        /// 撤销理由,不超过200个字符
        public let cancelMessage: String?

        /// 撤销理由自定义格式；选项：
        ///
        /// - 0 默认格式
        /// - 1 只保留身份信息：展示为【发起方】
        /// - 2 保留身份信息+企业名称：展示为【发起方xxx公司】
        /// - 3 保留身份信息+企业名称+经办人名称：展示为【发起方xxxx公司-经办人姓名】
        public let cancelMessageFormat: Int64?

        /// 暂未开放
        public let `operator`: UserInfo?

        public init(agent: Agent, flowIds: [String], cancelMessage: String? = nil, cancelMessageFormat: Int64? = nil, operator: UserInfo? = nil) {
            self.agent = agent
            self.flowIds = flowIds
            self.cancelMessage = cancelMessage
            self.cancelMessageFormat = cancelMessageFormat
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case flowIds = "FlowIds"
            case cancelMessage = "CancelMessage"
            case cancelMessageFormat = "CancelMessageFormat"
            case `operator` = "Operator"
        }
    }

    /// ChannelBatchCancelFlows返回参数结构体
    public struct ChannelBatchCancelFlowsResponse: TCResponseModel {
        /// 签署流程批量撤销失败原因，错误信息与流程Id一一对应，成功为“”,失败则对应失败消息
        public let failMessages: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case failMessages = "FailMessages"
            case requestId = "RequestId"
        }
    }

    /// 根据签署流程id批量撤销合同
    ///
    /// 指定需要批量撤销的签署流程Id，批量撤销合同
    /// 客户指定需要撤销的签署流程Id，最多100个，超过100不处理；
    ///
    /// 可以撤回：未全部签署完成
    ///  不可以撤回：已全部签署完成、已拒签、已过期、已撤回、拒绝填写、已解除等合同状态。
    ///
    /// **满足撤销条件的合同会发起异步撤销流程，不满足撤销条件的合同返回失败原因。**
    ///
    /// **合同撤销成功后，会通过合同状态为 CANCEL 的回调消息通知调用方 [具体可参考回调消息](https://qian.tencent.com/developers/scenes/partner/callback_data_types#-%E5%90%88%E5%90%8C%E7%8A%B6%E6%80%81%E9%80%9A%E7%9F%A5---flowstatuschange)**
    ///
    /// **注意:
    /// 能撤回合同的只能是合同的发起人或者发起企业的超管、法人**
    @inlinable
    public func channelBatchCancelFlows(_ input: ChannelBatchCancelFlowsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelBatchCancelFlowsResponse> {
        self.client.execute(action: "ChannelBatchCancelFlows", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据签署流程id批量撤销合同
    ///
    /// 指定需要批量撤销的签署流程Id，批量撤销合同
    /// 客户指定需要撤销的签署流程Id，最多100个，超过100不处理；
    ///
    /// 可以撤回：未全部签署完成
    ///  不可以撤回：已全部签署完成、已拒签、已过期、已撤回、拒绝填写、已解除等合同状态。
    ///
    /// **满足撤销条件的合同会发起异步撤销流程，不满足撤销条件的合同返回失败原因。**
    ///
    /// **合同撤销成功后，会通过合同状态为 CANCEL 的回调消息通知调用方 [具体可参考回调消息](https://qian.tencent.com/developers/scenes/partner/callback_data_types#-%E5%90%88%E5%90%8C%E7%8A%B6%E6%80%81%E9%80%9A%E7%9F%A5---flowstatuschange)**
    ///
    /// **注意:
    /// 能撤回合同的只能是合同的发起人或者发起企业的超管、法人**
    @inlinable
    public func channelBatchCancelFlows(_ input: ChannelBatchCancelFlowsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelBatchCancelFlowsResponse {
        try await self.client.execute(action: "ChannelBatchCancelFlows", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据签署流程id批量撤销合同
    ///
    /// 指定需要批量撤销的签署流程Id，批量撤销合同
    /// 客户指定需要撤销的签署流程Id，最多100个，超过100不处理；
    ///
    /// 可以撤回：未全部签署完成
    ///  不可以撤回：已全部签署完成、已拒签、已过期、已撤回、拒绝填写、已解除等合同状态。
    ///
    /// **满足撤销条件的合同会发起异步撤销流程，不满足撤销条件的合同返回失败原因。**
    ///
    /// **合同撤销成功后，会通过合同状态为 CANCEL 的回调消息通知调用方 [具体可参考回调消息](https://qian.tencent.com/developers/scenes/partner/callback_data_types#-%E5%90%88%E5%90%8C%E7%8A%B6%E6%80%81%E9%80%9A%E7%9F%A5---flowstatuschange)**
    ///
    /// **注意:
    /// 能撤回合同的只能是合同的发起人或者发起企业的超管、法人**
    @inlinable
    public func channelBatchCancelFlows(agent: Agent, flowIds: [String], cancelMessage: String? = nil, cancelMessageFormat: Int64? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelBatchCancelFlowsResponse> {
        self.channelBatchCancelFlows(.init(agent: agent, flowIds: flowIds, cancelMessage: cancelMessage, cancelMessageFormat: cancelMessageFormat, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 根据签署流程id批量撤销合同
    ///
    /// 指定需要批量撤销的签署流程Id，批量撤销合同
    /// 客户指定需要撤销的签署流程Id，最多100个，超过100不处理；
    ///
    /// 可以撤回：未全部签署完成
    ///  不可以撤回：已全部签署完成、已拒签、已过期、已撤回、拒绝填写、已解除等合同状态。
    ///
    /// **满足撤销条件的合同会发起异步撤销流程，不满足撤销条件的合同返回失败原因。**
    ///
    /// **合同撤销成功后，会通过合同状态为 CANCEL 的回调消息通知调用方 [具体可参考回调消息](https://qian.tencent.com/developers/scenes/partner/callback_data_types#-%E5%90%88%E5%90%8C%E7%8A%B6%E6%80%81%E9%80%9A%E7%9F%A5---flowstatuschange)**
    ///
    /// **注意:
    /// 能撤回合同的只能是合同的发起人或者发起企业的超管、法人**
    @inlinable
    public func channelBatchCancelFlows(agent: Agent, flowIds: [String], cancelMessage: String? = nil, cancelMessageFormat: Int64? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelBatchCancelFlowsResponse {
        try await self.channelBatchCancelFlows(.init(agent: agent, flowIds: flowIds, cancelMessage: cancelMessage, cancelMessageFormat: cancelMessageFormat, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
