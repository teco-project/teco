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
    /// CreateFlowApprovers请求参数结构体
    public struct CreateFlowApproversRequest: TCRequest {
        /// 执行本接口操作的员工信息。
        /// 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        public let `operator`: UserInfo

        /// 合同流程ID，为32位字符串。
        /// 建议开发者妥善保存此流程ID，以便于顺利进行后续操作。
        /// 可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。
        public let flowId: String

        /// 补充企业签署人信息。
        ///
        /// - 如果发起方指定的补充签署人是企业微信签署人（ApproverSource=WEWORKAPP），则需要提供企业微信UserId进行补充；
        /// - 如果不指定，则使用姓名和手机号进行补充。
        public let approvers: [FillApproverInfo]

        /// 在可定制的企业微信通知中，发起人可以根据具体需求进行自定义设置。
        public let initiator: String?

        /// 代理企业和员工的信息。
        /// 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        public let agent: Agent?

        /// 签署人信息补充方式
        ///
        /// - **0**: 补充或签人，支持补充多个企业经办签署人（默认）注: `不可补充个人签署人`
        /// - **1**: 补充动态签署人，可补充企业和个人签署人。注: `每个签署方节点签署人是唯一的，一个节点只支持传入一个签署人信息`
        public let fillApproverType: Int64?

        public init(operator: UserInfo, flowId: String, approvers: [FillApproverInfo], initiator: String? = nil, agent: Agent? = nil, fillApproverType: Int64? = nil) {
            self.operator = `operator`
            self.flowId = flowId
            self.approvers = approvers
            self.initiator = initiator
            self.agent = agent
            self.fillApproverType = fillApproverType
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case flowId = "FlowId"
            case approvers = "Approvers"
            case initiator = "Initiator"
            case agent = "Agent"
            case fillApproverType = "FillApproverType"
        }
    }

    /// CreateFlowApprovers返回参数结构体
    public struct CreateFlowApproversResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 补充签署流程签署人信息
    ///
    /// 适用场景：
    /// 当通过模板或文件发起合同时，若未指定企业签署人信息，则可调用此接口补充或添加签署人。同一签署人可补充多个员工作为或签署人，最终实际签署人取决于谁先领取合同完成签署。
    ///
    /// 限制条件：
    /// 1. 本企业（发起方企业）企业微信签署人仅支持通过企业微信UserId或姓名+手机号进行补充。
    /// 2. 本企业（发起方企业）非企业微信签署人仅支持通过姓名+手机号进行补充。
    /// 3. 他方企业仅支持通过姓名+手机号进行补充。
    @inlinable @discardableResult
    public func createFlowApprovers(_ input: CreateFlowApproversRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowApproversResponse> {
        self.client.execute(action: "CreateFlowApprovers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 补充签署流程签署人信息
    ///
    /// 适用场景：
    /// 当通过模板或文件发起合同时，若未指定企业签署人信息，则可调用此接口补充或添加签署人。同一签署人可补充多个员工作为或签署人，最终实际签署人取决于谁先领取合同完成签署。
    ///
    /// 限制条件：
    /// 1. 本企业（发起方企业）企业微信签署人仅支持通过企业微信UserId或姓名+手机号进行补充。
    /// 2. 本企业（发起方企业）非企业微信签署人仅支持通过姓名+手机号进行补充。
    /// 3. 他方企业仅支持通过姓名+手机号进行补充。
    @inlinable @discardableResult
    public func createFlowApprovers(_ input: CreateFlowApproversRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowApproversResponse {
        try await self.client.execute(action: "CreateFlowApprovers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 补充签署流程签署人信息
    ///
    /// 适用场景：
    /// 当通过模板或文件发起合同时，若未指定企业签署人信息，则可调用此接口补充或添加签署人。同一签署人可补充多个员工作为或签署人，最终实际签署人取决于谁先领取合同完成签署。
    ///
    /// 限制条件：
    /// 1. 本企业（发起方企业）企业微信签署人仅支持通过企业微信UserId或姓名+手机号进行补充。
    /// 2. 本企业（发起方企业）非企业微信签署人仅支持通过姓名+手机号进行补充。
    /// 3. 他方企业仅支持通过姓名+手机号进行补充。
    @inlinable @discardableResult
    public func createFlowApprovers(operator: UserInfo, flowId: String, approvers: [FillApproverInfo], initiator: String? = nil, agent: Agent? = nil, fillApproverType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowApproversResponse> {
        self.createFlowApprovers(.init(operator: `operator`, flowId: flowId, approvers: approvers, initiator: initiator, agent: agent, fillApproverType: fillApproverType), region: region, logger: logger, on: eventLoop)
    }

    /// 补充签署流程签署人信息
    ///
    /// 适用场景：
    /// 当通过模板或文件发起合同时，若未指定企业签署人信息，则可调用此接口补充或添加签署人。同一签署人可补充多个员工作为或签署人，最终实际签署人取决于谁先领取合同完成签署。
    ///
    /// 限制条件：
    /// 1. 本企业（发起方企业）企业微信签署人仅支持通过企业微信UserId或姓名+手机号进行补充。
    /// 2. 本企业（发起方企业）非企业微信签署人仅支持通过姓名+手机号进行补充。
    /// 3. 他方企业仅支持通过姓名+手机号进行补充。
    @inlinable @discardableResult
    public func createFlowApprovers(operator: UserInfo, flowId: String, approvers: [FillApproverInfo], initiator: String? = nil, agent: Agent? = nil, fillApproverType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowApproversResponse {
        try await self.createFlowApprovers(.init(operator: `operator`, flowId: flowId, approvers: approvers, initiator: initiator, agent: agent, fillApproverType: fillApproverType), region: region, logger: logger, on: eventLoop)
    }
}
