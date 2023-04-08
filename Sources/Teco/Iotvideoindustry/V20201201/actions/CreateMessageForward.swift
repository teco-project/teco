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

extension Iotvideoindustry {
    /// CreateMessageForward请求参数结构体
    public struct CreateMessageForwardRequest: TCRequestModel {
        /// 区域ID
        public let regionId: String

        /// 区域名称
        public let regionName: String

        /// 实例ID
        public let instance: String

        /// 实例名称
        public let instanceName: String

        /// json数组， 转发类型 1: 告警 2:GPS
        public let messageType: String

        /// kafka topic id
        public let topicId: String

        /// kafka topic 名称
        public let topicName: String

        public init(regionId: String, regionName: String, instance: String, instanceName: String, messageType: String, topicId: String, topicName: String) {
            self.regionId = regionId
            self.regionName = regionName
            self.instance = instance
            self.instanceName = instanceName
            self.messageType = messageType
            self.topicId = topicId
            self.topicName = topicName
        }

        enum CodingKeys: String, CodingKey {
            case regionId = "RegionId"
            case regionName = "RegionName"
            case instance = "Instance"
            case instanceName = "InstanceName"
            case messageType = "MessageType"
            case topicId = "TopicId"
            case topicName = "TopicName"
        }
    }

    /// CreateMessageForward返回参数结构体
    public struct CreateMessageForwardResponse: TCResponseModel {
        /// 配置ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let intId: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case intId = "IntId"
            case requestId = "RequestId"
        }
    }

    /// 创建消息转发配置
    @inlinable
    public func createMessageForward(_ input: CreateMessageForwardRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMessageForwardResponse> {
        self.client.execute(action: "CreateMessageForward", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建消息转发配置
    @inlinable
    public func createMessageForward(_ input: CreateMessageForwardRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMessageForwardResponse {
        try await self.client.execute(action: "CreateMessageForward", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建消息转发配置
    @inlinable
    public func createMessageForward(regionId: String, regionName: String, instance: String, instanceName: String, messageType: String, topicId: String, topicName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMessageForwardResponse> {
        self.createMessageForward(.init(regionId: regionId, regionName: regionName, instance: instance, instanceName: instanceName, messageType: messageType, topicId: topicId, topicName: topicName), region: region, logger: logger, on: eventLoop)
    }

    /// 创建消息转发配置
    @inlinable
    public func createMessageForward(regionId: String, regionName: String, instance: String, instanceName: String, messageType: String, topicId: String, topicName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMessageForwardResponse {
        try await self.createMessageForward(.init(regionId: regionId, regionName: regionName, instance: instance, instanceName: instanceName, messageType: messageType, topicId: topicId, topicName: topicName), region: region, logger: logger, on: eventLoop)
    }
}
