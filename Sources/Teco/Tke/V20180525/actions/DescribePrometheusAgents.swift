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

extension Tke {
    /// DescribePrometheusAgents请求参数结构体
    public struct DescribePrometheusAgentsRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String
        
        /// 用于分页
        public let offset: UInt64?
        
        /// 用于分页
        public let limit: UInt64?
        
        public init (instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribePrometheusAgents返回参数结构体
    public struct DescribePrometheusAgentsResponse: TCResponseModel {
        /// 被关联集群信息
        public let agents: [PrometheusAgentOverview]
        
        /// 被关联集群总量
        public let total: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case agents = "Agents"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
    
    /// 获取被关联集群列表
    @inlinable
    public func describePrometheusAgents(_ input: DescribePrometheusAgentsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePrometheusAgentsResponse > {
        self.client.execute(action: "DescribePrometheusAgents", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取被关联集群列表
    @inlinable
    public func describePrometheusAgents(_ input: DescribePrometheusAgentsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusAgentsResponse {
        try await self.client.execute(action: "DescribePrometheusAgents", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
