//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cdn {
    /// CreateClsLogTopic请求参数结构体
    public struct CreateClsLogTopicRequest: TCRequestModel {
        /// 日志主题名称
        public let topicName: String

        /// 日志集ID
        public let logsetId: String

        /// 接入渠道，cdn或者ecdn，默认值为cdn
        public let channel: String?

        /// 域名区域信息
        public let domainAreaConfigs: [DomainAreaConfig]?

        public init(topicName: String, logsetId: String, channel: String? = nil, domainAreaConfigs: [DomainAreaConfig]? = nil) {
            self.topicName = topicName
            self.logsetId = logsetId
            self.channel = channel
            self.domainAreaConfigs = domainAreaConfigs
        }

        enum CodingKeys: String, CodingKey {
            case topicName = "TopicName"
            case logsetId = "LogsetId"
            case channel = "Channel"
            case domainAreaConfigs = "DomainAreaConfigs"
        }
    }

    /// CreateClsLogTopic返回参数结构体
    public struct CreateClsLogTopicResponse: TCResponseModel {
        /// 主题ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let topicId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case requestId = "RequestId"
        }
    }

    /// 创建日志主题
    ///
    /// CreateClsLogTopic 用于创建日志主题。注意：一个日志集下至多可创建10个日志主题。
    @inlinable
    public func createClsLogTopic(_ input: CreateClsLogTopicRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateClsLogTopicResponse > {
        self.client.execute(action: "CreateClsLogTopic", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建日志主题
    ///
    /// CreateClsLogTopic 用于创建日志主题。注意：一个日志集下至多可创建10个日志主题。
    @inlinable
    public func createClsLogTopic(_ input: CreateClsLogTopicRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClsLogTopicResponse {
        try await self.client.execute(action: "CreateClsLogTopic", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建日志主题
    ///
    /// CreateClsLogTopic 用于创建日志主题。注意：一个日志集下至多可创建10个日志主题。
    @inlinable
    public func createClsLogTopic(topicName: String, logsetId: String, channel: String? = nil, domainAreaConfigs: [DomainAreaConfig]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateClsLogTopicResponse > {
        self.createClsLogTopic(CreateClsLogTopicRequest(topicName: topicName, logsetId: logsetId, channel: channel, domainAreaConfigs: domainAreaConfigs), logger: logger, on: eventLoop)
    }

    /// 创建日志主题
    ///
    /// CreateClsLogTopic 用于创建日志主题。注意：一个日志集下至多可创建10个日志主题。
    @inlinable
    public func createClsLogTopic(topicName: String, logsetId: String, channel: String? = nil, domainAreaConfigs: [DomainAreaConfig]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClsLogTopicResponse {
        try await self.createClsLogTopic(CreateClsLogTopicRequest(topicName: topicName, logsetId: logsetId, channel: channel, domainAreaConfigs: domainAreaConfigs), logger: logger, on: eventLoop)
    }
}
