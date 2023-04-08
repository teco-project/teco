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

extension Cdn {
    /// DisableClsLogTopic请求参数结构体
    public struct DisableClsLogTopicRequest: TCRequestModel {
        /// 日志集ID
        public let logsetId: String

        /// 日志主题ID
        public let topicId: String

        /// 接入渠道，cdn或者ecdn，默认值为cdn
        public let channel: String?

        public init(logsetId: String, topicId: String, channel: String? = nil) {
            self.logsetId = logsetId
            self.topicId = topicId
            self.channel = channel
        }

        enum CodingKeys: String, CodingKey {
            case logsetId = "LogsetId"
            case topicId = "TopicId"
            case channel = "Channel"
        }
    }

    /// DisableClsLogTopic返回参数结构体
    public struct DisableClsLogTopicResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停止日志主题投递
    ///
    /// DisableClsLogTopic 用于停止日志主题投递。注意：停止后，所有绑定该日志主题域名的日志将不再继续投递至该主题，已经投递的日志将会继续保留。生效时间约为 5~15 分钟。
    @inlinable @discardableResult
    public func disableClsLogTopic(_ input: DisableClsLogTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableClsLogTopicResponse> {
        self.client.execute(action: "DisableClsLogTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止日志主题投递
    ///
    /// DisableClsLogTopic 用于停止日志主题投递。注意：停止后，所有绑定该日志主题域名的日志将不再继续投递至该主题，已经投递的日志将会继续保留。生效时间约为 5~15 分钟。
    @inlinable @discardableResult
    public func disableClsLogTopic(_ input: DisableClsLogTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableClsLogTopicResponse {
        try await self.client.execute(action: "DisableClsLogTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止日志主题投递
    ///
    /// DisableClsLogTopic 用于停止日志主题投递。注意：停止后，所有绑定该日志主题域名的日志将不再继续投递至该主题，已经投递的日志将会继续保留。生效时间约为 5~15 分钟。
    @inlinable @discardableResult
    public func disableClsLogTopic(logsetId: String, topicId: String, channel: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableClsLogTopicResponse> {
        self.disableClsLogTopic(.init(logsetId: logsetId, topicId: topicId, channel: channel), region: region, logger: logger, on: eventLoop)
    }

    /// 停止日志主题投递
    ///
    /// DisableClsLogTopic 用于停止日志主题投递。注意：停止后，所有绑定该日志主题域名的日志将不再继续投递至该主题，已经投递的日志将会继续保留。生效时间约为 5~15 分钟。
    @inlinable @discardableResult
    public func disableClsLogTopic(logsetId: String, topicId: String, channel: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableClsLogTopicResponse {
        try await self.disableClsLogTopic(.init(logsetId: logsetId, topicId: topicId, channel: channel), region: region, logger: logger, on: eventLoop)
    }
}
