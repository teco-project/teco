//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Essbasic {
    /// CreateFlowsByTemplates请求参数结构体
    public struct CreateFlowsByTemplatesRequest: TCRequestModel {
        /// 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        public let agent: Agent

        /// 多个合同（签署流程）信息，最多支持20个
        public let flowInfos: [FlowInfo]

        /// 是否为预览模式；默认为false，即非预览模式，此时发起合同并返回FlowIds；若为预览模式，不会发起合同，会返回PreviewUrls；
        /// 预览链接有效期300秒；
        /// 同时，如果预览的文件中指定了动态表格控件，需要进行异步合成；此时此接口返回的是合成前的文档预览链接，而合成完成后的文档预览链接会通过：回调通知的方式、或使用返回的TaskInfo中的TaskId通过ChannelGetTaskResultApi接口查询；
        public let needPreview: Bool?

        /// 预览链接类型 默认:0-文件流, 1- H5链接 注意:此参数在NeedPreview 为true 时有效,
        public let previewType: Int64?

        /// 操作者的信息
        public let `operator`: UserInfo?

        public init(agent: Agent, flowInfos: [FlowInfo], needPreview: Bool? = nil, previewType: Int64? = nil, operator: UserInfo? = nil) {
            self.agent = agent
            self.flowInfos = flowInfos
            self.needPreview = needPreview
            self.previewType = previewType
            self.`operator` = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case flowInfos = "FlowInfos"
            case needPreview = "NeedPreview"
            case previewType = "PreviewType"
            case `operator` = "Operator"
        }
    }

    /// CreateFlowsByTemplates返回参数结构体
    public struct CreateFlowsByTemplatesResponse: TCResponseModel {
        /// 多个合同ID
        public let flowIds: [String]

        /// 渠道的业务信息，限制1024字符
        public let customerData: [String]

        /// 创建消息，对应多个合同ID，
        /// 成功为“”,创建失败则对应失败消息
        public let errorMessages: [String]

        /// 预览模式下返回的预览文件url数组
        public let previewUrls: [String]

        /// 复杂文档合成任务（如，包含动态表格的预览任务）的任务信息数组；
        /// 如果文档需要异步合成，此字段会返回该异步任务的任务信息，后续可以通过ChannelGetTaskResultApi接口查询任务详情；
        public let taskInfos: [TaskInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowIds = "FlowIds"
            case customerData = "CustomerData"
            case errorMessages = "ErrorMessages"
            case previewUrls = "PreviewUrls"
            case taskInfos = "TaskInfos"
            case requestId = "RequestId"
        }
    }

    /// 使用多个模板批量创建签署流程
    ///
    /// 接口（CreateFlowsByTemplates）用于使用多个模板批量创建签署流程。当前可批量发起合同（签署流程）数量最大为20个。
    /// 如若在模板中配置了动态表格, 上传的附件必须为A4大小
    /// 合同发起人必须在电子签已经进行实名。
    @inlinable
    public func createFlowsByTemplates(_ input: CreateFlowsByTemplatesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateFlowsByTemplatesResponse > {
        self.client.execute(action: "CreateFlowsByTemplates", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 使用多个模板批量创建签署流程
    ///
    /// 接口（CreateFlowsByTemplates）用于使用多个模板批量创建签署流程。当前可批量发起合同（签署流程）数量最大为20个。
    /// 如若在模板中配置了动态表格, 上传的附件必须为A4大小
    /// 合同发起人必须在电子签已经进行实名。
    @inlinable
    public func createFlowsByTemplates(_ input: CreateFlowsByTemplatesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowsByTemplatesResponse {
        try await self.client.execute(action: "CreateFlowsByTemplates", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 使用多个模板批量创建签署流程
    ///
    /// 接口（CreateFlowsByTemplates）用于使用多个模板批量创建签署流程。当前可批量发起合同（签署流程）数量最大为20个。
    /// 如若在模板中配置了动态表格, 上传的附件必须为A4大小
    /// 合同发起人必须在电子签已经进行实名。
    @inlinable
    public func createFlowsByTemplates(agent: Agent, flowInfos: [FlowInfo], needPreview: Bool? = nil, previewType: Int64? = nil, operator: UserInfo? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateFlowsByTemplatesResponse > {
        self.createFlowsByTemplates(CreateFlowsByTemplatesRequest(agent: agent, flowInfos: flowInfos, needPreview: needPreview, previewType: previewType, operator: `operator`), logger: logger, on: eventLoop)
    }

    /// 使用多个模板批量创建签署流程
    ///
    /// 接口（CreateFlowsByTemplates）用于使用多个模板批量创建签署流程。当前可批量发起合同（签署流程）数量最大为20个。
    /// 如若在模板中配置了动态表格, 上传的附件必须为A4大小
    /// 合同发起人必须在电子签已经进行实名。
    @inlinable
    public func createFlowsByTemplates(agent: Agent, flowInfos: [FlowInfo], needPreview: Bool? = nil, previewType: Int64? = nil, operator: UserInfo? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowsByTemplatesResponse {
        try await self.createFlowsByTemplates(CreateFlowsByTemplatesRequest(agent: agent, flowInfos: flowInfos, needPreview: needPreview, previewType: previewType, operator: `operator`), logger: logger, on: eventLoop)
    }
}
