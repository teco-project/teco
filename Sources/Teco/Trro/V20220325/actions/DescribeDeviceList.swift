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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Trro {
    /// DescribeDeviceList请求参数结构体
    public struct DescribeDeviceListRequest: TCPaginatedRequest {
        /// 设备所属项目ID
        public let projectId: String

        /// 设备类型筛选，不填默认为全部设备类型
        public let deviceType: String?

        /// 对设备ID或Name按关键字进行模糊匹配，不填则不进行模糊匹配
        public let searchWords: String?

        /// 每页返回的最大设备数，不填默认为10
        public let pageSize: Int64?

        /// 当前页码，不填默认为1（首页）
        public let pageNumber: Int64?

        public init(projectId: String, deviceType: String? = nil, searchWords: String? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil) {
            self.projectId = projectId
            self.deviceType = deviceType
            self.searchWords = searchWords
            self.pageSize = pageSize
            self.pageNumber = pageNumber
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case deviceType = "DeviceType"
            case searchWords = "SearchWords"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDeviceListResponse) -> DescribeDeviceListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDeviceListRequest(projectId: self.projectId, deviceType: self.deviceType, searchWords: self.searchWords, pageSize: self.pageSize, pageNumber: (self.pageNumber ?? 0) + 1)
        }
    }

    /// DescribeDeviceList返回参数结构体
    public struct DescribeDeviceListResponse: TCPaginatedResponse {
        /// 设备信息列表
        public let devices: [DeviceInfo]

        /// 设备总数
        public let total: Int64

        /// 本次返回的设备数
        public let num: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case devices = "Devices"
            case total = "Total"
            case num = "Num"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DeviceInfo] {
            self.devices
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取设备列表
    ///
    /// 用于获取设备信息列表
    @inlinable
    public func describeDeviceList(_ input: DescribeDeviceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceListResponse> {
        self.client.execute(action: "DescribeDeviceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 用于获取设备信息列表
    @inlinable
    public func describeDeviceList(_ input: DescribeDeviceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceListResponse {
        try await self.client.execute(action: "DescribeDeviceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备列表
    ///
    /// 用于获取设备信息列表
    @inlinable
    public func describeDeviceList(projectId: String, deviceType: String? = nil, searchWords: String? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceListResponse> {
        self.describeDeviceList(.init(projectId: projectId, deviceType: deviceType, searchWords: searchWords, pageSize: pageSize, pageNumber: pageNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 用于获取设备信息列表
    @inlinable
    public func describeDeviceList(projectId: String, deviceType: String? = nil, searchWords: String? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceListResponse {
        try await self.describeDeviceList(.init(projectId: projectId, deviceType: deviceType, searchWords: searchWords, pageSize: pageSize, pageNumber: pageNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 用于获取设备信息列表
    @inlinable
    public func describeDeviceListPaginated(_ input: DescribeDeviceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DeviceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDeviceList, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 用于获取设备信息列表
    @inlinable @discardableResult
    public func describeDeviceListPaginated(_ input: DescribeDeviceListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDeviceListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDeviceList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 用于获取设备信息列表
    ///
    /// - Returns: `AsyncSequence`s of `DeviceInfo` and `DescribeDeviceListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDeviceListPaginator(_ input: DescribeDeviceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDeviceListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDeviceList, logger: logger, on: eventLoop)
    }
}
