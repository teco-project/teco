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
    /// DescribeTemplates请求参数结构体
    public struct DescribeTemplatesRequest: TCPaginatedRequest {
        /// 应用相关信息。
        /// 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId必填。
        public let agent: Agent

        /// 模板唯一标识，查询单个模板时使用
        public let templateId: String?

        /// 查询内容：
        /// 0-模板列表及详情（默认），
        /// 1-仅模板列表
        public let contentType: Int64?

        /// 指定每页多少条数据，如果不传默认为20，单页最大100。
        public let limit: UInt64?

        /// 查询结果分页返回，此处指定第几页，如果不传默从第一页返回。页码从0开始，即首页为0。
        public let offset: UInt64?

        /// 是否返回所有组件信息。
        /// 默认false，只返回发起方控件；
        /// true，返回所有签署方控件
        public let queryAllComponents: Bool?

        /// 模糊搜索模板名称，最大长度200
        public let templateName: String?

        /// 是否获取模板预览链接，
        /// 默认false-不获取
        /// true-获取
        public let withPreviewUrl: Bool?

        /// 是否获取模板的PDF文件链接。
        /// 默认false-不获取
        /// true-获取
        /// 请联系客户经理开白后使用。
        public let withPdfUrl: Bool?

        /// 对应第三方应用平台企业的模板ID
        public let channelTemplateId: String?

        /// 操作者的信息
        @available(*, deprecated)
        public let `operator`: UserInfo? = nil

        public init(agent: Agent, templateId: String? = nil, contentType: Int64? = nil, limit: UInt64? = nil, offset: UInt64? = nil, queryAllComponents: Bool? = nil, templateName: String? = nil, withPreviewUrl: Bool? = nil, withPdfUrl: Bool? = nil, channelTemplateId: String? = nil) {
            self.agent = agent
            self.templateId = templateId
            self.contentType = contentType
            self.limit = limit
            self.offset = offset
            self.queryAllComponents = queryAllComponents
            self.templateName = templateName
            self.withPreviewUrl = withPreviewUrl
            self.withPdfUrl = withPdfUrl
            self.channelTemplateId = channelTemplateId
        }

        @available(*, deprecated, renamed: "init(agent:templateId:contentType:limit:offset:queryAllComponents:templateName:withPreviewUrl:withPdfUrl:channelTemplateId:)", message: "'operator' is deprecated in 'DescribeTemplatesRequest'. Setting this parameter has no effect.")
        public init(agent: Agent, templateId: String? = nil, contentType: Int64? = nil, limit: UInt64? = nil, offset: UInt64? = nil, queryAllComponents: Bool? = nil, templateName: String? = nil, withPreviewUrl: Bool? = nil, withPdfUrl: Bool? = nil, channelTemplateId: String? = nil, operator: UserInfo? = nil) {
            self.agent = agent
            self.templateId = templateId
            self.contentType = contentType
            self.limit = limit
            self.offset = offset
            self.queryAllComponents = queryAllComponents
            self.templateName = templateName
            self.withPreviewUrl = withPreviewUrl
            self.withPdfUrl = withPdfUrl
            self.channelTemplateId = channelTemplateId
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case templateId = "TemplateId"
            case contentType = "ContentType"
            case limit = "Limit"
            case offset = "Offset"
            case queryAllComponents = "QueryAllComponents"
            case templateName = "TemplateName"
            case withPreviewUrl = "WithPreviewUrl"
            case withPdfUrl = "WithPdfUrl"
            case channelTemplateId = "ChannelTemplateId"
            case `operator` = "Operator"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTemplatesResponse) -> DescribeTemplatesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(agent: self.agent, templateId: self.templateId, contentType: self.contentType, limit: self.limit, offset: (self.offset ?? 0) + response.limit, queryAllComponents: self.queryAllComponents, templateName: self.templateName, withPreviewUrl: self.withPreviewUrl, withPdfUrl: self.withPdfUrl, channelTemplateId: self.channelTemplateId)
        }
    }

    /// DescribeTemplates返回参数结构体
    public struct DescribeTemplatesResponse: TCPaginatedResponse {
        /// 模板列表
        public let templates: [TemplateInfo]

        /// 查询到的总数
        public let totalCount: Int64

        /// 每页多少条数据
        public let limit: UInt64

        /// 查询结果分页返回，此处指定第几页。页码从0开始，即首页为0。
        public let offset: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case templates = "Templates"
            case totalCount = "TotalCount"
            case limit = "Limit"
            case offset = "Offset"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TemplateInfo`` list from the paginated response.
        public func getItems() -> [TemplateInfo] {
            self.templates
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询模板信息列表
    ///
    /// 通过此接口（DescribeTemplates）查询该第三方平台子客企业在电子签拥有的有效模板，不包括第三方平台模板。
    ///
    /// > **适用场景**
    /// >
    /// >  该接口常用来配合“使用模板创建签署流程”接口作为前置的接口使用。
    /// >  一个模板通常会包含以下结构信息
    /// >- 模板基本信息
    /// >- 发起方参与信息Promoter、签署参与方 Recipients，后者会在模板发起合同时用于指定参与方
    /// >- 填写控件 Components
    /// >- 签署控件 SignComponents
    /// >- 生成模板的文件基础信息 FileInfos
    @inlinable
    public func describeTemplates(_ input: DescribeTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTemplatesResponse> {
        self.client.execute(action: "DescribeTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询模板信息列表
    ///
    /// 通过此接口（DescribeTemplates）查询该第三方平台子客企业在电子签拥有的有效模板，不包括第三方平台模板。
    ///
    /// > **适用场景**
    /// >
    /// >  该接口常用来配合“使用模板创建签署流程”接口作为前置的接口使用。
    /// >  一个模板通常会包含以下结构信息
    /// >- 模板基本信息
    /// >- 发起方参与信息Promoter、签署参与方 Recipients，后者会在模板发起合同时用于指定参与方
    /// >- 填写控件 Components
    /// >- 签署控件 SignComponents
    /// >- 生成模板的文件基础信息 FileInfos
    @inlinable
    public func describeTemplates(_ input: DescribeTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTemplatesResponse {
        try await self.client.execute(action: "DescribeTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询模板信息列表
    ///
    /// 通过此接口（DescribeTemplates）查询该第三方平台子客企业在电子签拥有的有效模板，不包括第三方平台模板。
    ///
    /// > **适用场景**
    /// >
    /// >  该接口常用来配合“使用模板创建签署流程”接口作为前置的接口使用。
    /// >  一个模板通常会包含以下结构信息
    /// >- 模板基本信息
    /// >- 发起方参与信息Promoter、签署参与方 Recipients，后者会在模板发起合同时用于指定参与方
    /// >- 填写控件 Components
    /// >- 签署控件 SignComponents
    /// >- 生成模板的文件基础信息 FileInfos
    @inlinable
    public func describeTemplates(agent: Agent, templateId: String? = nil, contentType: Int64? = nil, limit: UInt64? = nil, offset: UInt64? = nil, queryAllComponents: Bool? = nil, templateName: String? = nil, withPreviewUrl: Bool? = nil, withPdfUrl: Bool? = nil, channelTemplateId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTemplatesResponse> {
        self.describeTemplates(.init(agent: agent, templateId: templateId, contentType: contentType, limit: limit, offset: offset, queryAllComponents: queryAllComponents, templateName: templateName, withPreviewUrl: withPreviewUrl, withPdfUrl: withPdfUrl, channelTemplateId: channelTemplateId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询模板信息列表
    ///
    /// 通过此接口（DescribeTemplates）查询该第三方平台子客企业在电子签拥有的有效模板，不包括第三方平台模板。
    ///
    /// > **适用场景**
    /// >
    /// >  该接口常用来配合“使用模板创建签署流程”接口作为前置的接口使用。
    /// >  一个模板通常会包含以下结构信息
    /// >- 模板基本信息
    /// >- 发起方参与信息Promoter、签署参与方 Recipients，后者会在模板发起合同时用于指定参与方
    /// >- 填写控件 Components
    /// >- 签署控件 SignComponents
    /// >- 生成模板的文件基础信息 FileInfos
    @available(*, deprecated, renamed: "describeTemplates(agent:templateId:contentType:limit:offset:queryAllComponents:templateName:withPreviewUrl:withPdfUrl:channelTemplateId:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func describeTemplates(agent: Agent, templateId: String? = nil, contentType: Int64? = nil, limit: UInt64? = nil, offset: UInt64? = nil, queryAllComponents: Bool? = nil, templateName: String? = nil, withPreviewUrl: Bool? = nil, withPdfUrl: Bool? = nil, channelTemplateId: String? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTemplatesResponse> {
        self.describeTemplates(.init(agent: agent, templateId: templateId, contentType: contentType, limit: limit, offset: offset, queryAllComponents: queryAllComponents, templateName: templateName, withPreviewUrl: withPreviewUrl, withPdfUrl: withPdfUrl, channelTemplateId: channelTemplateId, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 查询模板信息列表
    ///
    /// 通过此接口（DescribeTemplates）查询该第三方平台子客企业在电子签拥有的有效模板，不包括第三方平台模板。
    ///
    /// > **适用场景**
    /// >
    /// >  该接口常用来配合“使用模板创建签署流程”接口作为前置的接口使用。
    /// >  一个模板通常会包含以下结构信息
    /// >- 模板基本信息
    /// >- 发起方参与信息Promoter、签署参与方 Recipients，后者会在模板发起合同时用于指定参与方
    /// >- 填写控件 Components
    /// >- 签署控件 SignComponents
    /// >- 生成模板的文件基础信息 FileInfos
    @inlinable
    public func describeTemplates(agent: Agent, templateId: String? = nil, contentType: Int64? = nil, limit: UInt64? = nil, offset: UInt64? = nil, queryAllComponents: Bool? = nil, templateName: String? = nil, withPreviewUrl: Bool? = nil, withPdfUrl: Bool? = nil, channelTemplateId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTemplatesResponse {
        try await self.describeTemplates(.init(agent: agent, templateId: templateId, contentType: contentType, limit: limit, offset: offset, queryAllComponents: queryAllComponents, templateName: templateName, withPreviewUrl: withPreviewUrl, withPdfUrl: withPdfUrl, channelTemplateId: channelTemplateId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询模板信息列表
    ///
    /// 通过此接口（DescribeTemplates）查询该第三方平台子客企业在电子签拥有的有效模板，不包括第三方平台模板。
    ///
    /// > **适用场景**
    /// >
    /// >  该接口常用来配合“使用模板创建签署流程”接口作为前置的接口使用。
    /// >  一个模板通常会包含以下结构信息
    /// >- 模板基本信息
    /// >- 发起方参与信息Promoter、签署参与方 Recipients，后者会在模板发起合同时用于指定参与方
    /// >- 填写控件 Components
    /// >- 签署控件 SignComponents
    /// >- 生成模板的文件基础信息 FileInfos
    @available(*, deprecated, renamed: "describeTemplates(agent:templateId:contentType:limit:offset:queryAllComponents:templateName:withPreviewUrl:withPdfUrl:channelTemplateId:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func describeTemplates(agent: Agent, templateId: String? = nil, contentType: Int64? = nil, limit: UInt64? = nil, offset: UInt64? = nil, queryAllComponents: Bool? = nil, templateName: String? = nil, withPreviewUrl: Bool? = nil, withPdfUrl: Bool? = nil, channelTemplateId: String? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTemplatesResponse {
        try await self.describeTemplates(.init(agent: agent, templateId: templateId, contentType: contentType, limit: limit, offset: offset, queryAllComponents: queryAllComponents, templateName: templateName, withPreviewUrl: withPreviewUrl, withPdfUrl: withPdfUrl, channelTemplateId: channelTemplateId, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 查询模板信息列表
    ///
    /// 通过此接口（DescribeTemplates）查询该第三方平台子客企业在电子签拥有的有效模板，不包括第三方平台模板。
    ///
    /// > **适用场景**
    /// >
    /// >  该接口常用来配合“使用模板创建签署流程”接口作为前置的接口使用。
    /// >  一个模板通常会包含以下结构信息
    /// >- 模板基本信息
    /// >- 发起方参与信息Promoter、签署参与方 Recipients，后者会在模板发起合同时用于指定参与方
    /// >- 填写控件 Components
    /// >- 签署控件 SignComponents
    /// >- 生成模板的文件基础信息 FileInfos
    @inlinable
    public func describeTemplatesPaginated(_ input: DescribeTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TemplateInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTemplates, logger: logger, on: eventLoop)
    }

    /// 查询模板信息列表
    ///
    /// 通过此接口（DescribeTemplates）查询该第三方平台子客企业在电子签拥有的有效模板，不包括第三方平台模板。
    ///
    /// > **适用场景**
    /// >
    /// >  该接口常用来配合“使用模板创建签署流程”接口作为前置的接口使用。
    /// >  一个模板通常会包含以下结构信息
    /// >- 模板基本信息
    /// >- 发起方参与信息Promoter、签署参与方 Recipients，后者会在模板发起合同时用于指定参与方
    /// >- 填写控件 Components
    /// >- 签署控件 SignComponents
    /// >- 生成模板的文件基础信息 FileInfos
    @inlinable @discardableResult
    public func describeTemplatesPaginated(_ input: DescribeTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询模板信息列表
    ///
    /// 通过此接口（DescribeTemplates）查询该第三方平台子客企业在电子签拥有的有效模板，不包括第三方平台模板。
    ///
    /// > **适用场景**
    /// >
    /// >  该接口常用来配合“使用模板创建签署流程”接口作为前置的接口使用。
    /// >  一个模板通常会包含以下结构信息
    /// >- 模板基本信息
    /// >- 发起方参与信息Promoter、签署参与方 Recipients，后者会在模板发起合同时用于指定参与方
    /// >- 填写控件 Components
    /// >- 签署控件 SignComponents
    /// >- 生成模板的文件基础信息 FileInfos
    ///
    /// - Returns: `AsyncSequence`s of ``TemplateInfo`` and ``DescribeTemplatesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTemplatesPaginator(_ input: DescribeTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTemplates, logger: logger, on: eventLoop)
    }
}
