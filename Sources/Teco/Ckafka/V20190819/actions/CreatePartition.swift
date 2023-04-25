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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Ckafka {
    /// CreatePartition请求参数结构体
    public struct CreatePartitionRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String

        /// 主题名称
        public let topicName: String

        /// 主题分区个数
        public let partitionNum: Int64

        public init(instanceId: String, topicName: String, partitionNum: Int64) {
            self.instanceId = instanceId
            self.topicName = topicName
            self.partitionNum = partitionNum
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case topicName = "TopicName"
            case partitionNum = "PartitionNum"
        }
    }

    /// CreatePartition返回参数结构体
    public struct CreatePartitionResponse: TCResponseModel {
        /// 返回的结果集
        public let result: JgwOperateResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 增加主题分区
    ///
    /// 本接口用于增加主题中的分区
    @inlinable
    public func createPartition(_ input: CreatePartitionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePartitionResponse> {
        self.client.execute(action: "CreatePartition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 增加主题分区
    ///
    /// 本接口用于增加主题中的分区
    @inlinable
    public func createPartition(_ input: CreatePartitionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePartitionResponse {
        try await self.client.execute(action: "CreatePartition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 增加主题分区
    ///
    /// 本接口用于增加主题中的分区
    @inlinable
    public func createPartition(instanceId: String, topicName: String, partitionNum: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePartitionResponse> {
        self.createPartition(.init(instanceId: instanceId, topicName: topicName, partitionNum: partitionNum), region: region, logger: logger, on: eventLoop)
    }

    /// 增加主题分区
    ///
    /// 本接口用于增加主题中的分区
    @inlinable
    public func createPartition(instanceId: String, topicName: String, partitionNum: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePartitionResponse {
        try await self.createPartition(.init(instanceId: instanceId, topicName: topicName, partitionNum: partitionNum), region: region, logger: logger, on: eventLoop)
    }
}
