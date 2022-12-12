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

extension Cwp {
    /// DescribeIgnoreRuleEffectHostList请求参数结构体
    public struct DescribeIgnoreRuleEffectHostListRequest: TCRequestModel {
        /// 分页参数 最大100条
        public let limit: UInt64
        
        /// 分页参数
        public let offset: UInt64
        
        /// 检测项id
        public let ruleId: UInt64
        
        /// 过滤条件。
        /// <li>AliasName- String- 主机别名</li>
        public let filters: [Filters]?
        
        /// 主机标签名
        public let tagNames: [String]?
        
        public init (limit: UInt64, offset: UInt64, ruleId: UInt64, filters: [Filters]? = nil, tagNames: [String]? = nil) {
            self.limit = limit
            self.offset = offset
            self.ruleId = ruleId
            self.filters = filters
            self.tagNames = tagNames
        }
        
        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case ruleId = "RuleId"
            case filters = "Filters"
            case tagNames = "TagNames"
        }
    }
    
    /// DescribeIgnoreRuleEffectHostList返回参数结构体
    public struct DescribeIgnoreRuleEffectHostListResponse: TCResponseModel {
        /// 忽略检测项影响主机列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ignoreRuleEffectHostList: [IgnoreRuleEffectHostInfo]?
        
        /// 分页查询记录总数
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case ignoreRuleEffectHostList = "IgnoreRuleEffectHostList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 查询忽略检测项影响主机列表
    ///
    /// 根据检测项id与筛选条件查询忽略检测项影响主机列表信息
    @inlinable
    public func describeIgnoreRuleEffectHostList(_ input: DescribeIgnoreRuleEffectHostListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeIgnoreRuleEffectHostListResponse > {
        self.client.execute(action: "DescribeIgnoreRuleEffectHostList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询忽略检测项影响主机列表
    ///
    /// 根据检测项id与筛选条件查询忽略检测项影响主机列表信息
    @inlinable
    public func describeIgnoreRuleEffectHostList(_ input: DescribeIgnoreRuleEffectHostListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIgnoreRuleEffectHostListResponse {
        try await self.client.execute(action: "DescribeIgnoreRuleEffectHostList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
