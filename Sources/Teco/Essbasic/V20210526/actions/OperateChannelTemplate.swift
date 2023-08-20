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
    /// OperateChannelTemplate请求参数结构体
    public struct OperateChannelTemplateRequest: TCRequest {
        /// 应用相关信息。
        /// 此接口Agent.AppId必填。
        public let agent: Agent

        /// 操作类型，
        /// 查询:"SELECT"，
        /// 删除:"DELETE"，
        /// 更新:"UPDATE"
        public let operateType: String

        /// 第三方应用平台模板库模板唯一标识
        public let templateId: String

        /// 合作企业方第三方机构唯一标识数据.
        /// 支持多个， 用","进行分隔
        public let proxyOrganizationOpenIds: String?

        /// 模板可见性,
        /// 全部可见-"all",
        ///  部分可见-"part"
        public let authTag: String?

        /// 当OperateType=UPDATE时，可以通过设置此字段对模板启停用状态进行操作。
        /// 若此字段值为0，则不会修改模板Available，
        /// 1为启用模板，
        /// 2为停用模板。
        /// 启用后模板可以正常领取。停用后，推送方式为【自动推送】的模板则无法被子客使用，推送方式为【手动领取】的模板则无法出现被模板库被子客领用。如果Available更新失败，会直接返回错误。
        public let available: Int64?

        /// 暂未开放
        @available(*, deprecated)
        public let `operator`: UserInfo? = nil

        public init(agent: Agent, operateType: String, templateId: String, proxyOrganizationOpenIds: String? = nil, authTag: String? = nil, available: Int64? = nil) {
            self.agent = agent
            self.operateType = operateType
            self.templateId = templateId
            self.proxyOrganizationOpenIds = proxyOrganizationOpenIds
            self.authTag = authTag
            self.available = available
        }

        @available(*, deprecated, renamed: "init(agent:operateType:templateId:proxyOrganizationOpenIds:authTag:available:)", message: "'operator' is deprecated in 'OperateChannelTemplateRequest'. Setting this parameter has no effect.")
        public init(agent: Agent, operateType: String, templateId: String, proxyOrganizationOpenIds: String? = nil, authTag: String? = nil, available: Int64? = nil, operator: UserInfo? = nil) {
            self.agent = agent
            self.operateType = operateType
            self.templateId = templateId
            self.proxyOrganizationOpenIds = proxyOrganizationOpenIds
            self.authTag = authTag
            self.available = available
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case operateType = "OperateType"
            case templateId = "TemplateId"
            case proxyOrganizationOpenIds = "ProxyOrganizationOpenIds"
            case authTag = "AuthTag"
            case available = "Available"
            case `operator` = "Operator"
        }
    }

    /// OperateChannelTemplate返回参数结构体
    public struct OperateChannelTemplateResponse: TCResponse {
        /// 腾讯电子签颁发给第三方应用平台的应用ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appId: String?

        /// 第三方应用平台模板库模板唯一标识
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let templateId: String?

        /// 描述模板可见性更改的结果，和参数中Available无关。
        /// 全部成功-"all-success",
        /// 部分成功-"part-success",
        /// 全部失败-"fail"，失败的会在FailMessageList中展示。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let operateResult: String?

        /// 模板可见性,
        /// 全部可见-"all",
        /// 部分可见-"part"
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

    /// 操作第三方应用平台企业模板
    ///
    /// 此接口（OperateChannelTemplate）用于针对第三方应用平台模板库中的模板对子客企业可见性的查询和设置。
    ///
    /// > **使用场景**
    /// >
    /// >  1：查询 OperateType=SELECT
    /// > - 查询第三方应用平台模板库的可见性以及授权的子客列表。
    /// >
    /// >  2：修改部分子客授权 OperateType=UPDATE
    /// > - 对子客企业进行模板库中模板可见性的进行修改操作。
    /// >- 当模板未发布时，可以修改可见性AuthTag（part/all），当模板发布后，不可做此修改
    /// > - 若模板已发布且可见性AuthTag是part，可以通过ProxyOrganizationOpenIds增加子客的授权范围。如果是自动领取的模板，增加授权范围后会自动下发。
    /// >
    /// >  3：取消部分子客授权 OperateType=DELETE
    /// > - 对子客企业进行模板库中模板可见性的进行删除操作。
    /// > - 主要对于手动领取的模板，去除授权后子客在模板库中看不到，就无法再领取了。但是已经领取过成为自有模板的不会同步删除。
    /// > - 对于自动领取的模板，由于已经下发，更改授权不会影响。
    /// > - 如果要同步删除子客自有模板库中的模板，请使用OperateType=UPDATE+Available参数处理。
    @inlinable
    public func operateChannelTemplate(_ input: OperateChannelTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OperateChannelTemplateResponse> {
        self.client.execute(action: "OperateChannelTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 操作第三方应用平台企业模板
    ///
    /// 此接口（OperateChannelTemplate）用于针对第三方应用平台模板库中的模板对子客企业可见性的查询和设置。
    ///
    /// > **使用场景**
    /// >
    /// >  1：查询 OperateType=SELECT
    /// > - 查询第三方应用平台模板库的可见性以及授权的子客列表。
    /// >
    /// >  2：修改部分子客授权 OperateType=UPDATE
    /// > - 对子客企业进行模板库中模板可见性的进行修改操作。
    /// >- 当模板未发布时，可以修改可见性AuthTag（part/all），当模板发布后，不可做此修改
    /// > - 若模板已发布且可见性AuthTag是part，可以通过ProxyOrganizationOpenIds增加子客的授权范围。如果是自动领取的模板，增加授权范围后会自动下发。
    /// >
    /// >  3：取消部分子客授权 OperateType=DELETE
    /// > - 对子客企业进行模板库中模板可见性的进行删除操作。
    /// > - 主要对于手动领取的模板，去除授权后子客在模板库中看不到，就无法再领取了。但是已经领取过成为自有模板的不会同步删除。
    /// > - 对于自动领取的模板，由于已经下发，更改授权不会影响。
    /// > - 如果要同步删除子客自有模板库中的模板，请使用OperateType=UPDATE+Available参数处理。
    @inlinable
    public func operateChannelTemplate(_ input: OperateChannelTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OperateChannelTemplateResponse {
        try await self.client.execute(action: "OperateChannelTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 操作第三方应用平台企业模板
    ///
    /// 此接口（OperateChannelTemplate）用于针对第三方应用平台模板库中的模板对子客企业可见性的查询和设置。
    ///
    /// > **使用场景**
    /// >
    /// >  1：查询 OperateType=SELECT
    /// > - 查询第三方应用平台模板库的可见性以及授权的子客列表。
    /// >
    /// >  2：修改部分子客授权 OperateType=UPDATE
    /// > - 对子客企业进行模板库中模板可见性的进行修改操作。
    /// >- 当模板未发布时，可以修改可见性AuthTag（part/all），当模板发布后，不可做此修改
    /// > - 若模板已发布且可见性AuthTag是part，可以通过ProxyOrganizationOpenIds增加子客的授权范围。如果是自动领取的模板，增加授权范围后会自动下发。
    /// >
    /// >  3：取消部分子客授权 OperateType=DELETE
    /// > - 对子客企业进行模板库中模板可见性的进行删除操作。
    /// > - 主要对于手动领取的模板，去除授权后子客在模板库中看不到，就无法再领取了。但是已经领取过成为自有模板的不会同步删除。
    /// > - 对于自动领取的模板，由于已经下发，更改授权不会影响。
    /// > - 如果要同步删除子客自有模板库中的模板，请使用OperateType=UPDATE+Available参数处理。
    @inlinable
    public func operateChannelTemplate(agent: Agent, operateType: String, templateId: String, proxyOrganizationOpenIds: String? = nil, authTag: String? = nil, available: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OperateChannelTemplateResponse> {
        self.operateChannelTemplate(.init(agent: agent, operateType: operateType, templateId: templateId, proxyOrganizationOpenIds: proxyOrganizationOpenIds, authTag: authTag, available: available), region: region, logger: logger, on: eventLoop)
    }

    /// 操作第三方应用平台企业模板
    ///
    /// 此接口（OperateChannelTemplate）用于针对第三方应用平台模板库中的模板对子客企业可见性的查询和设置。
    ///
    /// > **使用场景**
    /// >
    /// >  1：查询 OperateType=SELECT
    /// > - 查询第三方应用平台模板库的可见性以及授权的子客列表。
    /// >
    /// >  2：修改部分子客授权 OperateType=UPDATE
    /// > - 对子客企业进行模板库中模板可见性的进行修改操作。
    /// >- 当模板未发布时，可以修改可见性AuthTag（part/all），当模板发布后，不可做此修改
    /// > - 若模板已发布且可见性AuthTag是part，可以通过ProxyOrganizationOpenIds增加子客的授权范围。如果是自动领取的模板，增加授权范围后会自动下发。
    /// >
    /// >  3：取消部分子客授权 OperateType=DELETE
    /// > - 对子客企业进行模板库中模板可见性的进行删除操作。
    /// > - 主要对于手动领取的模板，去除授权后子客在模板库中看不到，就无法再领取了。但是已经领取过成为自有模板的不会同步删除。
    /// > - 对于自动领取的模板，由于已经下发，更改授权不会影响。
    /// > - 如果要同步删除子客自有模板库中的模板，请使用OperateType=UPDATE+Available参数处理。
    @available(*, deprecated, renamed: "operateChannelTemplate(agent:operateType:templateId:proxyOrganizationOpenIds:authTag:available:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func operateChannelTemplate(agent: Agent, operateType: String, templateId: String, proxyOrganizationOpenIds: String? = nil, authTag: String? = nil, available: Int64? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OperateChannelTemplateResponse> {
        self.operateChannelTemplate(.init(agent: agent, operateType: operateType, templateId: templateId, proxyOrganizationOpenIds: proxyOrganizationOpenIds, authTag: authTag, available: available, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 操作第三方应用平台企业模板
    ///
    /// 此接口（OperateChannelTemplate）用于针对第三方应用平台模板库中的模板对子客企业可见性的查询和设置。
    ///
    /// > **使用场景**
    /// >
    /// >  1：查询 OperateType=SELECT
    /// > - 查询第三方应用平台模板库的可见性以及授权的子客列表。
    /// >
    /// >  2：修改部分子客授权 OperateType=UPDATE
    /// > - 对子客企业进行模板库中模板可见性的进行修改操作。
    /// >- 当模板未发布时，可以修改可见性AuthTag（part/all），当模板发布后，不可做此修改
    /// > - 若模板已发布且可见性AuthTag是part，可以通过ProxyOrganizationOpenIds增加子客的授权范围。如果是自动领取的模板，增加授权范围后会自动下发。
    /// >
    /// >  3：取消部分子客授权 OperateType=DELETE
    /// > - 对子客企业进行模板库中模板可见性的进行删除操作。
    /// > - 主要对于手动领取的模板，去除授权后子客在模板库中看不到，就无法再领取了。但是已经领取过成为自有模板的不会同步删除。
    /// > - 对于自动领取的模板，由于已经下发，更改授权不会影响。
    /// > - 如果要同步删除子客自有模板库中的模板，请使用OperateType=UPDATE+Available参数处理。
    @inlinable
    public func operateChannelTemplate(agent: Agent, operateType: String, templateId: String, proxyOrganizationOpenIds: String? = nil, authTag: String? = nil, available: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OperateChannelTemplateResponse {
        try await self.operateChannelTemplate(.init(agent: agent, operateType: operateType, templateId: templateId, proxyOrganizationOpenIds: proxyOrganizationOpenIds, authTag: authTag, available: available), region: region, logger: logger, on: eventLoop)
    }

    /// 操作第三方应用平台企业模板
    ///
    /// 此接口（OperateChannelTemplate）用于针对第三方应用平台模板库中的模板对子客企业可见性的查询和设置。
    ///
    /// > **使用场景**
    /// >
    /// >  1：查询 OperateType=SELECT
    /// > - 查询第三方应用平台模板库的可见性以及授权的子客列表。
    /// >
    /// >  2：修改部分子客授权 OperateType=UPDATE
    /// > - 对子客企业进行模板库中模板可见性的进行修改操作。
    /// >- 当模板未发布时，可以修改可见性AuthTag（part/all），当模板发布后，不可做此修改
    /// > - 若模板已发布且可见性AuthTag是part，可以通过ProxyOrganizationOpenIds增加子客的授权范围。如果是自动领取的模板，增加授权范围后会自动下发。
    /// >
    /// >  3：取消部分子客授权 OperateType=DELETE
    /// > - 对子客企业进行模板库中模板可见性的进行删除操作。
    /// > - 主要对于手动领取的模板，去除授权后子客在模板库中看不到，就无法再领取了。但是已经领取过成为自有模板的不会同步删除。
    /// > - 对于自动领取的模板，由于已经下发，更改授权不会影响。
    /// > - 如果要同步删除子客自有模板库中的模板，请使用OperateType=UPDATE+Available参数处理。
    @available(*, deprecated, renamed: "operateChannelTemplate(agent:operateType:templateId:proxyOrganizationOpenIds:authTag:available:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func operateChannelTemplate(agent: Agent, operateType: String, templateId: String, proxyOrganizationOpenIds: String? = nil, authTag: String? = nil, available: Int64? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OperateChannelTemplateResponse {
        try await self.operateChannelTemplate(.init(agent: agent, operateType: operateType, templateId: templateId, proxyOrganizationOpenIds: proxyOrganizationOpenIds, authTag: authTag, available: available, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
