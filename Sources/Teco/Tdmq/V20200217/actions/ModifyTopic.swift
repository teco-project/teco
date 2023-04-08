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
    /// ModifyTopic请求参数结构体
    public struct ModifyTopicRequest: TCRequestModel {
        /// 环境（命名空间）名称。
        public let environmentId: String

        /// 主题名。
        public let topicName: String

        /// 分区数，必须大于或者等于原分区数，若想维持原分区数请输入原数目，修改分区数仅对非全局顺序消息起效果，不允许超过128个分区。
        public let partitions: UInt64

        /// 备注，128字符以内。
        public let remark: String?

        /// Pulsar 集群的ID
        public let clusterId: String?

        public init(environmentId: String, topicName: String, partitions: UInt64, remark: String? = nil, clusterId: String? = nil) {
            self.environmentId = environmentId
            self.topicName = topicName
            self.partitions = partitions
            self.remark = remark
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case topicName = "TopicName"
            case partitions = "Partitions"
            case remark = "Remark"
            case clusterId = "ClusterId"
        }
    }

    /// ModifyTopic返回参数结构体
    public struct ModifyTopicResponse: TCResponseModel {
        /// 分区数
        public let partitions: UInt64

        /// 备注，128字符以内。
        public let remark: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case partitions = "Partitions"
            case remark = "Remark"
            case requestId = "RequestId"
        }
    }

    /// 修改主题
    ///
    /// 修改主题备注和分区数
    @inlinable
    public func modifyTopic(_ input: ModifyTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTopicResponse> {
        self.client.execute(action: "ModifyTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改主题
    ///
    /// 修改主题备注和分区数
    @inlinable
    public func modifyTopic(_ input: ModifyTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTopicResponse {
        try await self.client.execute(action: "ModifyTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改主题
    ///
    /// 修改主题备注和分区数
    @inlinable
    public func modifyTopic(environmentId: String, topicName: String, partitions: UInt64, remark: String? = nil, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTopicResponse> {
        self.modifyTopic(.init(environmentId: environmentId, topicName: topicName, partitions: partitions, remark: remark, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改主题
    ///
    /// 修改主题备注和分区数
    @inlinable
    public func modifyTopic(environmentId: String, topicName: String, partitions: UInt64, remark: String? = nil, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTopicResponse {
        try await self.modifyTopic(.init(environmentId: environmentId, topicName: topicName, partitions: partitions, remark: remark, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
