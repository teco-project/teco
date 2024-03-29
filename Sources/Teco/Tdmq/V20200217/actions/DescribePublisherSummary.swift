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

extension Tdmq {
    /// DescribePublisherSummary请求参数结构体
    public struct DescribePublisherSummaryRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        /// 命名空间名称
        public let namespace: String

        /// 主题名称
        public let topic: String

        public init(clusterId: String, namespace: String, topic: String) {
            self.clusterId = clusterId
            self.namespace = namespace
            self.topic = topic
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case namespace = "Namespace"
            case topic = "Topic"
        }
    }

    /// DescribePublisherSummary返回参数结构体
    public struct DescribePublisherSummaryResponse: TCResponse {
        /// 生产速率（条/秒）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msgRateIn: Float?

        /// 生产速率（字节/秒）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msgThroughputIn: Float?

        /// 生产者数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publisherCount: Int64?

        /// 消息存储大小，以字节为单位
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let storageSize: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case msgRateIn = "MsgRateIn"
            case msgThroughputIn = "MsgThroughputIn"
            case publisherCount = "PublisherCount"
            case storageSize = "StorageSize"
            case requestId = "RequestId"
        }
    }

    /// 获取消息生产概览
    ///
    /// 获取消息生产概览信息
    @inlinable
    public func describePublisherSummary(_ input: DescribePublisherSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePublisherSummaryResponse> {
        self.client.execute(action: "DescribePublisherSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取消息生产概览
    ///
    /// 获取消息生产概览信息
    @inlinable
    public func describePublisherSummary(_ input: DescribePublisherSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePublisherSummaryResponse {
        try await self.client.execute(action: "DescribePublisherSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取消息生产概览
    ///
    /// 获取消息生产概览信息
    @inlinable
    public func describePublisherSummary(clusterId: String, namespace: String, topic: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePublisherSummaryResponse> {
        self.describePublisherSummary(.init(clusterId: clusterId, namespace: namespace, topic: topic), region: region, logger: logger, on: eventLoop)
    }

    /// 获取消息生产概览
    ///
    /// 获取消息生产概览信息
    @inlinable
    public func describePublisherSummary(clusterId: String, namespace: String, topic: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePublisherSummaryResponse {
        try await self.describePublisherSummary(.init(clusterId: clusterId, namespace: namespace, topic: topic), region: region, logger: logger, on: eventLoop)
    }
}
