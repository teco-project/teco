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
    /// DescribeGroupDevices请求参数结构体
    public struct DescribeGroupDevicesRequest: TCPaginatedRequest {
        /// 分组ID
        public let groupId: String

        /// 偏移量，默认0
        public let offset: Int64?

        /// 限制值，默认200
        public let limit: Int64?

        /// 设备名称，根据设备名称模糊匹配时必填
        public let nickName: String?

        /// 过滤不可录制设备
        public let recordable: Int64?

        /// 当Group是普通组的时候，支持根据DeviceTypes筛选类型，
        ///  设备类型，1：国标VMS设备(公有云不支持此类型)，2：国标IPC设备，3：国标NVR设备，9：智能告警设备(公有云不支持此类型)
        public let deviceTypes: [Int64]?

        public init(groupId: String, offset: Int64? = nil, limit: Int64? = nil, nickName: String? = nil, recordable: Int64? = nil, deviceTypes: [Int64]? = nil) {
            self.groupId = groupId
            self.offset = offset
            self.limit = limit
            self.nickName = nickName
            self.recordable = recordable
            self.deviceTypes = deviceTypes
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case offset = "Offset"
            case limit = "Limit"
            case nickName = "NickName"
            case recordable = "Recordable"
            case deviceTypes = "DeviceTypes"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeGroupDevicesResponse) -> DescribeGroupDevicesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeGroupDevicesRequest(groupId: self.groupId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, nickName: self.nickName, recordable: self.recordable, deviceTypes: self.deviceTypes)
        }
    }

    /// DescribeGroupDevices返回参数结构体
    public struct DescribeGroupDevicesResponse: TCPaginatedResponse {
        /// 分组绑定的设备数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 设备详情列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceList: [GroupDeviceItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case deviceList = "DeviceList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [GroupDeviceItem] {
            self.deviceList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询分组下的设备
    ///
    /// 本接口(DescribeGroupDevices)用于查询分组下的设备列表。
    @inlinable
    public func describeGroupDevices(_ input: DescribeGroupDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupDevicesResponse> {
        self.client.execute(action: "DescribeGroupDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询分组下的设备
    ///
    /// 本接口(DescribeGroupDevices)用于查询分组下的设备列表。
    @inlinable
    public func describeGroupDevices(_ input: DescribeGroupDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupDevicesResponse {
        try await self.client.execute(action: "DescribeGroupDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询分组下的设备
    ///
    /// 本接口(DescribeGroupDevices)用于查询分组下的设备列表。
    @inlinable
    public func describeGroupDevices(groupId: String, offset: Int64? = nil, limit: Int64? = nil, nickName: String? = nil, recordable: Int64? = nil, deviceTypes: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupDevicesResponse> {
        self.describeGroupDevices(.init(groupId: groupId, offset: offset, limit: limit, nickName: nickName, recordable: recordable, deviceTypes: deviceTypes), region: region, logger: logger, on: eventLoop)
    }

    /// 查询分组下的设备
    ///
    /// 本接口(DescribeGroupDevices)用于查询分组下的设备列表。
    @inlinable
    public func describeGroupDevices(groupId: String, offset: Int64? = nil, limit: Int64? = nil, nickName: String? = nil, recordable: Int64? = nil, deviceTypes: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupDevicesResponse {
        try await self.describeGroupDevices(.init(groupId: groupId, offset: offset, limit: limit, nickName: nickName, recordable: recordable, deviceTypes: deviceTypes), region: region, logger: logger, on: eventLoop)
    }

    /// 查询分组下的设备
    ///
    /// 本接口(DescribeGroupDevices)用于查询分组下的设备列表。
    @inlinable
    public func describeGroupDevicesPaginated(_ input: DescribeGroupDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [GroupDeviceItem])> {
        self.client.paginate(input: input, region: region, command: self.describeGroupDevices, logger: logger, on: eventLoop)
    }

    /// 查询分组下的设备
    ///
    /// 本接口(DescribeGroupDevices)用于查询分组下的设备列表。
    @inlinable @discardableResult
    public func describeGroupDevicesPaginated(_ input: DescribeGroupDevicesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGroupDevicesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeGroupDevices, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询分组下的设备
    ///
    /// 本接口(DescribeGroupDevices)用于查询分组下的设备列表。
    ///
    /// - Returns: `AsyncSequence`s of `GroupDeviceItem` and `DescribeGroupDevicesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeGroupDevicesPaginator(_ input: DescribeGroupDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeGroupDevicesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeGroupDevices, logger: logger, on: eventLoop)
    }
}
