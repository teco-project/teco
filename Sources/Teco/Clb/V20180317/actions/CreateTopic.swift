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

extension Clb {
    /// CreateTopic请求参数结构体
    public struct CreateTopicRequest: TCRequestModel {
        /// 日志主题的名称。
        public let topicName: String

        /// 主题分区Partition的数量，不传参默认创建1个，最大创建允许10个，分裂/合并操作会改变分区数量，整体上限50个。
        public let partitionCount: UInt64?

        /// 日志类型，ACCESS：访问日志，HEALTH：健康检查日志，默认ACCESS。
        public let topicType: String?

        /// 日志集的保存周期，单位：天，默认30天。
        public let period: UInt64?

        /// 日志主题的存储类型，可选值 HOT（标准存储），COLD（低频存储）；默认为HOT。
        public let storageType: String?

        public init(topicName: String, partitionCount: UInt64? = nil, topicType: String? = nil, period: UInt64? = nil, storageType: String? = nil) {
            self.topicName = topicName
            self.partitionCount = partitionCount
            self.topicType = topicType
            self.period = period
            self.storageType = storageType
        }

        enum CodingKeys: String, CodingKey {
            case topicName = "TopicName"
            case partitionCount = "PartitionCount"
            case topicType = "TopicType"
            case period = "Period"
            case storageType = "StorageType"
        }
    }

    /// CreateTopic返回参数结构体
    public struct CreateTopicResponse: TCResponseModel {
        /// 日志主题的 ID。
        public let topicId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case requestId = "RequestId"
        }
    }

    /// 创建主题
    ///
    /// 创建主题，默认开启全文索引和键值索引。如果不存在CLB专有日志集，则创建失败。
    @inlinable
    public func createTopic(_ input: CreateTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTopicResponse> {
        self.client.execute(action: "CreateTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建主题
    ///
    /// 创建主题，默认开启全文索引和键值索引。如果不存在CLB专有日志集，则创建失败。
    @inlinable
    public func createTopic(_ input: CreateTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTopicResponse {
        try await self.client.execute(action: "CreateTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建主题
    ///
    /// 创建主题，默认开启全文索引和键值索引。如果不存在CLB专有日志集，则创建失败。
    @inlinable
    public func createTopic(topicName: String, partitionCount: UInt64? = nil, topicType: String? = nil, period: UInt64? = nil, storageType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTopicResponse> {
        self.createTopic(.init(topicName: topicName, partitionCount: partitionCount, topicType: topicType, period: period, storageType: storageType), region: region, logger: logger, on: eventLoop)
    }

    /// 创建主题
    ///
    /// 创建主题，默认开启全文索引和键值索引。如果不存在CLB专有日志集，则创建失败。
    @inlinable
    public func createTopic(topicName: String, partitionCount: UInt64? = nil, topicType: String? = nil, period: UInt64? = nil, storageType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTopicResponse {
        try await self.createTopic(.init(topicName: topicName, partitionCount: partitionCount, topicType: topicType, period: period, storageType: storageType), region: region, logger: logger, on: eventLoop)
    }
}
