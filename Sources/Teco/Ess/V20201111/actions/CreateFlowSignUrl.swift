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
    /// CreateFlowSignUrl请求参数结构体
    public struct CreateFlowSignUrlRequest: TCRequest {
        /// 流程编号
        public let flowId: String

        /// 流程签署人列表，其中结构体的ApproverName，ApproverMobile和ApproverType必传，其他可不传，ApproverType目前只支持个人类型的签署人。
        ///
        /// 签署人只能有手写签名和时间类型的签署控件，其他类型的填写控件和签署控件暂时都未支持。
        public let flowApproverInfos: [FlowCreateApprover]

        /// 用户信息，此结构体UserId必填
        public let `operator`: UserInfo?

        /// 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
        public let agent: Agent?

        /// 机构信息，暂未开放
        @available(*, deprecated)
        public let organization: OrganizationInfo? = nil

        /// 签署完之后的H5页面的跳转链接，此链接支持http://和https://，最大长度1000个字符。
        public let jumpUrl: String?

        public init(flowId: String, flowApproverInfos: [FlowCreateApprover], operator: UserInfo? = nil, agent: Agent? = nil, jumpUrl: String? = nil) {
            self.flowId = flowId
            self.flowApproverInfos = flowApproverInfos
            self.operator = `operator`
            self.agent = agent
            self.jumpUrl = jumpUrl
        }

        @available(*, deprecated, renamed: "init(flowId:flowApproverInfos:operator:agent:jumpUrl:)", message: "'organization' is deprecated in 'CreateFlowSignUrlRequest'. Setting this parameter has no effect.")
        public init(flowId: String, flowApproverInfos: [FlowCreateApprover], operator: UserInfo? = nil, agent: Agent? = nil, organization: OrganizationInfo? = nil, jumpUrl: String? = nil) {
            self.flowId = flowId
            self.flowApproverInfos = flowApproverInfos
            self.operator = `operator`
            self.agent = agent
            self.jumpUrl = jumpUrl
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case flowApproverInfos = "FlowApproverInfos"
            case `operator` = "Operator"
            case agent = "Agent"
            case organization = "Organization"
            case jumpUrl = "JumpUrl"
        }
    }

    /// CreateFlowSignUrl返回参数结构体
    public struct CreateFlowSignUrlResponse: TCResponse {
        /// 签署人签署链接信息
        public let flowApproverUrlInfos: [FlowApproverUrlInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowApproverUrlInfos = "FlowApproverUrlInfos"
            case requestId = "RequestId"
        }
    }

    /// 创建个人用户H5签署链接
    ///
    /// 创建个人H5签署链接，请联系客户经理申请开通使用, 否则调用会返回失败
    ///
    /// 该接口用于发起合同后，生成个人签署人的签署链接, 暂时不支持企业端签署
    ///
    /// 注意：该接口目前签署人类型仅支持个人签署方（PERSON）
    ///
    /// 注意：该接口可生成签署链接的C端签署人必须仅有手写签名和时间类型的签署控件
    ///
    /// 注意：该接口返回的签署链接是用于APP集成的场景，支持APP打开或浏览器直接打开，不支持微信小程序嵌入。微信小程序请使用小程序跳转或半屏弹窗的方式
    @inlinable
    public func createFlowSignUrl(_ input: CreateFlowSignUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowSignUrlResponse> {
        self.client.execute(action: "CreateFlowSignUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建个人用户H5签署链接
    ///
    /// 创建个人H5签署链接，请联系客户经理申请开通使用, 否则调用会返回失败
    ///
    /// 该接口用于发起合同后，生成个人签署人的签署链接, 暂时不支持企业端签署
    ///
    /// 注意：该接口目前签署人类型仅支持个人签署方（PERSON）
    ///
    /// 注意：该接口可生成签署链接的C端签署人必须仅有手写签名和时间类型的签署控件
    ///
    /// 注意：该接口返回的签署链接是用于APP集成的场景，支持APP打开或浏览器直接打开，不支持微信小程序嵌入。微信小程序请使用小程序跳转或半屏弹窗的方式
    @inlinable
    public func createFlowSignUrl(_ input: CreateFlowSignUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowSignUrlResponse {
        try await self.client.execute(action: "CreateFlowSignUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建个人用户H5签署链接
    ///
    /// 创建个人H5签署链接，请联系客户经理申请开通使用, 否则调用会返回失败
    ///
    /// 该接口用于发起合同后，生成个人签署人的签署链接, 暂时不支持企业端签署
    ///
    /// 注意：该接口目前签署人类型仅支持个人签署方（PERSON）
    ///
    /// 注意：该接口可生成签署链接的C端签署人必须仅有手写签名和时间类型的签署控件
    ///
    /// 注意：该接口返回的签署链接是用于APP集成的场景，支持APP打开或浏览器直接打开，不支持微信小程序嵌入。微信小程序请使用小程序跳转或半屏弹窗的方式
    @inlinable
    public func createFlowSignUrl(flowId: String, flowApproverInfos: [FlowCreateApprover], operator: UserInfo? = nil, agent: Agent? = nil, jumpUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowSignUrlResponse> {
        self.createFlowSignUrl(.init(flowId: flowId, flowApproverInfos: flowApproverInfos, operator: `operator`, agent: agent, jumpUrl: jumpUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 创建个人用户H5签署链接
    ///
    /// 创建个人H5签署链接，请联系客户经理申请开通使用, 否则调用会返回失败
    ///
    /// 该接口用于发起合同后，生成个人签署人的签署链接, 暂时不支持企业端签署
    ///
    /// 注意：该接口目前签署人类型仅支持个人签署方（PERSON）
    ///
    /// 注意：该接口可生成签署链接的C端签署人必须仅有手写签名和时间类型的签署控件
    ///
    /// 注意：该接口返回的签署链接是用于APP集成的场景，支持APP打开或浏览器直接打开，不支持微信小程序嵌入。微信小程序请使用小程序跳转或半屏弹窗的方式
    @available(*, deprecated, renamed: "createFlowSignUrl(flowId:flowApproverInfos:operator:agent:jumpUrl:region:logger:on:)", message: "'organization' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func createFlowSignUrl(flowId: String, flowApproverInfos: [FlowCreateApprover], operator: UserInfo? = nil, agent: Agent? = nil, organization: OrganizationInfo? = nil, jumpUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowSignUrlResponse> {
        self.createFlowSignUrl(.init(flowId: flowId, flowApproverInfos: flowApproverInfos, operator: `operator`, agent: agent, organization: organization, jumpUrl: jumpUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 创建个人用户H5签署链接
    ///
    /// 创建个人H5签署链接，请联系客户经理申请开通使用, 否则调用会返回失败
    ///
    /// 该接口用于发起合同后，生成个人签署人的签署链接, 暂时不支持企业端签署
    ///
    /// 注意：该接口目前签署人类型仅支持个人签署方（PERSON）
    ///
    /// 注意：该接口可生成签署链接的C端签署人必须仅有手写签名和时间类型的签署控件
    ///
    /// 注意：该接口返回的签署链接是用于APP集成的场景，支持APP打开或浏览器直接打开，不支持微信小程序嵌入。微信小程序请使用小程序跳转或半屏弹窗的方式
    @inlinable
    public func createFlowSignUrl(flowId: String, flowApproverInfos: [FlowCreateApprover], operator: UserInfo? = nil, agent: Agent? = nil, jumpUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowSignUrlResponse {
        try await self.createFlowSignUrl(.init(flowId: flowId, flowApproverInfos: flowApproverInfos, operator: `operator`, agent: agent, jumpUrl: jumpUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 创建个人用户H5签署链接
    ///
    /// 创建个人H5签署链接，请联系客户经理申请开通使用, 否则调用会返回失败
    ///
    /// 该接口用于发起合同后，生成个人签署人的签署链接, 暂时不支持企业端签署
    ///
    /// 注意：该接口目前签署人类型仅支持个人签署方（PERSON）
    ///
    /// 注意：该接口可生成签署链接的C端签署人必须仅有手写签名和时间类型的签署控件
    ///
    /// 注意：该接口返回的签署链接是用于APP集成的场景，支持APP打开或浏览器直接打开，不支持微信小程序嵌入。微信小程序请使用小程序跳转或半屏弹窗的方式
    @available(*, deprecated, renamed: "createFlowSignUrl(flowId:flowApproverInfos:operator:agent:jumpUrl:region:logger:on:)", message: "'organization' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func createFlowSignUrl(flowId: String, flowApproverInfos: [FlowCreateApprover], operator: UserInfo? = nil, agent: Agent? = nil, organization: OrganizationInfo? = nil, jumpUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowSignUrlResponse {
        try await self.createFlowSignUrl(.init(flowId: flowId, flowApproverInfos: flowApproverInfos, operator: `operator`, agent: agent, organization: organization, jumpUrl: jumpUrl), region: region, logger: logger, on: eventLoop)
    }
}
