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
import TecoPaginationHelpers

extension Iotvideoindustry {
    /// DescribeDeviceEvent请求参数结构体
    public struct DescribeDeviceEventRequest: TCPaginatedRequest {
        /// 开始时间，秒级时间戳
        public let startTime: Int64

        /// 结束时间，秒级时间戳
        public let endTime: Int64

        /// 设备Id
        public let deviceId: String?

        /// 默认为全部 事件类型 1:注册 2:心跳 4:录制异常 5:播放异常 6:流中断
        public let eventTypes: [Int64]?

        /// 偏移值
        public let offset: Int64?

        /// limit限制值
        public let limit: Int64?

        public init(startTime: Int64, endTime: Int64, deviceId: String? = nil, eventTypes: [Int64]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.deviceId = deviceId
            self.eventTypes = eventTypes
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case deviceId = "DeviceId"
            case eventTypes = "EventTypes"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDeviceEventResponse) -> DescribeDeviceEventRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDeviceEventRequest(startTime: self.startTime, endTime: self.endTime, deviceId: self.deviceId, eventTypes: self.eventTypes, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeDeviceEvent返回参数结构体
    public struct DescribeDeviceEventResponse: TCPaginatedResponse {
        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 事件列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let events: [Events]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case events = "Events"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Events] {
            self.events ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取设备事件
    @inlinable
    public func describeDeviceEvent(_ input: DescribeDeviceEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceEventResponse> {
        self.client.execute(action: "DescribeDeviceEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备事件
    @inlinable
    public func describeDeviceEvent(_ input: DescribeDeviceEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceEventResponse {
        try await self.client.execute(action: "DescribeDeviceEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备事件
    @inlinable
    public func describeDeviceEvent(startTime: Int64, endTime: Int64, deviceId: String? = nil, eventTypes: [Int64]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceEventResponse> {
        self.describeDeviceEvent(.init(startTime: startTime, endTime: endTime, deviceId: deviceId, eventTypes: eventTypes, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备事件
    @inlinable
    public func describeDeviceEvent(startTime: Int64, endTime: Int64, deviceId: String? = nil, eventTypes: [Int64]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceEventResponse {
        try await self.describeDeviceEvent(.init(startTime: startTime, endTime: endTime, deviceId: deviceId, eventTypes: eventTypes, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备事件
    @inlinable
    public func describeDeviceEventPaginated(_ input: DescribeDeviceEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Events])> {
        self.client.paginate(input: input, region: region, command: self.describeDeviceEvent, logger: logger, on: eventLoop)
    }

    /// 获取设备事件
    @inlinable @discardableResult
    public func describeDeviceEventPaginated(_ input: DescribeDeviceEventRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDeviceEventResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDeviceEvent, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取设备事件
    ///
    /// - Returns: `AsyncSequence`s of `Events` and `DescribeDeviceEventResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDeviceEventPaginator(_ input: DescribeDeviceEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDeviceEventRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDeviceEvent, logger: logger, on: eventLoop)
    }
}
