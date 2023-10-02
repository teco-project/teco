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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Gse {
    /// DescribeFleetEvents请求参数结构体
    public struct DescribeFleetEventsRequest: TCPaginatedRequest {
        /// 服务器舰队 Id
        public let fleetId: String

        /// 分页时返回服务器舰队事件的数量，默认为20，最大值为100
        public let limit: UInt64?

        /// 分页时的数据偏移量，默认为0
        public let offset: UInt64?

        /// 事件代码
        public let eventCode: String?

        /// 发生事件的开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date?

        /// 发生事件的结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date?

        public init(fleetId: String, limit: UInt64? = nil, offset: UInt64? = nil, eventCode: String? = nil, startTime: Date? = nil, endTime: Date? = nil) {
            self.fleetId = fleetId
            self.limit = limit
            self.offset = offset
            self.eventCode = eventCode
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case limit = "Limit"
            case offset = "Offset"
            case eventCode = "EventCode"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeFleetEventsResponse) -> DescribeFleetEventsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(fleetId: self.fleetId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), eventCode: self.eventCode, startTime: self.startTime, endTime: self.endTime)
        }
    }

    /// DescribeFleetEvents返回参数结构体
    public struct DescribeFleetEventsResponse: TCPaginatedResponse {
        /// 返回的事件列表
        public let events: [Event]

        /// 返回的事件总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case events = "Events"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Event`` list from the paginated response.
        public func getItems() -> [Event] {
            self.events
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询服务器舰队的事件列表
    ///
    /// 本接口（DescribeFleetEvents）用于查询服务器舰队相关的事件列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeFleetEvents(_ input: DescribeFleetEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFleetEventsResponse> {
        fatalError("DescribeFleetEvents is no longer available.")
    }

    /// 查询服务器舰队的事件列表
    ///
    /// 本接口（DescribeFleetEvents）用于查询服务器舰队相关的事件列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeFleetEvents(_ input: DescribeFleetEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFleetEventsResponse {
        fatalError("DescribeFleetEvents is no longer available.")
    }

    /// 查询服务器舰队的事件列表
    ///
    /// 本接口（DescribeFleetEvents）用于查询服务器舰队相关的事件列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeFleetEvents(fleetId: String, limit: UInt64? = nil, offset: UInt64? = nil, eventCode: String? = nil, startTime: Date? = nil, endTime: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFleetEventsResponse> {
        fatalError("DescribeFleetEvents is no longer available.")
    }

    /// 查询服务器舰队的事件列表
    ///
    /// 本接口（DescribeFleetEvents）用于查询服务器舰队相关的事件列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeFleetEvents(fleetId: String, limit: UInt64? = nil, offset: UInt64? = nil, eventCode: String? = nil, startTime: Date? = nil, endTime: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFleetEventsResponse {
        fatalError("DescribeFleetEvents is no longer available.")
    }

    /// 查询服务器舰队的事件列表
    ///
    /// 本接口（DescribeFleetEvents）用于查询服务器舰队相关的事件列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeFleetEventsPaginated(_ input: DescribeFleetEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Event])> {
        fatalError("DescribeFleetEvents is no longer available.")
    }

    /// 查询服务器舰队的事件列表
    ///
    /// 本接口（DescribeFleetEvents）用于查询服务器舰队相关的事件列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func describeFleetEventsPaginated(_ input: DescribeFleetEventsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeFleetEventsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        fatalError("DescribeFleetEvents is no longer available.")
    }

    /// 查询服务器舰队的事件列表
    ///
    /// 本接口（DescribeFleetEvents）用于查询服务器舰队相关的事件列表。
    ///
    /// - Returns: `AsyncSequence`s of ``Event`` and ``DescribeFleetEventsResponse`` that can be iterated over asynchronously on demand.
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeFleetEventsPaginator(_ input: DescribeFleetEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeFleetEventsRequest> {
        fatalError("DescribeFleetEvents is no longer available.")
    }
}
