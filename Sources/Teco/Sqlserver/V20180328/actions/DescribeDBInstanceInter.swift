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

extension Sqlserver {
    /// DescribeDBInstanceInter请求参数结构体
    public struct DescribeDBInstanceInterRequest: TCPaginatedRequest {
        /// 分页，页大小，范围是1-100
        public let limit: Int64

        /// 按照实例ID筛选
        public let instanceId: String?

        /// 按照状态筛选 1-互通IP打开中；2-互通IP已经打开；3-加入到互通组中；4-已加入到互通组；5-互通IP回收中；6-互通IP已回收；7-从互通组移除中；8-已从互通组中移除
        public let status: Int64?

        /// 实例版本代号列表
        public let versionSet: [String]?

        /// 实例所在可用区，格式如：ap-guangzhou-2
        public let zone: String?

        /// 分页，页数，默认是0
        public let offset: Int64?

        public init(limit: Int64, instanceId: String? = nil, status: Int64? = nil, versionSet: [String]? = nil, zone: String? = nil, offset: Int64? = nil) {
            self.limit = limit
            self.instanceId = instanceId
            self.status = status
            self.versionSet = versionSet
            self.zone = zone
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case instanceId = "InstanceId"
            case status = "Status"
            case versionSet = "VersionSet"
            case zone = "Zone"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDBInstanceInterResponse) -> DescribeDBInstanceInterRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(limit: self.limit, instanceId: self.instanceId, status: self.status, versionSet: self.versionSet, zone: self.zone, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeDBInstanceInter返回参数结构体
    public struct DescribeDBInstanceInterResponse: TCPaginatedResponse {
        /// 互通组内总条数
        public let totalCount: Int64

        /// 互通组内实例信息详情
        public let interInstanceSet: [InterInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case interInstanceSet = "InterInstanceSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``InterInstance`` list from the paginated response.
        public func getItems() -> [InterInstance] {
            self.interInstanceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询互通实例的信息
    ///
    /// 本接口（DescribeDBInstanceInter）用于查询互通实例的信息。
    @inlinable
    public func describeDBInstanceInter(_ input: DescribeDBInstanceInterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstanceInterResponse> {
        self.client.execute(action: "DescribeDBInstanceInter", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询互通实例的信息
    ///
    /// 本接口（DescribeDBInstanceInter）用于查询互通实例的信息。
    @inlinable
    public func describeDBInstanceInter(_ input: DescribeDBInstanceInterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstanceInterResponse {
        try await self.client.execute(action: "DescribeDBInstanceInter", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询互通实例的信息
    ///
    /// 本接口（DescribeDBInstanceInter）用于查询互通实例的信息。
    @inlinable
    public func describeDBInstanceInter(limit: Int64, instanceId: String? = nil, status: Int64? = nil, versionSet: [String]? = nil, zone: String? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstanceInterResponse> {
        self.describeDBInstanceInter(.init(limit: limit, instanceId: instanceId, status: status, versionSet: versionSet, zone: zone, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询互通实例的信息
    ///
    /// 本接口（DescribeDBInstanceInter）用于查询互通实例的信息。
    @inlinable
    public func describeDBInstanceInter(limit: Int64, instanceId: String? = nil, status: Int64? = nil, versionSet: [String]? = nil, zone: String? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstanceInterResponse {
        try await self.describeDBInstanceInter(.init(limit: limit, instanceId: instanceId, status: status, versionSet: versionSet, zone: zone, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询互通实例的信息
    ///
    /// 本接口（DescribeDBInstanceInter）用于查询互通实例的信息。
    @inlinable
    public func describeDBInstanceInterPaginated(_ input: DescribeDBInstanceInterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InterInstance])> {
        self.client.paginate(input: input, region: region, command: self.describeDBInstanceInter, logger: logger, on: eventLoop)
    }

    /// 查询互通实例的信息
    ///
    /// 本接口（DescribeDBInstanceInter）用于查询互通实例的信息。
    @inlinable @discardableResult
    public func describeDBInstanceInterPaginated(_ input: DescribeDBInstanceInterRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDBInstanceInterResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDBInstanceInter, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询互通实例的信息
    ///
    /// 本接口（DescribeDBInstanceInter）用于查询互通实例的信息。
    ///
    /// - Returns: `AsyncSequence`s of ``InterInstance`` and ``DescribeDBInstanceInterResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDBInstanceInterPaginator(_ input: DescribeDBInstanceInterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDBInstanceInterRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDBInstanceInter, logger: logger, on: eventLoop)
    }
}
