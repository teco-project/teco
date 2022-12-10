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

extension Dcdb {
    /// 查询分片信息
    ///
    /// 本接口（DescribeDCDBShards）用于查询云数据库实例的分片信息。
    @inlinable
    public func describeDCDBShards(_ input: DescribeDCDBShardsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDCDBShardsResponse > {
        self.client.execute(action: "DescribeDCDBShards", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询分片信息
    ///
    /// 本接口（DescribeDCDBShards）用于查询云数据库实例的分片信息。
    @inlinable
    public func describeDCDBShards(_ input: DescribeDCDBShardsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDCDBShardsResponse {
        try await self.client.execute(action: "DescribeDCDBShards", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDCDBShards请求参数结构体
    public struct DescribeDCDBShardsRequest: TCRequestModel {
        /// 实例ID，形如：dcdbt-ow728lmc。
        public let instanceId: String
        
        /// 分片ID列表。
        public let shardInstanceIds: [String]?
        
        /// 偏移量，默认为 0
        public let offset: Int64?
        
        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?
        
        /// 排序字段， 目前仅支持 createtime
        public let orderBy: String?
        
        /// 排序类型， desc 或者 asc
        public let orderByType: String?
        
        public init (instanceId: String, shardInstanceIds: [String]?, offset: Int64?, limit: Int64?, orderBy: String?, orderByType: String?) {
            self.instanceId = instanceId
            self.shardInstanceIds = shardInstanceIds
            self.offset = offset
            self.limit = limit
            self.orderBy = orderBy
            self.orderByType = orderByType
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case shardInstanceIds = "ShardInstanceIds"
            case offset = "Offset"
            case limit = "Limit"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
        }
    }
    
    /// DescribeDCDBShards返回参数结构体
    public struct DescribeDCDBShardsResponse: TCResponseModel {
        /// 符合条件的分片数量
        public let totalCount: Int64
        
        /// 分片信息列表
        public let shards: [DCDBShardInfo]
        
        /// 灾备标志，0-无，1-主实例，2-灾备实例
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dcnFlag: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case shards = "Shards"
            case dcnFlag = "DcnFlag"
            case requestId = "RequestId"
        }
    }
}
