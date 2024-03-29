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

import Logging
import NIOCore
import TecoCore

extension Ckafka {
    /// BatchModifyGroupOffsets请求参数结构体
    public struct BatchModifyGroupOffsetsRequest: TCRequest {
        /// 消费分组名称
        public let groupName: String

        /// 实例名称
        public let instanceId: String

        /// partition信息
        public let partitions: [Partitions]

        /// 指定topic，默认所有topic
        public let topicName: [String]?

        public init(groupName: String, instanceId: String, partitions: [Partitions], topicName: [String]? = nil) {
            self.groupName = groupName
            self.instanceId = instanceId
            self.partitions = partitions
            self.topicName = topicName
        }

        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case instanceId = "InstanceId"
            case partitions = "Partitions"
            case topicName = "TopicName"
        }
    }

    /// BatchModifyGroupOffsets返回参数结构体
    public struct BatchModifyGroupOffsetsResponse: TCResponse {
        /// 返回结果
        public let result: JgwOperateResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 批量修改消费组offset
    @inlinable
    public func batchModifyGroupOffsets(_ input: BatchModifyGroupOffsetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchModifyGroupOffsetsResponse> {
        self.client.execute(action: "BatchModifyGroupOffsets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量修改消费组offset
    @inlinable
    public func batchModifyGroupOffsets(_ input: BatchModifyGroupOffsetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchModifyGroupOffsetsResponse {
        try await self.client.execute(action: "BatchModifyGroupOffsets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量修改消费组offset
    @inlinable
    public func batchModifyGroupOffsets(groupName: String, instanceId: String, partitions: [Partitions], topicName: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchModifyGroupOffsetsResponse> {
        self.batchModifyGroupOffsets(.init(groupName: groupName, instanceId: instanceId, partitions: partitions, topicName: topicName), region: region, logger: logger, on: eventLoop)
    }

    /// 批量修改消费组offset
    @inlinable
    public func batchModifyGroupOffsets(groupName: String, instanceId: String, partitions: [Partitions], topicName: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchModifyGroupOffsetsResponse {
        try await self.batchModifyGroupOffsets(.init(groupName: groupName, instanceId: instanceId, partitions: partitions, topicName: topicName), region: region, logger: logger, on: eventLoop)
    }
}
