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

extension Essbasic {
    /// ChannelCreateEmbedWebUrl请求参数结构体
    public struct ChannelCreateEmbedWebUrlRequest: TCRequestModel {
        /// WEB嵌入资源类型，取值范围：CREATE_SEAL创建印章，CREATE_TEMPLATE创建模板，MODIFY_TEMPLATE修改模板，PREVIEW_TEMPLATE预览模板，PREVIEW_FLOW预览流程
        public let embedType: String

        /// 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 必填。
        public let agent: Agent

        /// 渠道操作者信息
        public let `operator`: UserInfo?

        /// WEB嵌入的业务资源ID，EmbedType取值MODIFY_TEMPLATE或PREVIEW_TEMPLATE或 PREVIEW_FLOW时BusinessId必填
        public let businessId: String?

        /// 是否隐藏控件，只有预览模板时生效
        public let hiddenComponents: Bool?

        public init(embedType: String, agent: Agent, operator: UserInfo? = nil, businessId: String? = nil, hiddenComponents: Bool? = nil) {
            self.embedType = embedType
            self.agent = agent
            self.operator = `operator`
            self.businessId = businessId
            self.hiddenComponents = hiddenComponents
        }

        enum CodingKeys: String, CodingKey {
            case embedType = "EmbedType"
            case agent = "Agent"
            case `operator` = "Operator"
            case businessId = "BusinessId"
            case hiddenComponents = "HiddenComponents"
        }
    }

    /// ChannelCreateEmbedWebUrl返回参数结构体
    public struct ChannelCreateEmbedWebUrlResponse: TCResponseModel {
        /// 嵌入的web链接
        public let webUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case webUrl = "WebUrl"
            case requestId = "RequestId"
        }
    }

    /// 创建嵌入web的链接
    ///
    /// 本接口（ChannelCreateEmbedWebUrl）用于创建嵌入web的链接
    /// 本接口支持创建：创建印章，创建模板，修改模板，预览模板，预览合同流程的web链接
    /// 进入web连接后与当前控制台操作保持一致
    @inlinable
    public func channelCreateEmbedWebUrl(_ input: ChannelCreateEmbedWebUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateEmbedWebUrlResponse> {
        self.client.execute(action: "ChannelCreateEmbedWebUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建嵌入web的链接
    ///
    /// 本接口（ChannelCreateEmbedWebUrl）用于创建嵌入web的链接
    /// 本接口支持创建：创建印章，创建模板，修改模板，预览模板，预览合同流程的web链接
    /// 进入web连接后与当前控制台操作保持一致
    @inlinable
    public func channelCreateEmbedWebUrl(_ input: ChannelCreateEmbedWebUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateEmbedWebUrlResponse {
        try await self.client.execute(action: "ChannelCreateEmbedWebUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建嵌入web的链接
    ///
    /// 本接口（ChannelCreateEmbedWebUrl）用于创建嵌入web的链接
    /// 本接口支持创建：创建印章，创建模板，修改模板，预览模板，预览合同流程的web链接
    /// 进入web连接后与当前控制台操作保持一致
    @inlinable
    public func channelCreateEmbedWebUrl(embedType: String, agent: Agent, operator: UserInfo? = nil, businessId: String? = nil, hiddenComponents: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateEmbedWebUrlResponse> {
        self.channelCreateEmbedWebUrl(.init(embedType: embedType, agent: agent, operator: `operator`, businessId: businessId, hiddenComponents: hiddenComponents), region: region, logger: logger, on: eventLoop)
    }

    /// 创建嵌入web的链接
    ///
    /// 本接口（ChannelCreateEmbedWebUrl）用于创建嵌入web的链接
    /// 本接口支持创建：创建印章，创建模板，修改模板，预览模板，预览合同流程的web链接
    /// 进入web连接后与当前控制台操作保持一致
    @inlinable
    public func channelCreateEmbedWebUrl(embedType: String, agent: Agent, operator: UserInfo? = nil, businessId: String? = nil, hiddenComponents: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateEmbedWebUrlResponse {
        try await self.channelCreateEmbedWebUrl(.init(embedType: embedType, agent: agent, operator: `operator`, businessId: businessId, hiddenComponents: hiddenComponents), region: region, logger: logger, on: eventLoop)
    }
}