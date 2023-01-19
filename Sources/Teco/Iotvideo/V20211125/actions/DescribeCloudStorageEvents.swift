//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Iotvideo {
    /// DescribeCloudStorageEvents请求参数结构体
    public struct DescribeCloudStorageEventsRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 起始时间（Unix 时间戳，秒级）, 为0 表示 当前时间 - 24h
        public let startTime: UInt64?

        /// 结束时间（Unix 时间戳，秒级）, 为0 表示当前时间
        public let endTime: UInt64?

        /// 请求上下文, 用作查询游标
        public let context: String?

        /// 查询数据项目的最大数量, 默认为10。假设传Size=10，返回的实际事件数量为N，则 5 <= N <= 10。
        public let size: UInt64?

        /// 事件标识符，可以用来指定查询特定的事件，如果不指定，则查询所有事件。
        public let eventId: String?

        /// 用户ID
        public let userId: String?

        /// 通道ID 非NVR设备则不填 NVR设备则必填 默认为无
        public let channelId: UInt64?

        public init(productId: String, deviceName: String, startTime: UInt64? = nil, endTime: UInt64? = nil, context: String? = nil, size: UInt64? = nil, eventId: String? = nil, userId: String? = nil, channelId: UInt64? = nil) {
            self.productId = productId
            self.deviceName = deviceName
            self.startTime = startTime
            self.endTime = endTime
            self.context = context
            self.size = size
            self.eventId = eventId
            self.userId = userId
            self.channelId = channelId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case context = "Context"
            case size = "Size"
            case eventId = "EventId"
            case userId = "UserId"
            case channelId = "ChannelId"
        }
    }

    /// DescribeCloudStorageEvents返回参数结构体
    public struct DescribeCloudStorageEventsResponse: TCResponseModel {
        /// 云存事件列表
        public let events: [CloudStorageEvent]

        /// 请求上下文, 用作查询游标
        public let context: String

        /// 拉取结果是否已经结束
        public let listover: Bool

        /// 内部结果数量，并不等同于事件总数。
        public let total: UInt64

        /// 视频播放URL
        public let videoURL: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case events = "Events"
            case context = "Context"
            case listover = "Listover"
            case total = "Total"
            case videoURL = "VideoURL"
            case requestId = "RequestId"
        }
    }

    /// 拉取云存事件列表
    @inlinable
    public func describeCloudStorageEvents(_ input: DescribeCloudStorageEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudStorageEventsResponse> {
        self.client.execute(action: "DescribeCloudStorageEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取云存事件列表
    @inlinable
    public func describeCloudStorageEvents(_ input: DescribeCloudStorageEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudStorageEventsResponse {
        try await self.client.execute(action: "DescribeCloudStorageEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取云存事件列表
    @inlinable
    public func describeCloudStorageEvents(productId: String, deviceName: String, startTime: UInt64? = nil, endTime: UInt64? = nil, context: String? = nil, size: UInt64? = nil, eventId: String? = nil, userId: String? = nil, channelId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudStorageEventsResponse> {
        self.describeCloudStorageEvents(DescribeCloudStorageEventsRequest(productId: productId, deviceName: deviceName, startTime: startTime, endTime: endTime, context: context, size: size, eventId: eventId, userId: userId, channelId: channelId), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取云存事件列表
    @inlinable
    public func describeCloudStorageEvents(productId: String, deviceName: String, startTime: UInt64? = nil, endTime: UInt64? = nil, context: String? = nil, size: UInt64? = nil, eventId: String? = nil, userId: String? = nil, channelId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudStorageEventsResponse {
        try await self.describeCloudStorageEvents(DescribeCloudStorageEventsRequest(productId: productId, deviceName: deviceName, startTime: startTime, endTime: endTime, context: context, size: size, eventId: eventId, userId: userId, channelId: channelId), region: region, logger: logger, on: eventLoop)
    }
}
