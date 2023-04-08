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

extension Iotcloud {
    /// ListLogPayload请求参数结构体
    public struct ListLogPayloadRequest: TCRequestModel {
        /// 日志开始时间，毫秒级时间戳
        public let minTime: UInt64

        /// 日志结束时间，毫秒级时间戳
        public let maxTime: UInt64

        /// 查询关键字，可以同时支持键值查询和文本查询，例如，查询某key的值为value，并且包含某word的日志，该参数为：key:value word。键值或文本可以包含多个，以空格隔开。其中可以索引的key比如：RequestID、ProductID、DeviceName等。
        /// 一个典型的查询示例：ProductID:ABCDE12345 DeviceName:test publish
        public let keywords: String

        /// 日志检索上下文
        public let context: String?

        /// 日志最大条数
        public let maxNum: Int64?

        public init(minTime: UInt64, maxTime: UInt64, keywords: String, context: String? = nil, maxNum: Int64? = nil) {
            self.minTime = minTime
            self.maxTime = maxTime
            self.keywords = keywords
            self.context = context
            self.maxNum = maxNum
        }

        enum CodingKeys: String, CodingKey {
            case minTime = "MinTime"
            case maxTime = "MaxTime"
            case keywords = "Keywords"
            case context = "Context"
            case maxNum = "MaxNum"
        }
    }

    /// ListLogPayload返回参数结构体
    public struct ListLogPayloadResponse: TCResponseModel {
        /// 日志上下文
        public let context: String

        /// 是否还有日志，如有仍有日志，下次查询的请求带上当前请求返回的Context
        public let listover: Bool

        /// 日志列表
        public let results: [PayloadLogItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case context = "Context"
            case listover = "Listover"
            case results = "Results"
            case requestId = "RequestId"
        }
    }

    /// 获取日志内容列表
    @inlinable
    public func listLogPayload(_ input: ListLogPayloadRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLogPayloadResponse> {
        self.client.execute(action: "ListLogPayload", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取日志内容列表
    @inlinable
    public func listLogPayload(_ input: ListLogPayloadRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLogPayloadResponse {
        try await self.client.execute(action: "ListLogPayload", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取日志内容列表
    @inlinable
    public func listLogPayload(minTime: UInt64, maxTime: UInt64, keywords: String, context: String? = nil, maxNum: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLogPayloadResponse> {
        self.listLogPayload(.init(minTime: minTime, maxTime: maxTime, keywords: keywords, context: context, maxNum: maxNum), region: region, logger: logger, on: eventLoop)
    }

    /// 获取日志内容列表
    @inlinable
    public func listLogPayload(minTime: UInt64, maxTime: UInt64, keywords: String, context: String? = nil, maxNum: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLogPayloadResponse {
        try await self.listLogPayload(.init(minTime: minTime, maxTime: maxTime, keywords: keywords, context: context, maxNum: maxNum), region: region, logger: logger, on: eventLoop)
    }
}
