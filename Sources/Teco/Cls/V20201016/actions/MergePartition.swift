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

extension Cls {
    /// 合并分区
    ///
    /// 本接口用于合并一个读写态的主题分区，合并时指定一个主题分区 ID，日志服务会自动合并范围右相邻的分区。
    @inlinable
    public func mergePartition(_ input: MergePartitionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < MergePartitionResponse > {
        self.client.execute(action: "MergePartition", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 合并分区
    ///
    /// 本接口用于合并一个读写态的主题分区，合并时指定一个主题分区 ID，日志服务会自动合并范围右相邻的分区。
    @inlinable
    public func mergePartition(_ input: MergePartitionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MergePartitionResponse {
        try await self.client.execute(action: "MergePartition", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// MergePartition请求参数结构体
    public struct MergePartitionRequest: TCRequestModel {
        /// 日志主题ID
        public let topicId: String
        
        /// 合并的PartitionId
        public let partitionId: Int64
        
        public init (topicId: String, partitionId: Int64) {
            self.topicId = topicId
            self.partitionId = partitionId
        }
        
        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case partitionId = "PartitionId"
        }
    }
    
    /// MergePartition返回参数结构体
    public struct MergePartitionResponse: TCResponseModel {
        /// 合并结果集
        public let partitions: [PartitionInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case partitions = "Partitions"
            case requestId = "RequestId"
        }
    }
}
