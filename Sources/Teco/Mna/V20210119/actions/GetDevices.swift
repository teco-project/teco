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

extension Mna {
    /// GetDevices请求参数结构体
    public struct GetDevicesRequest: TCPaginatedRequest {
        /// 每页显示记录数，PageSize、PageNumber值均为-1 时，按照1页无限制条数匹配所有设备
        public let pageSize: Int64

        /// 当前查看页码，PageSize、PageNumber值均为-1 时，按照1页无限制条数匹配所有设备
        public let pageNumber: Int64

        /// 搜索设备的关键字（ID或者设备名），为空时匹配所有设备
        public let keyword: String?

        /// DeviceType
        /// 不传：返回所有设备；
        /// 1:自有设备；
        /// 2:三方设备
        public let deviceType: Int64?

        public init(pageSize: Int64, pageNumber: Int64, keyword: String? = nil, deviceType: Int64? = nil) {
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.keyword = keyword
            self.deviceType = deviceType
        }

        enum CodingKeys: String, CodingKey {
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case keyword = "Keyword"
            case deviceType = "DeviceType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetDevicesResponse) -> GetDevicesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(pageSize: self.pageSize, pageNumber: self.pageNumber + 1, keyword: self.keyword, deviceType: self.deviceType)
        }
    }

    /// GetDevices返回参数结构体
    public struct GetDevicesResponse: TCPaginatedResponse {
        /// 设备信息列表
        public let deviceInfos: [DeviceBaseInfo]

        /// 设备总记录条数
        public let length: Int64

        /// 总页数
        public let totalPage: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case deviceInfos = "DeviceInfos"
            case length = "Length"
            case totalPage = "TotalPage"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DeviceBaseInfo`` list from the paginated response.
        public func getItems() -> [DeviceBaseInfo] {
            self.deviceInfos
        }
    }

    /// 设备信息列表
    ///
    /// 获取设备信息列表
    @inlinable
    public func getDevices(_ input: GetDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDevicesResponse> {
        self.client.execute(action: "GetDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设备信息列表
    ///
    /// 获取设备信息列表
    @inlinable
    public func getDevices(_ input: GetDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDevicesResponse {
        try await self.client.execute(action: "GetDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设备信息列表
    ///
    /// 获取设备信息列表
    @inlinable
    public func getDevices(pageSize: Int64, pageNumber: Int64, keyword: String? = nil, deviceType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDevicesResponse> {
        self.getDevices(.init(pageSize: pageSize, pageNumber: pageNumber, keyword: keyword, deviceType: deviceType), region: region, logger: logger, on: eventLoop)
    }

    /// 设备信息列表
    ///
    /// 获取设备信息列表
    @inlinable
    public func getDevices(pageSize: Int64, pageNumber: Int64, keyword: String? = nil, deviceType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDevicesResponse {
        try await self.getDevices(.init(pageSize: pageSize, pageNumber: pageNumber, keyword: keyword, deviceType: deviceType), region: region, logger: logger, on: eventLoop)
    }

    /// 设备信息列表
    ///
    /// 获取设备信息列表
    @inlinable
    public func getDevicesPaginated(_ input: GetDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [DeviceBaseInfo])> {
        self.client.paginate(input: input, region: region, command: self.getDevices, logger: logger, on: eventLoop)
    }

    /// 设备信息列表
    ///
    /// 获取设备信息列表
    @inlinable @discardableResult
    public func getDevicesPaginated(_ input: GetDevicesRequest, region: TCRegion? = nil, onResponse: @escaping (GetDevicesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getDevices, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 设备信息列表
    ///
    /// 获取设备信息列表
    ///
    /// - Returns: `AsyncSequence`s of ``DeviceBaseInfo`` and ``GetDevicesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func getDevicesPaginator(_ input: GetDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetDevicesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getDevices, logger: logger, on: eventLoop)
    }
}
