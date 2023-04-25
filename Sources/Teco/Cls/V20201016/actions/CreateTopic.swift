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

extension Cls {
    /// CreateTopic请求参数结构体
    public struct CreateTopicRequest: TCRequestModel {
        /// 日志集ID
        public let logsetId: String

        /// 日志主题名称
        public let topicName: String

        /// 日志主题分区个数。默认创建1个，最大支持创建10个分区。
        public let partitionCount: Int64?

        /// 标签描述列表，通过指定该参数可以同时绑定标签到相应的日志主题。最大支持10个标签键值对，同一个资源只能绑定到同一个标签键下。
        public let tags: [Tag]?

        /// 是否开启自动分裂，默认值为true
        public let autoSplit: Bool?

        /// 开启自动分裂后，每个主题能够允许的最大分区数，默认值为50
        public let maxSplitPartitions: Int64?

        /// 日志主题的存储类型，可选值 hot（标准存储），cold（低频存储）；默认为hot。
        public let storageType: String?

        /// 生命周期，单位天，标准存储取值范围1\~3600，低频存储取值范围7\~3600天。取值为3640时代表永久保存
        public let period: Int64?

        public init(logsetId: String, topicName: String, partitionCount: Int64? = nil, tags: [Tag]? = nil, autoSplit: Bool? = nil, maxSplitPartitions: Int64? = nil, storageType: String? = nil, period: Int64? = nil) {
            self.logsetId = logsetId
            self.topicName = topicName
            self.partitionCount = partitionCount
            self.tags = tags
            self.autoSplit = autoSplit
            self.maxSplitPartitions = maxSplitPartitions
            self.storageType = storageType
            self.period = period
        }

        enum CodingKeys: String, CodingKey {
            case logsetId = "LogsetId"
            case topicName = "TopicName"
            case partitionCount = "PartitionCount"
            case tags = "Tags"
            case autoSplit = "AutoSplit"
            case maxSplitPartitions = "MaxSplitPartitions"
            case storageType = "StorageType"
            case period = "Period"
        }
    }

    /// CreateTopic返回参数结构体
    public struct CreateTopicResponse: TCResponseModel {
        /// 日志主题ID
        public let topicId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case requestId = "RequestId"
        }
    }

    /// 创建日志主题
    ///
    /// 本接口用于创建日志主题。
    @inlinable
    public func createTopic(_ input: CreateTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTopicResponse> {
        self.client.execute(action: "CreateTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建日志主题
    ///
    /// 本接口用于创建日志主题。
    @inlinable
    public func createTopic(_ input: CreateTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTopicResponse {
        try await self.client.execute(action: "CreateTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建日志主题
    ///
    /// 本接口用于创建日志主题。
    @inlinable
    public func createTopic(logsetId: String, topicName: String, partitionCount: Int64? = nil, tags: [Tag]? = nil, autoSplit: Bool? = nil, maxSplitPartitions: Int64? = nil, storageType: String? = nil, period: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTopicResponse> {
        self.createTopic(.init(logsetId: logsetId, topicName: topicName, partitionCount: partitionCount, tags: tags, autoSplit: autoSplit, maxSplitPartitions: maxSplitPartitions, storageType: storageType, period: period), region: region, logger: logger, on: eventLoop)
    }

    /// 创建日志主题
    ///
    /// 本接口用于创建日志主题。
    @inlinable
    public func createTopic(logsetId: String, topicName: String, partitionCount: Int64? = nil, tags: [Tag]? = nil, autoSplit: Bool? = nil, maxSplitPartitions: Int64? = nil, storageType: String? = nil, period: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTopicResponse {
        try await self.createTopic(.init(logsetId: logsetId, topicName: topicName, partitionCount: partitionCount, tags: tags, autoSplit: autoSplit, maxSplitPartitions: maxSplitPartitions, storageType: storageType, period: period), region: region, logger: logger, on: eventLoop)
    }
}
