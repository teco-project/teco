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
    /// ChannelCreateEmbedWebUrl请求参数结构体
    public struct ChannelCreateEmbedWebUrlRequest: TCRequest {
        /// 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        public let agent: Agent

        /// 要生成WEB嵌入界面的类型, 可以选择的值如下:
        ///
        /// - CREATE_SEAL: 生成创建印章的嵌入页面
        /// - CREATE_TEMPLATE：生成创建模板的嵌入页面
        /// - MODIFY_TEMPLATE：生成修改模板的嵌入页面
        /// - PREVIEW_TEMPLATE：生成预览模板的嵌入页面
        /// - PREVIEW_FLOW：生成预览合同文档的嵌入页面
        /// - PREVIEW_FLOW_DETAIL：生成预览合同详情的嵌入页面
        /// - PREVIEW_SEAL_LIST：生成预览印章列表的嵌入页面
        /// - PREVIEW_SEAL_DETAIL：生成预览印章详情的嵌入页面
        /// - EXTEND_SERVICE：生成扩展服务的嵌入页面
        public let embedType: String

        /// WEB嵌入的业务资源ID
        ///
        /// - 当EmbedType取值MODIFY_TEMPLATE，PREVIEW_TEMPLATE时需要填写模板id作为BusinessId
        /// - 当EmbedType取值PREVIEW_FLOW，PREVIEW_FLOW_DETAIL时需要填写合同id作为BusinessId
        /// - 当EmbedType取值PREVIEW_SEAL_DETAIL需要填写印章id作为BusinessId
        public let businessId: String?

        /// 是否隐藏控件，只有预览模板时生效
        public let hiddenComponents: Bool?

        /// 渠道操作者信息
        @available(*, deprecated)
        public let `operator`: UserInfo? = nil

        public init(agent: Agent, embedType: String, businessId: String? = nil, hiddenComponents: Bool? = nil) {
            self.agent = agent
            self.embedType = embedType
            self.businessId = businessId
            self.hiddenComponents = hiddenComponents
        }

        @available(*, deprecated, renamed: "init(agent:embedType:businessId:hiddenComponents:)", message: "'operator' is deprecated in 'ChannelCreateEmbedWebUrlRequest'. Setting this parameter has no effect.")
        public init(agent: Agent, embedType: String, businessId: String? = nil, hiddenComponents: Bool? = nil, operator: UserInfo? = nil) {
            self.agent = agent
            self.embedType = embedType
            self.businessId = businessId
            self.hiddenComponents = hiddenComponents
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case embedType = "EmbedType"
            case businessId = "BusinessId"
            case hiddenComponents = "HiddenComponents"
            case `operator` = "Operator"
        }
    }

    /// ChannelCreateEmbedWebUrl返回参数结构体
    public struct ChannelCreateEmbedWebUrlResponse: TCResponse {
        /// 嵌入的web链接
        public let webUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case webUrl = "WebUrl"
            case requestId = "RequestId"
        }
    }

    /// 获取常规模块web页面
    ///
    /// 本接口（ChannelCreateEmbedWebUrl）用于创建常规模块嵌入web的链接
    /// 本接口支持创建：创建印章，创建模板，修改模板，预览模板，预览合同流程的web链接
    /// 进入web连接后与当前控制台操作保持一致
    @inlinable
    public func channelCreateEmbedWebUrl(_ input: ChannelCreateEmbedWebUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateEmbedWebUrlResponse> {
        self.client.execute(action: "ChannelCreateEmbedWebUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取常规模块web页面
    ///
    /// 本接口（ChannelCreateEmbedWebUrl）用于创建常规模块嵌入web的链接
    /// 本接口支持创建：创建印章，创建模板，修改模板，预览模板，预览合同流程的web链接
    /// 进入web连接后与当前控制台操作保持一致
    @inlinable
    public func channelCreateEmbedWebUrl(_ input: ChannelCreateEmbedWebUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateEmbedWebUrlResponse {
        try await self.client.execute(action: "ChannelCreateEmbedWebUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取常规模块web页面
    ///
    /// 本接口（ChannelCreateEmbedWebUrl）用于创建常规模块嵌入web的链接
    /// 本接口支持创建：创建印章，创建模板，修改模板，预览模板，预览合同流程的web链接
    /// 进入web连接后与当前控制台操作保持一致
    @inlinable
    public func channelCreateEmbedWebUrl(agent: Agent, embedType: String, businessId: String? = nil, hiddenComponents: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateEmbedWebUrlResponse> {
        self.channelCreateEmbedWebUrl(.init(agent: agent, embedType: embedType, businessId: businessId, hiddenComponents: hiddenComponents), region: region, logger: logger, on: eventLoop)
    }

    /// 获取常规模块web页面
    ///
    /// 本接口（ChannelCreateEmbedWebUrl）用于创建常规模块嵌入web的链接
    /// 本接口支持创建：创建印章，创建模板，修改模板，预览模板，预览合同流程的web链接
    /// 进入web连接后与当前控制台操作保持一致
    @available(*, deprecated, renamed: "channelCreateEmbedWebUrl(agent:embedType:businessId:hiddenComponents:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func channelCreateEmbedWebUrl(agent: Agent, embedType: String, businessId: String? = nil, hiddenComponents: Bool? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateEmbedWebUrlResponse> {
        self.channelCreateEmbedWebUrl(.init(agent: agent, embedType: embedType, businessId: businessId, hiddenComponents: hiddenComponents, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 获取常规模块web页面
    ///
    /// 本接口（ChannelCreateEmbedWebUrl）用于创建常规模块嵌入web的链接
    /// 本接口支持创建：创建印章，创建模板，修改模板，预览模板，预览合同流程的web链接
    /// 进入web连接后与当前控制台操作保持一致
    @inlinable
    public func channelCreateEmbedWebUrl(agent: Agent, embedType: String, businessId: String? = nil, hiddenComponents: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateEmbedWebUrlResponse {
        try await self.channelCreateEmbedWebUrl(.init(agent: agent, embedType: embedType, businessId: businessId, hiddenComponents: hiddenComponents), region: region, logger: logger, on: eventLoop)
    }

    /// 获取常规模块web页面
    ///
    /// 本接口（ChannelCreateEmbedWebUrl）用于创建常规模块嵌入web的链接
    /// 本接口支持创建：创建印章，创建模板，修改模板，预览模板，预览合同流程的web链接
    /// 进入web连接后与当前控制台操作保持一致
    @available(*, deprecated, renamed: "channelCreateEmbedWebUrl(agent:embedType:businessId:hiddenComponents:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func channelCreateEmbedWebUrl(agent: Agent, embedType: String, businessId: String? = nil, hiddenComponents: Bool? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateEmbedWebUrlResponse {
        try await self.channelCreateEmbedWebUrl(.init(agent: agent, embedType: embedType, businessId: businessId, hiddenComponents: hiddenComponents, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
