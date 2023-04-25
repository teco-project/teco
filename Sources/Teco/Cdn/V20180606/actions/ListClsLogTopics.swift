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

extension Cdn {
    /// ListClsLogTopics请求参数结构体
    public struct ListClsLogTopicsRequest: TCRequestModel {
        /// 接入渠道，cdn或者ecdn，默认值为cdn
        public let channel: String?

        public init(channel: String? = nil) {
            self.channel = channel
        }

        enum CodingKeys: String, CodingKey {
            case channel = "Channel"
        }
    }

    /// ListClsLogTopics返回参数结构体
    public struct ListClsLogTopicsResponse: TCResponseModel {
        /// 上海区域日志集信息
        public let logset: LogSetInfo

        /// 上海区域日志主题信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let topics: [TopicInfo]?

        /// 其他区域日志集信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extraLogset: [ExtraLogset]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case logset = "Logset"
            case topics = "Topics"
            case extraLogset = "ExtraLogset"
            case requestId = "RequestId"
        }
    }

    /// 显示日志主题列表
    ///
    /// ListClsLogTopics 用于显示日志主题列表。注意：一个日志集下至多含10个日志主题。
    @inlinable
    public func listClsLogTopics(_ input: ListClsLogTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListClsLogTopicsResponse> {
        self.client.execute(action: "ListClsLogTopics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 显示日志主题列表
    ///
    /// ListClsLogTopics 用于显示日志主题列表。注意：一个日志集下至多含10个日志主题。
    @inlinable
    public func listClsLogTopics(_ input: ListClsLogTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListClsLogTopicsResponse {
        try await self.client.execute(action: "ListClsLogTopics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 显示日志主题列表
    ///
    /// ListClsLogTopics 用于显示日志主题列表。注意：一个日志集下至多含10个日志主题。
    @inlinable
    public func listClsLogTopics(channel: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListClsLogTopicsResponse> {
        self.listClsLogTopics(.init(channel: channel), region: region, logger: logger, on: eventLoop)
    }

    /// 显示日志主题列表
    ///
    /// ListClsLogTopics 用于显示日志主题列表。注意：一个日志集下至多含10个日志主题。
    @inlinable
    public func listClsLogTopics(channel: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListClsLogTopicsResponse {
        try await self.listClsLogTopics(.init(channel: channel), region: region, logger: logger, on: eventLoop)
    }
}
