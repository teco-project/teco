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

extension Teo {
    /// ModifySecurityWafGroupPolicy请求参数结构体
    public struct ModifySecurityWafGroupPolicyRequest: TCRequestModel {
        /// 站点Id。当使用ZoneId和Entity时可不填写TemplateId，否则必须填写TemplateId。
        public let zoneId: String?

        /// 子域名。当使用ZoneId和Entity时可不填写TemplateId，否则必须填写TemplateId。
        public let entity: String?

        /// 总开关，取值有：
        /// <li>on：开启；</li>
        /// <li>off：关闭。</li>不填默认为上次的配置。
        public let `switch`: String?

        /// 规则等级，取值有：
        /// <li> loose：宽松；</li>
        /// <li> normal：正常；</li>
        /// <li> strict：严格；</li>
        /// <li> stricter：超严格；</li>
        /// <li> custom：自定义。</li>不填默认为上次的配置。
        public let level: String?

        /// 处置方式，取值有：
        /// <li> block：阻断；</li>
        /// <li> observe：观察。</li>不填默认为上次的配置。
        public let mode: String?

        /// 托管规则。不填默认为上次的配置。
        public let wafRules: WafRule?

        /// AI引擎模式。不填默认为上次的配置。
        public let aiRule: AiRule?

        /// 托管规则等级组。不填默认为上次的配置。
        public let wafGroups: [WafGroup]?

        /// 模板Id。当使用模板Id时可不填ZoneId和Entity，否则必须填写ZoneId和Entity。
        public let templateId: String?

        public init(zoneId: String? = nil, entity: String? = nil, switch: String? = nil, level: String? = nil, mode: String? = nil, wafRules: WafRule? = nil, aiRule: AiRule? = nil, wafGroups: [WafGroup]? = nil, templateId: String? = nil) {
            self.zoneId = zoneId
            self.entity = entity
            self.switch = `switch`
            self.level = level
            self.mode = mode
            self.wafRules = wafRules
            self.aiRule = aiRule
            self.wafGroups = wafGroups
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case entity = "Entity"
            case `switch` = "Switch"
            case level = "Level"
            case mode = "Mode"
            case wafRules = "WafRules"
            case aiRule = "AiRule"
            case wafGroups = "WafGroups"
            case templateId = "TemplateId"
        }
    }

    /// ModifySecurityWafGroupPolicy返回参数结构体
    public struct ModifySecurityWafGroupPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改安全配置托管规则
    @inlinable @discardableResult
    public func modifySecurityWafGroupPolicy(_ input: ModifySecurityWafGroupPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecurityWafGroupPolicyResponse> {
        self.client.execute(action: "ModifySecurityWafGroupPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改安全配置托管规则
    @inlinable @discardableResult
    public func modifySecurityWafGroupPolicy(_ input: ModifySecurityWafGroupPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecurityWafGroupPolicyResponse {
        try await self.client.execute(action: "ModifySecurityWafGroupPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改安全配置托管规则
    @inlinable @discardableResult
    public func modifySecurityWafGroupPolicy(zoneId: String? = nil, entity: String? = nil, switch: String? = nil, level: String? = nil, mode: String? = nil, wafRules: WafRule? = nil, aiRule: AiRule? = nil, wafGroups: [WafGroup]? = nil, templateId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecurityWafGroupPolicyResponse> {
        self.modifySecurityWafGroupPolicy(.init(zoneId: zoneId, entity: entity, switch: `switch`, level: level, mode: mode, wafRules: wafRules, aiRule: aiRule, wafGroups: wafGroups, templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改安全配置托管规则
    @inlinable @discardableResult
    public func modifySecurityWafGroupPolicy(zoneId: String? = nil, entity: String? = nil, switch: String? = nil, level: String? = nil, mode: String? = nil, wafRules: WafRule? = nil, aiRule: AiRule? = nil, wafGroups: [WafGroup]? = nil, templateId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecurityWafGroupPolicyResponse {
        try await self.modifySecurityWafGroupPolicy(.init(zoneId: zoneId, entity: entity, switch: `switch`, level: level, mode: mode, wafRules: wafRules, aiRule: aiRule, wafGroups: wafGroups, templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
