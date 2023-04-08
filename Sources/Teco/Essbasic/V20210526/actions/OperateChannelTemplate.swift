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

extension Essbasic {
    /// OperateChannelTemplate请求参数结构体
    public struct OperateChannelTemplateRequest: TCRequestModel {
        /// 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        public let agent: Agent

        /// 操作类型，查询:"SELECT"，删除:"DELETE"，更新:"UPDATE"
        public let operateType: String

        /// 渠道方模板库模板唯一标识
        public let templateId: String

        /// 合作企业方第三方机构唯一标识数据，支持多个， 用","进行分隔
        public let proxyOrganizationOpenIds: String?

        /// 模板可见性, 全部可见-"all", 部分可见-"part"
        public let authTag: String?

        /// 操作者的信息
        public let `operator`: UserInfo?

        public init(agent: Agent, operateType: String, templateId: String, proxyOrganizationOpenIds: String? = nil, authTag: String? = nil, operator: UserInfo? = nil) {
            self.agent = agent
            self.operateType = operateType
            self.templateId = templateId
            self.proxyOrganizationOpenIds = proxyOrganizationOpenIds
            self.authTag = authTag
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case operateType = "OperateType"
            case templateId = "TemplateId"
            case proxyOrganizationOpenIds = "ProxyOrganizationOpenIds"
            case authTag = "AuthTag"
            case `operator` = "Operator"
        }
    }

    /// OperateChannelTemplate返回参数结构体
    public struct OperateChannelTemplateResponse: TCResponseModel {
        /// 腾讯电子签颁发给渠道的应用ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appId: String?

        /// 渠道方模板库模板唯一标识
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let templateId: String?

        /// 全部成功-"all-success",部分成功-"part-success", 全部失败-"fail"失败的会在FailMessageList中展示
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let operateResult: String?

        /// 模板可见性, 全部可见-"all", 部分可见-"part"
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let authTag: String?

        /// 合作企业方第三方机构唯一标识数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let proxyOrganizationOpenIds: [String]?

        /// 操作失败信息数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failMessageList: [AuthFailMessage]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case appId = "AppId"
            case templateId = "TemplateId"
            case operateResult = "OperateResult"
            case authTag = "AuthTag"
            case proxyOrganizationOpenIds = "ProxyOrganizationOpenIds"
            case failMessageList = "FailMessageList"
            case requestId = "RequestId"
        }
    }

    /// 操作渠道模板
    ///
    /// 此接口（OperateChannelTemplate）用于针对渠道模板库中的模板对子客企业可见性的查询和设置，不会直接分配渠道模板给子客企业。
    /// 1、OperateType=select时：
    /// 查询渠道模板库
    /// 2、OperateType=update或者delete时：
    /// 对子客企业进行模板库中模板可见性的修改、删除操作。
    @inlinable
    public func operateChannelTemplate(_ input: OperateChannelTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OperateChannelTemplateResponse> {
        self.client.execute(action: "OperateChannelTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 操作渠道模板
    ///
    /// 此接口（OperateChannelTemplate）用于针对渠道模板库中的模板对子客企业可见性的查询和设置，不会直接分配渠道模板给子客企业。
    /// 1、OperateType=select时：
    /// 查询渠道模板库
    /// 2、OperateType=update或者delete时：
    /// 对子客企业进行模板库中模板可见性的修改、删除操作。
    @inlinable
    public func operateChannelTemplate(_ input: OperateChannelTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OperateChannelTemplateResponse {
        try await self.client.execute(action: "OperateChannelTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 操作渠道模板
    ///
    /// 此接口（OperateChannelTemplate）用于针对渠道模板库中的模板对子客企业可见性的查询和设置，不会直接分配渠道模板给子客企业。
    /// 1、OperateType=select时：
    /// 查询渠道模板库
    /// 2、OperateType=update或者delete时：
    /// 对子客企业进行模板库中模板可见性的修改、删除操作。
    @inlinable
    public func operateChannelTemplate(agent: Agent, operateType: String, templateId: String, proxyOrganizationOpenIds: String? = nil, authTag: String? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OperateChannelTemplateResponse> {
        self.operateChannelTemplate(.init(agent: agent, operateType: operateType, templateId: templateId, proxyOrganizationOpenIds: proxyOrganizationOpenIds, authTag: authTag, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 操作渠道模板
    ///
    /// 此接口（OperateChannelTemplate）用于针对渠道模板库中的模板对子客企业可见性的查询和设置，不会直接分配渠道模板给子客企业。
    /// 1、OperateType=select时：
    /// 查询渠道模板库
    /// 2、OperateType=update或者delete时：
    /// 对子客企业进行模板库中模板可见性的修改、删除操作。
    @inlinable
    public func operateChannelTemplate(agent: Agent, operateType: String, templateId: String, proxyOrganizationOpenIds: String? = nil, authTag: String? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OperateChannelTemplateResponse {
        try await self.operateChannelTemplate(.init(agent: agent, operateType: operateType, templateId: templateId, proxyOrganizationOpenIds: proxyOrganizationOpenIds, authTag: authTag, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
