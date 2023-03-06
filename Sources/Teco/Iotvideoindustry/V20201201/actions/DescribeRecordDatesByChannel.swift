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

import TecoPaginationHelpers

extension Iotvideoindustry {
    /// DescribeRecordDatesByChannel请求参数结构体
    public struct DescribeRecordDatesByChannelRequest: TCPaginatedRequest {
        /// 设备唯一标识
        public let deviceId: String

        /// 通道唯一标识
        public let channelId: String

        /// 1: 云端录制 2: 本地录制
        public let type: Int64

        /// 限制量，默认200
        public let limit: Int64?

        /// 偏移量，默认0
        public let offset: Int64?

        public init(deviceId: String, channelId: String, type: Int64, limit: Int64? = nil, offset: Int64? = nil) {
            self.deviceId = deviceId
            self.channelId = channelId
            self.type = type
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case channelId = "ChannelId"
            case type = "Type"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeRecordDatesByChannelResponse) -> DescribeRecordDatesByChannelRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRecordDatesByChannelRequest(deviceId: self.deviceId, channelId: self.channelId, type: self.type, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeRecordDatesByChannel返回参数结构体
    public struct DescribeRecordDatesByChannelResponse: TCPaginatedResponse {
        /// 含有录像文件的日期列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dates: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dates = "Dates"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [String] {
            self.dates ?? []
        }
    }

    /// 获取设备录像日期列表
    ///
    /// 本接口(DescribeRecordDatesByChannel)用于查询设备含有录像文件的日期列表。
    @inlinable
    public func describeRecordDatesByChannel(_ input: DescribeRecordDatesByChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordDatesByChannelResponse> {
        self.client.execute(action: "DescribeRecordDatesByChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备录像日期列表
    ///
    /// 本接口(DescribeRecordDatesByChannel)用于查询设备含有录像文件的日期列表。
    @inlinable
    public func describeRecordDatesByChannel(_ input: DescribeRecordDatesByChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordDatesByChannelResponse {
        try await self.client.execute(action: "DescribeRecordDatesByChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备录像日期列表
    ///
    /// 本接口(DescribeRecordDatesByChannel)用于查询设备含有录像文件的日期列表。
    @inlinable
    public func describeRecordDatesByChannel(deviceId: String, channelId: String, type: Int64, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordDatesByChannelResponse> {
        let input = DescribeRecordDatesByChannelRequest(deviceId: deviceId, channelId: channelId, type: type, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeRecordDatesByChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备录像日期列表
    ///
    /// 本接口(DescribeRecordDatesByChannel)用于查询设备含有录像文件的日期列表。
    @inlinable
    public func describeRecordDatesByChannel(deviceId: String, channelId: String, type: Int64, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordDatesByChannelResponse {
        let input = DescribeRecordDatesByChannelRequest(deviceId: deviceId, channelId: channelId, type: type, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeRecordDatesByChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备录像日期列表
    ///
    /// 本接口(DescribeRecordDatesByChannel)用于查询设备含有录像文件的日期列表。
    @inlinable
    public func describeRecordDatesByChannelPaginated(_ input: DescribeRecordDatesByChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [String])> {
        self.client.paginate(input: input, region: region, command: self.describeRecordDatesByChannel, logger: logger, on: eventLoop)
    }

    /// 获取设备录像日期列表
    ///
    /// 本接口(DescribeRecordDatesByChannel)用于查询设备含有录像文件的日期列表。
    @inlinable
    public func describeRecordDatesByChannelPaginated(_ input: DescribeRecordDatesByChannelRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRecordDatesByChannelResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRecordDatesByChannel, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取设备录像日期列表
    ///
    /// 本接口(DescribeRecordDatesByChannel)用于查询设备含有录像文件的日期列表。
    @inlinable
    public func describeRecordDatesByChannelPaginator(_ input: DescribeRecordDatesByChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeRecordDatesByChannelRequest, DescribeRecordDatesByChannelResponse>.ResultSequence, responses: TCClient.Paginator<DescribeRecordDatesByChannelRequest, DescribeRecordDatesByChannelResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeRecordDatesByChannelRequest, DescribeRecordDatesByChannelResponse>.ResultSequence(input: input, region: region, command: self.describeRecordDatesByChannel, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeRecordDatesByChannelRequest, DescribeRecordDatesByChannelResponse>.ResponseSequence(input: input, region: region, command: self.describeRecordDatesByChannel, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
