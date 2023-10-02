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

extension Iotexplorer {
    /// DescribeDevicePositionList请求参数结构体
    public struct DescribeDevicePositionListRequest: TCPaginatedRequest {
        /// 产品标识列表
        public let productIdList: [String]

        /// 坐标类型
        public let coordinateType: Int64?

        /// 分页偏移
        public let offset: Int64?

        /// 分页的大小
        public let limit: Int64?

        public init(productIdList: [String], coordinateType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.productIdList = productIdList
            self.coordinateType = coordinateType
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case productIdList = "ProductIdList"
            case coordinateType = "CoordinateType"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDevicePositionListResponse) -> DescribeDevicePositionListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(productIdList: self.productIdList, coordinateType: self.coordinateType, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeDevicePositionList返回参数结构体
    public struct DescribeDevicePositionListResponse: TCPaginatedResponse {
        /// 产品设备位置信息列表
        public let positions: [ProductDevicesPositionItem]

        /// 产品设备位置信息的数目
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case positions = "Positions"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ProductDevicesPositionItem`` list from the paginated response.
        public func getItems() -> [ProductDevicesPositionItem] {
            self.positions
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取设备位置列表
    @inlinable
    public func describeDevicePositionList(_ input: DescribeDevicePositionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicePositionListResponse> {
        self.client.execute(action: "DescribeDevicePositionList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备位置列表
    @inlinable
    public func describeDevicePositionList(_ input: DescribeDevicePositionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicePositionListResponse {
        try await self.client.execute(action: "DescribeDevicePositionList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备位置列表
    @inlinable
    public func describeDevicePositionList(productIdList: [String], coordinateType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicePositionListResponse> {
        self.describeDevicePositionList(.init(productIdList: productIdList, coordinateType: coordinateType, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备位置列表
    @inlinable
    public func describeDevicePositionList(productIdList: [String], coordinateType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicePositionListResponse {
        try await self.describeDevicePositionList(.init(productIdList: productIdList, coordinateType: coordinateType, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备位置列表
    @inlinable
    public func describeDevicePositionListPaginated(_ input: DescribeDevicePositionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ProductDevicesPositionItem])> {
        self.client.paginate(input: input, region: region, command: self.describeDevicePositionList, logger: logger, on: eventLoop)
    }

    /// 获取设备位置列表
    @inlinable @discardableResult
    public func describeDevicePositionListPaginated(_ input: DescribeDevicePositionListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDevicePositionListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDevicePositionList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取设备位置列表
    ///
    /// - Returns: `AsyncSequence`s of ``ProductDevicesPositionItem`` and ``DescribeDevicePositionListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDevicePositionListPaginator(_ input: DescribeDevicePositionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDevicePositionListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDevicePositionList, logger: logger, on: eventLoop)
    }
}
