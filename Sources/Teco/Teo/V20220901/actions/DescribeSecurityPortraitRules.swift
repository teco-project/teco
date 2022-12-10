//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Teo {
    /// 查询Bot用户画像规则
    ///
    /// 查询Bot用户画像规则
    @inlinable
    public func describeSecurityPortraitRules(_ input: DescribeSecurityPortraitRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSecurityPortraitRulesResponse > {
        self.client.execute(action: "DescribeSecurityPortraitRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询Bot用户画像规则
    ///
    /// 查询Bot用户画像规则
    @inlinable
    public func describeSecurityPortraitRules(_ input: DescribeSecurityPortraitRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityPortraitRulesResponse {
        try await self.client.execute(action: "DescribeSecurityPortraitRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSecurityPortraitRules请求参数结构体
    public struct DescribeSecurityPortraitRulesRequest: TCRequestModel {
        /// 站点Id。当使用ZoneId和Entity时可不填写TemplateId，否则必须填写TemplateId。
        public let zoneId: String?
        
        /// 子域名/应用名。当使用ZoneId和Entity时可不填写TemplateId，否则必须填写TemplateId。
        public let entity: String?
        
        /// 模板Id。当使用模板Id时可不填ZoneId和Entity，否则必须填写ZoneId和Entity。
        public let templateId: String?
        
        public init (zoneId: String?, entity: String?, templateId: String?) {
            self.zoneId = zoneId
            self.entity = entity
            self.templateId = templateId
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case entity = "Entity"
            case templateId = "TemplateId"
        }
    }
    
    /// DescribeSecurityPortraitRules返回参数结构体
    public struct DescribeSecurityPortraitRulesResponse: TCResponseModel {
        /// 本次返回的规则数。
        public let count: Int64
        
        /// Bot用户画像规则。
        public let portraitManagedRuleDetails: [PortraitManagedRuleDetail]
        
        /// 总规则数。
        public let total: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case portraitManagedRuleDetails = "PortraitManagedRuleDetails"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
}