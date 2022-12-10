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
    /// 分页查询门神规则
    ///
    /// 分页查询门神规则
    @inlinable
    public func describeSecurityPolicyManagedRules(_ input: DescribeSecurityPolicyManagedRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSecurityPolicyManagedRulesResponse > {
        self.client.execute(action: "DescribeSecurityPolicyManagedRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 分页查询门神规则
    ///
    /// 分页查询门神规则
    @inlinable
    public func describeSecurityPolicyManagedRules(_ input: DescribeSecurityPolicyManagedRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityPolicyManagedRulesResponse {
        try await self.client.execute(action: "DescribeSecurityPolicyManagedRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSecurityPolicyManagedRules请求参数结构体
    public struct DescribeSecurityPolicyManagedRulesRequest: TCRequestModel {
        /// 一级域名
        public let zoneId: String
        
        /// 子域名/应用名
        public let entity: String
        
        /// 页数
        public let page: Int64
        
        /// 每页数量
        public let perPage: Int64
        
        public init (zoneId: String, entity: String, page: Int64, perPage: Int64) {
            self.zoneId = zoneId
            self.entity = entity
            self.page = page
            self.perPage = perPage
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case entity = "Entity"
            case page = "Page"
            case perPage = "PerPage"
        }
    }
    
    /// DescribeSecurityPolicyManagedRules返回参数结构体
    public struct DescribeSecurityPolicyManagedRulesResponse: TCResponseModel {
        /// 本次返回的规则数
        public let count: Int64
        
        /// 门神规则
        public let rules: [ManagedRule]
        
        /// 总规则数
        public let total: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case rules = "Rules"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
}