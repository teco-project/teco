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

extension Tke {
    /// 获取聚合规则列表，包含关联集群内的资源
    ///
    /// 获取聚合规则列表，包含关联集群内crd资源创建的record rule
    @inlinable
    public func describePrometheusRecordRules(_ input: DescribePrometheusRecordRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePrometheusRecordRulesResponse > {
        self.client.execute(action: "DescribePrometheusRecordRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取聚合规则列表，包含关联集群内的资源
    ///
    /// 获取聚合规则列表，包含关联集群内crd资源创建的record rule
    @inlinable
    public func describePrometheusRecordRules(_ input: DescribePrometheusRecordRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusRecordRulesResponse {
        try await self.client.execute(action: "DescribePrometheusRecordRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribePrometheusRecordRules请求参数结构体
    public struct DescribePrometheusRecordRulesRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String
        
        /// 分页
        public let offset: UInt64?
        
        /// 分页
        public let limit: UInt64?
        
        /// 过滤
        public let filters: [Filter]?
        
        public init (instanceId: String, offset: UInt64?, limit: UInt64?, filters: [Filter]?) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }
    }
    
    /// DescribePrometheusRecordRules返回参数结构体
    public struct DescribePrometheusRecordRulesResponse: TCResponseModel {
        /// 聚合规则
        public let records: [PrometheusRecordRuleYamlItem]
        
        /// 总数
        public let total: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case records = "Records"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
}