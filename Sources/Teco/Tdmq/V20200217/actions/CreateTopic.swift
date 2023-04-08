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

extension Tdmq {
    /// CreateTopic请求参数结构体
    public struct CreateTopicRequest: TCRequestModel {
        /// 环境（命名空间）名称。
        public let environmentId: String

        /// 主题名，不支持中字以及除了短线和下划线外的特殊字符且不超过64个字符。
        public let topicName: String

        /// 入参为1，即是创建非分区topic，无分区；入参大于1，表示分区topic的分区数，最大不允许超过128。
        public let partitions: UInt64

        /// 备注，128字符以内。
        public let remark: String?

        /// 该入参将逐步弃用，可切换至PulsarTopicType参数
        /// 0： 普通消息；
        /// 1 ：全局顺序消息；
        /// 2 ：局部顺序消息；
        /// 3 ：重试队列；
        /// 4 ：死信队列。
        public let topicType: UInt64?

        /// Pulsar 集群的ID
        public let clusterId: String?

        /// Pulsar 主题类型
        /// 0: 非持久非分区
        /// 1: 非持久分区
        /// 2: 持久非分区
        /// 3: 持久分区
        public let pulsarTopicType: Int64?

        public init(environmentId: String, topicName: String, partitions: UInt64, remark: String? = nil, topicType: UInt64? = nil, clusterId: String? = nil, pulsarTopicType: Int64? = nil) {
            self.environmentId = environmentId
            self.topicName = topicName
            self.partitions = partitions
            self.remark = remark
            self.topicType = topicType
            self.clusterId = clusterId
            self.pulsarTopicType = pulsarTopicType
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case topicName = "TopicName"
            case partitions = "Partitions"
            case remark = "Remark"
            case topicType = "TopicType"
            case clusterId = "ClusterId"
            case pulsarTopicType = "PulsarTopicType"
        }
    }

    /// CreateTopic返回参数结构体
    public struct CreateTopicResponse: TCResponseModel {
        /// 环境（命名空间）名称。
        public let environmentId: String

        /// 主题名。
        public let topicName: String

        /// 0或1：非分区topic，无分区；大于1：具体分区topic的分区数。（存量非分区主题返回0，增量非分区主题返回1）
        public let partitions: UInt64

        /// 备注，128字符以内。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?

        /// 0： 普通消息；
        /// 1 ：全局顺序消息；
        /// 2 ：局部顺序消息；
        /// 3 ：重试队列；
        /// 4 ：死信队列；
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let topicType: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case topicName = "TopicName"
            case partitions = "Partitions"
            case remark = "Remark"
            case topicType = "TopicType"
            case requestId = "RequestId"
        }
    }

    /// 新增主题
    ///
    /// 新增指定分区、类型的消息主题
    @inlinable
    public func createTopic(_ input: CreateTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTopicResponse> {
        self.client.execute(action: "CreateTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增主题
    ///
    /// 新增指定分区、类型的消息主题
    @inlinable
    public func createTopic(_ input: CreateTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTopicResponse {
        try await self.client.execute(action: "CreateTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增主题
    ///
    /// 新增指定分区、类型的消息主题
    @inlinable
    public func createTopic(environmentId: String, topicName: String, partitions: UInt64, remark: String? = nil, topicType: UInt64? = nil, clusterId: String? = nil, pulsarTopicType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTopicResponse> {
        self.createTopic(.init(environmentId: environmentId, topicName: topicName, partitions: partitions, remark: remark, topicType: topicType, clusterId: clusterId, pulsarTopicType: pulsarTopicType), region: region, logger: logger, on: eventLoop)
    }

    /// 新增主题
    ///
    /// 新增指定分区、类型的消息主题
    @inlinable
    public func createTopic(environmentId: String, topicName: String, partitions: UInt64, remark: String? = nil, topicType: UInt64? = nil, clusterId: String? = nil, pulsarTopicType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTopicResponse {
        try await self.createTopic(.init(environmentId: environmentId, topicName: topicName, partitions: partitions, remark: remark, topicType: topicType, clusterId: clusterId, pulsarTopicType: pulsarTopicType), region: region, logger: logger, on: eventLoop)
    }
}
