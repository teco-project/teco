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
    /// DescribeTopicAttributes请求参数结构体
    public struct DescribeTopicAttributesRequest: TCRequest {
        /// 实例 ID
        public let instanceId: String

        /// 主题名称
        public let topicName: String

        public init(instanceId: String, topicName: String) {
            self.instanceId = instanceId
            self.topicName = topicName
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case topicName = "TopicName"
        }
    }

    /// DescribeTopicAttributes返回参数结构体
    public struct DescribeTopicAttributesResponse: TCResponse {
        /// 返回的结果对象
        public let result: TopicAttributesResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取主题属性
    @inlinable
    public func describeTopicAttributes(_ input: DescribeTopicAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicAttributesResponse> {
        self.client.execute(action: "DescribeTopicAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取主题属性
    @inlinable
    public func describeTopicAttributes(_ input: DescribeTopicAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicAttributesResponse {
        try await self.client.execute(action: "DescribeTopicAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取主题属性
    @inlinable
    public func describeTopicAttributes(instanceId: String, topicName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicAttributesResponse> {
        self.describeTopicAttributes(.init(instanceId: instanceId, topicName: topicName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取主题属性
    @inlinable
    public func describeTopicAttributes(instanceId: String, topicName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicAttributesResponse {
        try await self.describeTopicAttributes(.init(instanceId: instanceId, topicName: topicName), region: region, logger: logger, on: eventLoop)
    }
}
