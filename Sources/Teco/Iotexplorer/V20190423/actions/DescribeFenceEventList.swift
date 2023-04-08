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

extension Iotexplorer {
    /// DescribeFenceEventList请求参数结构体
    public struct DescribeFenceEventListRequest: TCPaginatedRequest {
        /// 围栏告警信息的查询起始时间，Unix时间，单位为毫秒
        public let startTime: Int64

        /// 围栏告警信息的查询结束时间，Unix时间，单位为毫秒
        public let endTime: Int64

        /// 围栏Id
        public let fenceId: Int64?

        /// 翻页偏移量，0起始
        public let offset: Int64?

        /// 最大返回结果数
        public let limit: Int64?

        /// 告警对应的产品Id
        public let productId: String?

        /// 告警对应的设备名称
        public let deviceName: String?

        public init(startTime: Int64, endTime: Int64, fenceId: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, productId: String? = nil, deviceName: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.fenceId = fenceId
            self.offset = offset
            self.limit = limit
            self.productId = productId
            self.deviceName = deviceName
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case fenceId = "FenceId"
            case offset = "Offset"
            case limit = "Limit"
            case productId = "ProductId"
            case deviceName = "DeviceName"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeFenceEventListResponse) -> DescribeFenceEventListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeFenceEventListRequest(startTime: self.startTime, endTime: self.endTime, fenceId: self.fenceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, productId: self.productId, deviceName: self.deviceName)
        }
    }

    /// DescribeFenceEventList返回参数结构体
    public struct DescribeFenceEventListResponse: TCPaginatedResponse {
        /// 围栏告警事件列表
        public let list: [FenceEventItem]

        /// 围栏告警事件总数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [FenceEventItem] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取围栏告警事件列表
    @inlinable
    public func describeFenceEventList(_ input: DescribeFenceEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFenceEventListResponse> {
        self.client.execute(action: "DescribeFenceEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取围栏告警事件列表
    @inlinable
    public func describeFenceEventList(_ input: DescribeFenceEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFenceEventListResponse {
        try await self.client.execute(action: "DescribeFenceEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取围栏告警事件列表
    @inlinable
    public func describeFenceEventList(startTime: Int64, endTime: Int64, fenceId: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, productId: String? = nil, deviceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFenceEventListResponse> {
        self.describeFenceEventList(.init(startTime: startTime, endTime: endTime, fenceId: fenceId, offset: offset, limit: limit, productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取围栏告警事件列表
    @inlinable
    public func describeFenceEventList(startTime: Int64, endTime: Int64, fenceId: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, productId: String? = nil, deviceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFenceEventListResponse {
        try await self.describeFenceEventList(.init(startTime: startTime, endTime: endTime, fenceId: fenceId, offset: offset, limit: limit, productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取围栏告警事件列表
    @inlinable
    public func describeFenceEventListPaginated(_ input: DescribeFenceEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [FenceEventItem])> {
        self.client.paginate(input: input, region: region, command: self.describeFenceEventList, logger: logger, on: eventLoop)
    }

    /// 获取围栏告警事件列表
    @inlinable @discardableResult
    public func describeFenceEventListPaginated(_ input: DescribeFenceEventListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeFenceEventListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeFenceEventList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取围栏告警事件列表
    ///
    /// - Returns: `AsyncSequence`s of `FenceEventItem` and `DescribeFenceEventListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeFenceEventListPaginator(_ input: DescribeFenceEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeFenceEventListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeFenceEventList, logger: logger, on: eventLoop)
    }
}
