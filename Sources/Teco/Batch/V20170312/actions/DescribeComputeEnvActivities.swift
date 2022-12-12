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

extension Batch {
    /// DescribeComputeEnvActivities请求参数结构体
    public struct DescribeComputeEnvActivitiesRequest: TCRequestModel {
        /// 计算环境ID
        public let envId: String
        
        /// 偏移量
        public let offset: Int64?
        
        /// 返回数量
        public let limit: Int64?
        
        /// 过滤条件
        /// <li> compute-node-id - String - 是否必填：否 -（过滤条件）按照计算节点ID过滤。</li>
        public let filters: Filter?
        
        public init (envId: String, offset: Int64? = nil, limit: Int64? = nil, filters: Filter? = nil) {
            self.envId = envId
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }
    }
    
    /// DescribeComputeEnvActivities返回参数结构体
    public struct DescribeComputeEnvActivitiesResponse: TCResponseModel {
        /// 计算环境中的活动列表
        public let activitySet: [Activity]
        
        /// 活动数量
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case activitySet = "ActivitySet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 查看计算环境活动信息
    ///
    /// 用于查询计算环境的活动信息
    @inlinable
    public func describeComputeEnvActivities(_ input: DescribeComputeEnvActivitiesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeComputeEnvActivitiesResponse > {
        self.client.execute(action: "DescribeComputeEnvActivities", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查看计算环境活动信息
    ///
    /// 用于查询计算环境的活动信息
    @inlinable
    public func describeComputeEnvActivities(_ input: DescribeComputeEnvActivitiesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComputeEnvActivitiesResponse {
        try await self.client.execute(action: "DescribeComputeEnvActivities", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
