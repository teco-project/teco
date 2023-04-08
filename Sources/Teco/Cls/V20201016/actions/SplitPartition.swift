//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension Cls {
    /// SplitPartition请求参数结构体
    public struct SplitPartitionRequest: TCRequestModel {
        /// 日志主题ID
        public let topicId: String

        /// 待分裂分区ID
        public let partitionId: Int64

        /// 分区切分的哈希key的位置，只在Number=2时有意义
        public let splitKey: String?

        /// 分区分裂个数(可选)，默认等于2
        public let number: Int64?

        public init(topicId: String, partitionId: Int64, splitKey: String? = nil, number: Int64? = nil) {
            self.topicId = topicId
            self.partitionId = partitionId
            self.splitKey = splitKey
            self.number = number
        }

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case partitionId = "PartitionId"
            case splitKey = "SplitKey"
            case number = "Number"
        }
    }

    /// SplitPartition返回参数结构体
    public struct SplitPartitionResponse: TCResponseModel {
        /// 分裂结果集
        public let partitions: [PartitionInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case partitions = "Partitions"
            case requestId = "RequestId"
        }
    }

    /// 分裂主题分区
    ///
    /// 本接口用于分裂主题分区
    @inlinable
    public func splitPartition(_ input: SplitPartitionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SplitPartitionResponse> {
        self.client.execute(action: "SplitPartition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 分裂主题分区
    ///
    /// 本接口用于分裂主题分区
    @inlinable
    public func splitPartition(_ input: SplitPartitionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SplitPartitionResponse {
        try await self.client.execute(action: "SplitPartition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 分裂主题分区
    ///
    /// 本接口用于分裂主题分区
    @inlinable
    public func splitPartition(topicId: String, partitionId: Int64, splitKey: String? = nil, number: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SplitPartitionResponse> {
        self.splitPartition(.init(topicId: topicId, partitionId: partitionId, splitKey: splitKey, number: number), region: region, logger: logger, on: eventLoop)
    }

    /// 分裂主题分区
    ///
    /// 本接口用于分裂主题分区
    @inlinable
    public func splitPartition(topicId: String, partitionId: Int64, splitKey: String? = nil, number: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SplitPartitionResponse {
        try await self.splitPartition(.init(topicId: topicId, partitionId: partitionId, splitKey: splitKey, number: number), region: region, logger: logger, on: eventLoop)
    }
}
