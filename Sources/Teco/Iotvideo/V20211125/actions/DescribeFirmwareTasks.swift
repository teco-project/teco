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
    /// DescribeFirmwareTasks请求参数结构体
    public struct DescribeFirmwareTasksRequest: TCPaginatedRequest {
        /// 产品ID
        public let productID: String

        /// 固件版本号
        public let firmwareVersion: String

        /// 查询偏移量
        public let offset: UInt64

        /// 返回查询结果条数
        public let limit: UInt64

        /// 搜索过滤条件
        public let filters: [SearchKeyword]?

        public init(productID: String, firmwareVersion: String, offset: UInt64, limit: UInt64, filters: [SearchKeyword]? = nil) {
            self.productID = productID
            self.firmwareVersion = firmwareVersion
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case firmwareVersion = "FirmwareVersion"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeFirmwareTasksResponse) -> DescribeFirmwareTasksRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(productID: self.productID, firmwareVersion: self.firmwareVersion, offset: self.offset + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeFirmwareTasks返回参数结构体
    public struct DescribeFirmwareTasksResponse: TCPaginatedResponse {
        /// 固件升级任务列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskInfos: [FirmwareTaskInfo]?

        /// 固件升级任务总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskInfos = "TaskInfos"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``FirmwareTaskInfo`` list from the paginated response.
        public func getItems() -> [FirmwareTaskInfo] {
            self.taskInfos ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询固件升级任务列表
    ///
    /// 本接口用于查询固件升级任务列表
    @inlinable
    public func describeFirmwareTasks(_ input: DescribeFirmwareTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFirmwareTasksResponse> {
        self.client.execute(action: "DescribeFirmwareTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询固件升级任务列表
    ///
    /// 本接口用于查询固件升级任务列表
    @inlinable
    public func describeFirmwareTasks(_ input: DescribeFirmwareTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFirmwareTasksResponse {
        try await self.client.execute(action: "DescribeFirmwareTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询固件升级任务列表
    ///
    /// 本接口用于查询固件升级任务列表
    @inlinable
    public func describeFirmwareTasks(productID: String, firmwareVersion: String, offset: UInt64, limit: UInt64, filters: [SearchKeyword]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFirmwareTasksResponse> {
        self.describeFirmwareTasks(.init(productID: productID, firmwareVersion: firmwareVersion, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询固件升级任务列表
    ///
    /// 本接口用于查询固件升级任务列表
    @inlinable
    public func describeFirmwareTasks(productID: String, firmwareVersion: String, offset: UInt64, limit: UInt64, filters: [SearchKeyword]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFirmwareTasksResponse {
        try await self.describeFirmwareTasks(.init(productID: productID, firmwareVersion: firmwareVersion, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询固件升级任务列表
    ///
    /// 本接口用于查询固件升级任务列表
    @inlinable
    public func describeFirmwareTasksPaginated(_ input: DescribeFirmwareTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [FirmwareTaskInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeFirmwareTasks, logger: logger, on: eventLoop)
    }

    /// 查询固件升级任务列表
    ///
    /// 本接口用于查询固件升级任务列表
    @inlinable @discardableResult
    public func describeFirmwareTasksPaginated(_ input: DescribeFirmwareTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeFirmwareTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeFirmwareTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询固件升级任务列表
    ///
    /// 本接口用于查询固件升级任务列表
    ///
    /// - Returns: `AsyncSequence`s of ``FirmwareTaskInfo`` and ``DescribeFirmwareTasksResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeFirmwareTasksPaginator(_ input: DescribeFirmwareTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeFirmwareTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeFirmwareTasks, logger: logger, on: eventLoop)
    }
}
