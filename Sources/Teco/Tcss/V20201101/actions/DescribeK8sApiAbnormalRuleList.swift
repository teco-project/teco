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

extension Tcss {
    /// 查询k8sapi异常请求规则列表
    @inlinable
    public func describeK8sApiAbnormalRuleList(_ input: DescribeK8sApiAbnormalRuleListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeK8sApiAbnormalRuleListResponse > {
        self.client.execute(action: "DescribeK8sApiAbnormalRuleList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询k8sapi异常请求规则列表
    @inlinable
    public func describeK8sApiAbnormalRuleList(_ input: DescribeK8sApiAbnormalRuleListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeK8sApiAbnormalRuleListResponse {
        try await self.client.execute(action: "DescribeK8sApiAbnormalRuleList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeK8sApiAbnormalRuleList请求参数结构体
    public struct DescribeK8sApiAbnormalRuleListRequest: TCRequestModel {
        /// 过滤条件。
        /// <li>RuleType - string  - 是否必填: 否 -规则类型</li>
        /// <li>Status - string  - 是否必填: 否 -状态</li>
        public let filters: [RunTimeFilters]?
        
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 排序方式
        public let order: String?
        
        /// 排序字段。
        /// <li>UpdateTime - string  - 是否必填: 否 -最后更新时间</li>
        /// <li>EffectClusterCount - string  - 是否必填: 否 -影响集群数</li>
        public let by: String?
        
        public init (filters: [RunTimeFilters]?, limit: UInt64?, offset: UInt64?, order: String?, by: String?) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }
        
        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }
    }
    
    /// DescribeK8sApiAbnormalRuleList返回参数结构体
    public struct DescribeK8sApiAbnormalRuleListResponse: TCResponseModel {
        /// 规则列表
        public let list: [K8sApiAbnormalRuleListItem]
        
        /// 总数量
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}
