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

extension Iot {
    /// GetDevices请求参数结构体
    public struct GetDevicesRequest: TCPaginatedRequest {
        /// 产品Id
        public let productId: String

        /// 偏移
        public let offset: UInt64?

        /// 长度
        public let length: UInt64?

        /// 关键字查询
        public let keyword: String?

        public init(productId: String, offset: UInt64? = nil, length: UInt64? = nil, keyword: String? = nil) {
            self.productId = productId
            self.offset = offset
            self.length = length
            self.keyword = keyword
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case offset = "Offset"
            case length = "Length"
            case keyword = "Keyword"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetDevicesResponse) -> GetDevicesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(productId: self.productId, offset: (self.offset ?? 0) + .init(response.getItems().count), length: self.length, keyword: self.keyword)
        }
    }

    /// GetDevices返回参数结构体
    public struct GetDevicesResponse: TCPaginatedResponse {
        /// 设备列表
        public let devices: [DeviceEntry]

        /// 设备总数
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case devices = "Devices"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DeviceEntry`` list from the paginated response.
        public func getItems() -> [DeviceEntry] {
            self.devices
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取设备列表
    ///
    /// 提供分页查询某个产品Id下设备信息的能力。
    @inlinable
    public func getDevices(_ input: GetDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDevicesResponse> {
        self.client.execute(action: "GetDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 提供分页查询某个产品Id下设备信息的能力。
    @inlinable
    public func getDevices(_ input: GetDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDevicesResponse {
        try await self.client.execute(action: "GetDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备列表
    ///
    /// 提供分页查询某个产品Id下设备信息的能力。
    @inlinable
    public func getDevices(productId: String, offset: UInt64? = nil, length: UInt64? = nil, keyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDevicesResponse> {
        self.getDevices(.init(productId: productId, offset: offset, length: length, keyword: keyword), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 提供分页查询某个产品Id下设备信息的能力。
    @inlinable
    public func getDevices(productId: String, offset: UInt64? = nil, length: UInt64? = nil, keyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDevicesResponse {
        try await self.getDevices(.init(productId: productId, offset: offset, length: length, keyword: keyword), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 提供分页查询某个产品Id下设备信息的能力。
    @inlinable
    public func getDevicesPaginated(_ input: GetDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DeviceEntry])> {
        self.client.paginate(input: input, region: region, command: self.getDevices, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 提供分页查询某个产品Id下设备信息的能力。
    @inlinable @discardableResult
    public func getDevicesPaginated(_ input: GetDevicesRequest, region: TCRegion? = nil, onResponse: @escaping (GetDevicesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getDevices, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 提供分页查询某个产品Id下设备信息的能力。
    ///
    /// - Returns: `AsyncSequence`s of ``DeviceEntry`` and ``GetDevicesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func getDevicesPaginator(_ input: GetDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetDevicesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getDevices, logger: logger, on: eventLoop)
    }
}
