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

extension Tdmq {
    /// 获取RocketMQ集群列表
    ///
    /// 获取RocketMQ集群列表
    @inlinable
    public func describeRocketMQClusters(_ input: DescribeRocketMQClustersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRocketMQClustersResponse > {
        self.client.execute(action: "DescribeRocketMQClusters", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取RocketMQ集群列表
    ///
    /// 获取RocketMQ集群列表
    @inlinable
    public func describeRocketMQClusters(_ input: DescribeRocketMQClustersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQClustersResponse {
        try await self.client.execute(action: "DescribeRocketMQClusters", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeRocketMQClusters请求参数结构体
    public struct DescribeRocketMQClustersRequest: TCRequestModel {
        /// 偏移量
        public let offset: UInt64
        
        /// 限制数目
        public let limit: UInt64
        
        /// 按照集群ID关键字搜索
        public let idKeyword: String?
        
        /// 按照集群名称关键字搜索
        public let nameKeyword: String?
        
        /// 集群ID列表过滤
        public let clusterIdList: [String]?
        
        /// 标签过滤查找时，需要设置为true
        public let isTagFilter: Bool?
        
        /// 过滤器。目前支持标签过滤。
        public let filters: [Filter]?
        
        public init (offset: UInt64, limit: UInt64, idKeyword: String?, nameKeyword: String?, clusterIdList: [String]?, isTagFilter: Bool?, filters: [Filter]?) {
            self.offset = offset
            self.limit = limit
            self.idKeyword = idKeyword
            self.nameKeyword = nameKeyword
            self.clusterIdList = clusterIdList
            self.isTagFilter = isTagFilter
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case idKeyword = "IdKeyword"
            case nameKeyword = "NameKeyword"
            case clusterIdList = "ClusterIdList"
            case isTagFilter = "IsTagFilter"
            case filters = "Filters"
        }
    }
    
    /// DescribeRocketMQClusters返回参数结构体
    public struct DescribeRocketMQClustersResponse: TCResponseModel {
        /// 集群信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterList: [RocketMQClusterDetail]?
        
        /// 总条数
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case clusterList = "ClusterList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}