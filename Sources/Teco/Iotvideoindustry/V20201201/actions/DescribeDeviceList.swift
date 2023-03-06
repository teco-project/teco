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
    /// DescribeDeviceList请求参数结构体
    public struct DescribeDeviceListRequest: TCPaginatedRequest {
        /// 偏移量，默认0
        public let offset: Int64?

        /// 限制，默认200
        public let limit: Int64?

        /// 设备名前缀
        public let nickName: String?

        /// 设备类型，1：国标VMS设备(公有云不支持此类型)，2：国标IPC设备，3：国标NVR设备，9：智能告警设备(公有云不支持此类型)
        public let deviceTypes: [Int64]?

        public init(offset: Int64? = nil, limit: Int64? = nil, nickName: String? = nil, deviceTypes: [Int64]? = nil) {
            self.offset = offset
            self.limit = limit
            self.nickName = nickName
            self.deviceTypes = deviceTypes
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case nickName = "NickName"
            case deviceTypes = "DeviceTypes"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeDeviceListResponse) -> DescribeDeviceListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDeviceListRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, nickName: self.nickName, deviceTypes: self.deviceTypes)
        }
    }

    /// DescribeDeviceList返回参数结构体
    public struct DescribeDeviceListResponse: TCPaginatedResponse {
        /// 设备总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 设备详细信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let devices: [AllDeviceInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case devices = "Devices"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AllDeviceInfo] {
            self.devices ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取设备列表
    ///
    /// 本接口(DescribeDevicesList) 用于获取设备列表，支持模糊搜索
    @inlinable
    public func describeDeviceList(_ input: DescribeDeviceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceListResponse> {
        self.client.execute(action: "DescribeDeviceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 本接口(DescribeDevicesList) 用于获取设备列表，支持模糊搜索
    @inlinable
    public func describeDeviceList(_ input: DescribeDeviceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceListResponse {
        try await self.client.execute(action: "DescribeDeviceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备列表
    ///
    /// 本接口(DescribeDevicesList) 用于获取设备列表，支持模糊搜索
    @inlinable
    public func describeDeviceList(offset: Int64? = nil, limit: Int64? = nil, nickName: String? = nil, deviceTypes: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceListResponse> {
        let input = DescribeDeviceListRequest(offset: offset, limit: limit, nickName: nickName, deviceTypes: deviceTypes)
        return self.client.execute(action: "DescribeDeviceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 本接口(DescribeDevicesList) 用于获取设备列表，支持模糊搜索
    @inlinable
    public func describeDeviceList(offset: Int64? = nil, limit: Int64? = nil, nickName: String? = nil, deviceTypes: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceListResponse {
        let input = DescribeDeviceListRequest(offset: offset, limit: limit, nickName: nickName, deviceTypes: deviceTypes)
        return try await self.client.execute(action: "DescribeDeviceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备列表
    ///
    /// 本接口(DescribeDevicesList) 用于获取设备列表，支持模糊搜索
    @inlinable
    public func describeDeviceListPaginated(_ input: DescribeDeviceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AllDeviceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDeviceList, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 本接口(DescribeDevicesList) 用于获取设备列表，支持模糊搜索
    @inlinable @discardableResult
    public func describeDeviceListPaginated(_ input: DescribeDeviceListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDeviceListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDeviceList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 本接口(DescribeDevicesList) 用于获取设备列表，支持模糊搜索
    ///
    /// - Returns: `AsyncSequence`s of `AllDeviceInfo` and `DescribeDeviceListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDeviceListPaginator(_ input: DescribeDeviceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDeviceListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDeviceList, logger: logger, on: eventLoop)
    }
}
