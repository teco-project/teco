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

extension Iotvideoindustry {
    /// DescribeVideoListByChannel请求参数结构体
    public struct DescribeVideoListByChannelRequest: TCPaginatedRequest {
        /// 设备唯一标识
        public let deviceId: String

        /// 通道唯一标识
        public let channelId: String

        /// 1: 云端录制 2: 本地录制
        public let type: Int64

        /// 指定某天。取值【YYYY-MM-DD】
        /// 为空时默认查询最近一天的记录
        public let date: String?

        /// 限制量，默认2000
        public let limit: Int64?

        /// 偏移量，默认0
        public let offset: Int64?

        public init(deviceId: String, channelId: String, type: Int64, date: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.deviceId = deviceId
            self.channelId = channelId
            self.type = type
            self.date = date
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case channelId = "ChannelId"
            case type = "Type"
            case date = "Date"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVideoListByChannelResponse) -> DescribeVideoListByChannelRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(deviceId: self.deviceId, channelId: self.channelId, type: self.type, date: self.date, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeVideoListByChannel返回参数结构体
    public struct DescribeVideoListByChannelResponse: TCPaginatedResponse {
        /// 录像详情列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let videoList: [RecordTaskItem]?

        /// 录像总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case videoList = "VideoList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``RecordTaskItem`` list from the paginated response.
        public func getItems() -> [RecordTaskItem] {
            self.videoList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取通道录制文件列表
    ///
    /// 本接口(DescribeVideoListByChannel)用于查询指定通道的录制文件列表
    @inlinable
    public func describeVideoListByChannel(_ input: DescribeVideoListByChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVideoListByChannelResponse> {
        self.client.execute(action: "DescribeVideoListByChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取通道录制文件列表
    ///
    /// 本接口(DescribeVideoListByChannel)用于查询指定通道的录制文件列表
    @inlinable
    public func describeVideoListByChannel(_ input: DescribeVideoListByChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVideoListByChannelResponse {
        try await self.client.execute(action: "DescribeVideoListByChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取通道录制文件列表
    ///
    /// 本接口(DescribeVideoListByChannel)用于查询指定通道的录制文件列表
    @inlinable
    public func describeVideoListByChannel(deviceId: String, channelId: String, type: Int64, date: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVideoListByChannelResponse> {
        self.describeVideoListByChannel(.init(deviceId: deviceId, channelId: channelId, type: type, date: date, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取通道录制文件列表
    ///
    /// 本接口(DescribeVideoListByChannel)用于查询指定通道的录制文件列表
    @inlinable
    public func describeVideoListByChannel(deviceId: String, channelId: String, type: Int64, date: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVideoListByChannelResponse {
        try await self.describeVideoListByChannel(.init(deviceId: deviceId, channelId: channelId, type: type, date: date, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取通道录制文件列表
    ///
    /// 本接口(DescribeVideoListByChannel)用于查询指定通道的录制文件列表
    @inlinable
    public func describeVideoListByChannelPaginated(_ input: DescribeVideoListByChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [RecordTaskItem])> {
        self.client.paginate(input: input, region: region, command: self.describeVideoListByChannel, logger: logger, on: eventLoop)
    }

    /// 获取通道录制文件列表
    ///
    /// 本接口(DescribeVideoListByChannel)用于查询指定通道的录制文件列表
    @inlinable @discardableResult
    public func describeVideoListByChannelPaginated(_ input: DescribeVideoListByChannelRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVideoListByChannelResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVideoListByChannel, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取通道录制文件列表
    ///
    /// 本接口(DescribeVideoListByChannel)用于查询指定通道的录制文件列表
    ///
    /// - Returns: `AsyncSequence`s of ``RecordTaskItem`` and ``DescribeVideoListByChannelResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVideoListByChannelPaginator(_ input: DescribeVideoListByChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVideoListByChannelRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVideoListByChannel, logger: logger, on: eventLoop)
    }
}
