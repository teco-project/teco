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

extension Dbdc {
    /// DescribeDBInstances请求参数结构体
    public struct DescribeDBInstancesRequest: TCRequestModel {
        /// 独享集群实例Id
        public let instanceId: String
        
        /// 独享集群主机Id
        public let hostId: String?
        
        /// 分页返回数量
        public let limit: Int64?
        
        /// 分页偏移量
        public let offset: Int64?
        
        /// 实例类型,0:mariadb, 1:tdsql
        public let shardType: [Int64]?
        
        public init (instanceId: String, hostId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, shardType: [Int64]? = nil) {
            self.instanceId = instanceId
            self.hostId = hostId
            self.limit = limit
            self.offset = offset
            self.shardType = shardType
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case hostId = "HostId"
            case limit = "Limit"
            case offset = "Offset"
            case shardType = "ShardType"
        }
    }
    
    /// DescribeDBInstances返回参数结构体
    public struct DescribeDBInstancesResponse: TCResponseModel {
        /// 独享集群内的DB实例列表
        public let instances: [DBInstanceDetail]
        
        /// 独享集群内的DB实例总数
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case instances = "Instances"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 查询独享集群内的DB实例列表
    ///
    /// 本接口用于查询独享集群内的DB实例列表
    @inlinable
    public func describeDBInstances(_ input: DescribeDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDBInstancesResponse > {
        self.client.execute(action: "DescribeDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询独享集群内的DB实例列表
    ///
    /// 本接口用于查询独享集群内的DB实例列表
    @inlinable
    public func describeDBInstances(_ input: DescribeDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstancesResponse {
        try await self.client.execute(action: "DescribeDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
