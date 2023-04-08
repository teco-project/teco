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
import TecoPaginationHelpers

extension Iotexplorer {
    /// DescribeGatewaySubDeviceList请求参数结构体
    public struct DescribeGatewaySubDeviceListRequest: TCPaginatedRequest {
        /// 网关产品ID
        public let gatewayProductId: String

        /// 网关设备名称
        public let gatewayDeviceName: String

        /// 分页偏移
        public let offset: UInt64

        /// 分页的大小
        public let limit: UInt64

        public init(gatewayProductId: String, gatewayDeviceName: String, offset: UInt64, limit: UInt64) {
            self.gatewayProductId = gatewayProductId
            self.gatewayDeviceName = gatewayDeviceName
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case gatewayProductId = "GatewayProductId"
            case gatewayDeviceName = "GatewayDeviceName"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeGatewaySubDeviceListResponse) -> DescribeGatewaySubDeviceListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeGatewaySubDeviceListRequest(gatewayProductId: self.gatewayProductId, gatewayDeviceName: self.gatewayDeviceName, offset: self.offset + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeGatewaySubDeviceList返回参数结构体
    public struct DescribeGatewaySubDeviceListResponse: TCPaginatedResponse {
        /// 设备的总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 设备列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceList: [FamilySubDevice]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case deviceList = "DeviceList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [FamilySubDevice] {
            self.deviceList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 查询绑定到家庭的网关设备的子设备列表
    @inlinable
    public func describeGatewaySubDeviceList(_ input: DescribeGatewaySubDeviceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGatewaySubDeviceListResponse> {
        self.client.execute(action: "DescribeGatewaySubDeviceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询绑定到家庭的网关设备的子设备列表
    @inlinable
    public func describeGatewaySubDeviceList(_ input: DescribeGatewaySubDeviceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewaySubDeviceListResponse {
        try await self.client.execute(action: "DescribeGatewaySubDeviceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询绑定到家庭的网关设备的子设备列表
    @inlinable
    public func describeGatewaySubDeviceList(gatewayProductId: String, gatewayDeviceName: String, offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGatewaySubDeviceListResponse> {
        self.describeGatewaySubDeviceList(.init(gatewayProductId: gatewayProductId, gatewayDeviceName: gatewayDeviceName, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询绑定到家庭的网关设备的子设备列表
    @inlinable
    public func describeGatewaySubDeviceList(gatewayProductId: String, gatewayDeviceName: String, offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewaySubDeviceListResponse {
        try await self.describeGatewaySubDeviceList(.init(gatewayProductId: gatewayProductId, gatewayDeviceName: gatewayDeviceName, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询绑定到家庭的网关设备的子设备列表
    @inlinable
    public func describeGatewaySubDeviceListPaginated(_ input: DescribeGatewaySubDeviceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [FamilySubDevice])> {
        self.client.paginate(input: input, region: region, command: self.describeGatewaySubDeviceList, logger: logger, on: eventLoop)
    }

    /// 查询绑定到家庭的网关设备的子设备列表
    @inlinable @discardableResult
    public func describeGatewaySubDeviceListPaginated(_ input: DescribeGatewaySubDeviceListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGatewaySubDeviceListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeGatewaySubDeviceList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询绑定到家庭的网关设备的子设备列表
    ///
    /// - Returns: `AsyncSequence`s of `FamilySubDevice` and `DescribeGatewaySubDeviceListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeGatewaySubDeviceListPaginator(_ input: DescribeGatewaySubDeviceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeGatewaySubDeviceListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeGatewaySubDeviceList, logger: logger, on: eventLoop)
    }
}
