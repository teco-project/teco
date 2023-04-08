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

extension Tdmq {
    /// CreateRocketMQTopic请求参数结构体
    public struct CreateRocketMQTopicRequest: TCRequestModel {
        /// 主题名称，3-64个字符，只能包含字母、数字、“-”及“_”
        public let topic: String

        /// 主题所在的命名空间，目前支持在单个命名空间下创建主题
        public let namespaces: [String]

        /// 主题类型，可选值为Normal, PartitionedOrder, Transaction, DelayScheduled。
        public let type: String

        /// 集群ID
        public let clusterId: String

        /// 主题说明，最大128个字符
        public let remark: String?

        /// 分区数，全局顺序无效
        public let partitionNum: Int64?

        public init(topic: String, namespaces: [String], type: String, clusterId: String, remark: String? = nil, partitionNum: Int64? = nil) {
            self.topic = topic
            self.namespaces = namespaces
            self.type = type
            self.clusterId = clusterId
            self.remark = remark
            self.partitionNum = partitionNum
        }

        enum CodingKeys: String, CodingKey {
            case topic = "Topic"
            case namespaces = "Namespaces"
            case type = "Type"
            case clusterId = "ClusterId"
            case remark = "Remark"
            case partitionNum = "PartitionNum"
        }
    }

    /// CreateRocketMQTopic返回参数结构体
    public struct CreateRocketMQTopicResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建RocketMQ主题
    @inlinable @discardableResult
    public func createRocketMQTopic(_ input: CreateRocketMQTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRocketMQTopicResponse> {
        self.client.execute(action: "CreateRocketMQTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建RocketMQ主题
    @inlinable @discardableResult
    public func createRocketMQTopic(_ input: CreateRocketMQTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRocketMQTopicResponse {
        try await self.client.execute(action: "CreateRocketMQTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建RocketMQ主题
    @inlinable @discardableResult
    public func createRocketMQTopic(topic: String, namespaces: [String], type: String, clusterId: String, remark: String? = nil, partitionNum: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRocketMQTopicResponse> {
        self.createRocketMQTopic(.init(topic: topic, namespaces: namespaces, type: type, clusterId: clusterId, remark: remark, partitionNum: partitionNum), region: region, logger: logger, on: eventLoop)
    }

    /// 创建RocketMQ主题
    @inlinable @discardableResult
    public func createRocketMQTopic(topic: String, namespaces: [String], type: String, clusterId: String, remark: String? = nil, partitionNum: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRocketMQTopicResponse {
        try await self.createRocketMQTopic(.init(topic: topic, namespaces: namespaces, type: type, clusterId: clusterId, remark: remark, partitionNum: partitionNum), region: region, logger: logger, on: eventLoop)
    }
}
