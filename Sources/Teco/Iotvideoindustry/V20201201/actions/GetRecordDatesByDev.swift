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
    /// GetRecordDatesByDev请求参数结构体
    public struct GetRecordDatesByDevRequest: TCPaginatedRequest {
        /// 设备唯一标识
        public let deviceId: String

        /// 限制量，默认200
        public let limit: Int64

        /// 偏移量，默认0
        public let offset: Int64

        /// 通道唯一标识，对于NVR设备，多通道IPC设备，设备编码与通道编码不一致的IPC设备，此字段为必填
        public let channelId: String?

        /// 1: 云端录制 2: 本地录制
        public let type: Int64?

        public init(deviceId: String, limit: Int64, offset: Int64, channelId: String? = nil, type: Int64? = nil) {
            self.deviceId = deviceId
            self.limit = limit
            self.offset = offset
            self.channelId = channelId
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case limit = "Limit"
            case offset = "Offset"
            case channelId = "ChannelId"
            case type = "Type"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: GetRecordDatesByDevResponse) -> GetRecordDatesByDevRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetRecordDatesByDevRequest(deviceId: self.deviceId, limit: self.limit, offset: self.offset + .init(response.getItems().count), channelId: self.channelId, type: self.type)
        }
    }

    /// GetRecordDatesByDev返回参数结构体
    public struct GetRecordDatesByDevResponse: TCPaginatedResponse {
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

    /// 获取设备录像日期列表（旧）
    ///
    /// 本接口(GetRecordDatesByDev)用于查询设备含有录像文件的日期列表。
    /// 请使用DescribeRecordDatesByChannel接口
    @inlinable
    public func getRecordDatesByDev(_ input: GetRecordDatesByDevRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRecordDatesByDevResponse> {
        self.client.execute(action: "GetRecordDatesByDev", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备录像日期列表（旧）
    ///
    /// 本接口(GetRecordDatesByDev)用于查询设备含有录像文件的日期列表。
    /// 请使用DescribeRecordDatesByChannel接口
    @inlinable
    public func getRecordDatesByDev(_ input: GetRecordDatesByDevRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRecordDatesByDevResponse {
        try await self.client.execute(action: "GetRecordDatesByDev", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备录像日期列表（旧）
    ///
    /// 本接口(GetRecordDatesByDev)用于查询设备含有录像文件的日期列表。
    /// 请使用DescribeRecordDatesByChannel接口
    @inlinable
    public func getRecordDatesByDev(deviceId: String, limit: Int64, offset: Int64, channelId: String? = nil, type: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRecordDatesByDevResponse> {
        let input = GetRecordDatesByDevRequest(deviceId: deviceId, limit: limit, offset: offset, channelId: channelId, type: type)
        return self.client.execute(action: "GetRecordDatesByDev", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备录像日期列表（旧）
    ///
    /// 本接口(GetRecordDatesByDev)用于查询设备含有录像文件的日期列表。
    /// 请使用DescribeRecordDatesByChannel接口
    @inlinable
    public func getRecordDatesByDev(deviceId: String, limit: Int64, offset: Int64, channelId: String? = nil, type: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRecordDatesByDevResponse {
        let input = GetRecordDatesByDevRequest(deviceId: deviceId, limit: limit, offset: offset, channelId: channelId, type: type)
        return try await self.client.execute(action: "GetRecordDatesByDev", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备录像日期列表（旧）
    ///
    /// 本接口(GetRecordDatesByDev)用于查询设备含有录像文件的日期列表。
    /// 请使用DescribeRecordDatesByChannel接口
    @inlinable
    public func getRecordDatesByDevPaginated(_ input: GetRecordDatesByDevRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [String])> {
        self.client.paginate(input: input, region: region, command: self.getRecordDatesByDev, logger: logger, on: eventLoop)
    }

    /// 获取设备录像日期列表（旧）
    ///
    /// 本接口(GetRecordDatesByDev)用于查询设备含有录像文件的日期列表。
    /// 请使用DescribeRecordDatesByChannel接口
    @inlinable @discardableResult
    public func getRecordDatesByDevPaginated(_ input: GetRecordDatesByDevRequest, region: TCRegion? = nil, onResponse: @escaping (GetRecordDatesByDevResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getRecordDatesByDev, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取设备录像日期列表（旧）
    ///
    /// 本接口(GetRecordDatesByDev)用于查询设备含有录像文件的日期列表。
    /// 请使用DescribeRecordDatesByChannel接口
    ///
    /// - Returns: `AsyncSequence`s of `String` and `GetRecordDatesByDevResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func getRecordDatesByDevPaginator(_ input: GetRecordDatesByDevRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetRecordDatesByDevRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getRecordDatesByDev, logger: logger, on: eventLoop)
    }
}
