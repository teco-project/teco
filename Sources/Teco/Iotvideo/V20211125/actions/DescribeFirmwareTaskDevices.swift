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

extension Iotvideo {
    /// DescribeFirmwareTaskDevices请求参数结构体
    public struct DescribeFirmwareTaskDevicesRequest: TCPaginatedRequest {
        /// 产品ID
        public let productID: String

        /// 固件版本
        public let firmwareVersion: String?

        /// 筛选条件
        public let filters: [SearchKeyword]?

        /// 查询偏移量 默认为0
        public let offset: UInt64?

        /// 查询的数量 默认为50
        public let limit: UInt64?

        public init(productID: String, firmwareVersion: String? = nil, filters: [SearchKeyword]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.productID = productID
            self.firmwareVersion = firmwareVersion
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case firmwareVersion = "FirmwareVersion"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeFirmwareTaskDevicesResponse) -> DescribeFirmwareTaskDevicesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(productID: self.productID, firmwareVersion: self.firmwareVersion, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeFirmwareTaskDevices返回参数结构体
    public struct DescribeFirmwareTaskDevicesResponse: TCPaginatedResponse {
        /// 固件升级任务的设备总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 固件升级任务的设备列表
        public let devices: [DeviceUpdateStatus]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case devices = "Devices"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DeviceUpdateStatus`` list from the paginated response.
        public func getItems() -> [DeviceUpdateStatus] {
            self.devices
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询固件升级任务的设备列表
    ///
    /// 本接口用于查询固件升级任务的设备列表
    @inlinable
    public func describeFirmwareTaskDevices(_ input: DescribeFirmwareTaskDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFirmwareTaskDevicesResponse> {
        self.client.execute(action: "DescribeFirmwareTaskDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询固件升级任务的设备列表
    ///
    /// 本接口用于查询固件升级任务的设备列表
    @inlinable
    public func describeFirmwareTaskDevices(_ input: DescribeFirmwareTaskDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFirmwareTaskDevicesResponse {
        try await self.client.execute(action: "DescribeFirmwareTaskDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询固件升级任务的设备列表
    ///
    /// 本接口用于查询固件升级任务的设备列表
    @inlinable
    public func describeFirmwareTaskDevices(productID: String, firmwareVersion: String? = nil, filters: [SearchKeyword]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFirmwareTaskDevicesResponse> {
        self.describeFirmwareTaskDevices(.init(productID: productID, firmwareVersion: firmwareVersion, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询固件升级任务的设备列表
    ///
    /// 本接口用于查询固件升级任务的设备列表
    @inlinable
    public func describeFirmwareTaskDevices(productID: String, firmwareVersion: String? = nil, filters: [SearchKeyword]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFirmwareTaskDevicesResponse {
        try await self.describeFirmwareTaskDevices(.init(productID: productID, firmwareVersion: firmwareVersion, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询固件升级任务的设备列表
    ///
    /// 本接口用于查询固件升级任务的设备列表
    @inlinable
    public func describeFirmwareTaskDevicesPaginated(_ input: DescribeFirmwareTaskDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DeviceUpdateStatus])> {
        self.client.paginate(input: input, region: region, command: self.describeFirmwareTaskDevices, logger: logger, on: eventLoop)
    }

    /// 查询固件升级任务的设备列表
    ///
    /// 本接口用于查询固件升级任务的设备列表
    @inlinable @discardableResult
    public func describeFirmwareTaskDevicesPaginated(_ input: DescribeFirmwareTaskDevicesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeFirmwareTaskDevicesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeFirmwareTaskDevices, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询固件升级任务的设备列表
    ///
    /// 本接口用于查询固件升级任务的设备列表
    ///
    /// - Returns: `AsyncSequence`s of ``DeviceUpdateStatus`` and ``DescribeFirmwareTaskDevicesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeFirmwareTaskDevicesPaginator(_ input: DescribeFirmwareTaskDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeFirmwareTaskDevicesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeFirmwareTaskDevices, logger: logger, on: eventLoop)
    }
}
