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

extension Tcr {
    /// DescribeReplicationInstances请求参数结构体
    public struct DescribeReplicationInstancesRequest: TCRequestModel {
        /// 实例Id
        public let registryId: String
        
        /// 偏移量,默认0
        public let offset: Int64?
        
        /// 最大输出条数，默认20，最大为100
        public let limit: Int64?
        
        public init (registryId: String, offset: Int64? = nil, limit: Int64? = nil) {
            self.registryId = registryId
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeReplicationInstances返回参数结构体
    public struct DescribeReplicationInstancesResponse: TCResponseModel {
        /// 总实例个数
        public let totalCount: Int64
        
        /// 同步实例列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let replicationRegistries: [ReplicationRegistry]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case replicationRegistries = "ReplicationRegistries"
            case requestId = "RequestId"
        }
    }
    
    /// 查询从实例列表
    @inlinable
    public func describeReplicationInstances(_ input: DescribeReplicationInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeReplicationInstancesResponse > {
        self.client.execute(action: "DescribeReplicationInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询从实例列表
    @inlinable
    public func describeReplicationInstances(_ input: DescribeReplicationInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReplicationInstancesResponse {
        try await self.client.execute(action: "DescribeReplicationInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
