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
import TecoPaginationHelpers

extension Iotvideoindustry {
    /// GetVideoListByCon请求参数结构体
    public struct GetVideoListByConRequest: TCPaginatedRequest {
        /// 设备唯一标识
        public let deviceId: String

        /// 偏移量
        public let offset: Int64

        /// 限制量
        public let limit: Int64

        /// 通道唯一标识，对于NVR设备，多通道IPC设备，设备编码与通道编码不一致的IPC设备，此字段为必填
        public let channelId: String?

        /// 0：查询指定日期的录像；1：查询最近一天的录像；默认0
        public let latestDay: Int64?

        /// 指定某天。取值【YYYY-MM-DD】
        /// 为空时默认查询最近一天的记录
        public let date: String?

        /// 1: 云端录制 2: 本地录制
        public let type: Int64?

        public init(deviceId: String, offset: Int64, limit: Int64, channelId: String? = nil, latestDay: Int64? = nil, date: String? = nil, type: Int64? = nil) {
            self.deviceId = deviceId
            self.offset = offset
            self.limit = limit
            self.channelId = channelId
            self.latestDay = latestDay
            self.date = date
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case offset = "Offset"
            case limit = "Limit"
            case channelId = "ChannelId"
            case latestDay = "LatestDay"
            case date = "Date"
            case type = "Type"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetVideoListByConResponse) -> GetVideoListByConRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetVideoListByConRequest(deviceId: self.deviceId, offset: self.offset + .init(response.getItems().count), limit: self.limit, channelId: self.channelId, latestDay: self.latestDay, date: self.date, type: self.type)
        }
    }

    /// GetVideoListByCon返回参数结构体
    public struct GetVideoListByConResponse: TCPaginatedResponse {
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

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RecordTaskItem] {
            self.videoList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取通道录制文件列表（旧）
    ///
    /// 本接口(GetVideoListByCon)用于查询设备的录制文件列表
    /// 请使用DescribeVideoListByChannel接口
    @inlinable
    public func getVideoListByCon(_ input: GetVideoListByConRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetVideoListByConResponse> {
        self.client.execute(action: "GetVideoListByCon", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取通道录制文件列表（旧）
    ///
    /// 本接口(GetVideoListByCon)用于查询设备的录制文件列表
    /// 请使用DescribeVideoListByChannel接口
    @inlinable
    public func getVideoListByCon(_ input: GetVideoListByConRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetVideoListByConResponse {
        try await self.client.execute(action: "GetVideoListByCon", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取通道录制文件列表（旧）
    ///
    /// 本接口(GetVideoListByCon)用于查询设备的录制文件列表
    /// 请使用DescribeVideoListByChannel接口
    @inlinable
    public func getVideoListByCon(deviceId: String, offset: Int64, limit: Int64, channelId: String? = nil, latestDay: Int64? = nil, date: String? = nil, type: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetVideoListByConResponse> {
        self.getVideoListByCon(.init(deviceId: deviceId, offset: offset, limit: limit, channelId: channelId, latestDay: latestDay, date: date, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 获取通道录制文件列表（旧）
    ///
    /// 本接口(GetVideoListByCon)用于查询设备的录制文件列表
    /// 请使用DescribeVideoListByChannel接口
    @inlinable
    public func getVideoListByCon(deviceId: String, offset: Int64, limit: Int64, channelId: String? = nil, latestDay: Int64? = nil, date: String? = nil, type: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetVideoListByConResponse {
        try await self.getVideoListByCon(.init(deviceId: deviceId, offset: offset, limit: limit, channelId: channelId, latestDay: latestDay, date: date, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 获取通道录制文件列表（旧）
    ///
    /// 本接口(GetVideoListByCon)用于查询设备的录制文件列表
    /// 请使用DescribeVideoListByChannel接口
    @inlinable
    public func getVideoListByConPaginated(_ input: GetVideoListByConRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [RecordTaskItem])> {
        self.client.paginate(input: input, region: region, command: self.getVideoListByCon, logger: logger, on: eventLoop)
    }

    /// 获取通道录制文件列表（旧）
    ///
    /// 本接口(GetVideoListByCon)用于查询设备的录制文件列表
    /// 请使用DescribeVideoListByChannel接口
    @inlinable @discardableResult
    public func getVideoListByConPaginated(_ input: GetVideoListByConRequest, region: TCRegion? = nil, onResponse: @escaping (GetVideoListByConResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getVideoListByCon, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取通道录制文件列表（旧）
    ///
    /// 本接口(GetVideoListByCon)用于查询设备的录制文件列表
    /// 请使用DescribeVideoListByChannel接口
    ///
    /// - Returns: `AsyncSequence`s of `RecordTaskItem` and `GetVideoListByConResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func getVideoListByConPaginator(_ input: GetVideoListByConRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetVideoListByConRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getVideoListByCon, logger: logger, on: eventLoop)
    }
}
