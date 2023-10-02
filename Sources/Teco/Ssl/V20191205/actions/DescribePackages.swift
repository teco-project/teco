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

extension Ssl {
    /// DescribePackages请求参数结构体
    public struct DescribePackagesRequest: TCPaginatedRequest {
        /// 偏移量，默认0。
        public let offset: UInt64?

        /// 限制数目，默认20。
        public let limit: UInt64?

        /// 按状态筛选。
        public let status: String?

        /// 按过期时间升序或降序排列。
        public let expireTime: String?

        /// 按权益包ID搜索。
        public let packageId: String?

        /// 按权益包类型搜索。
        public let type: String?

        /// 子产品编号
        public let pid: Int64?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, status: String? = nil, expireTime: String? = nil, packageId: String? = nil, type: String? = nil, pid: Int64? = nil) {
            self.offset = offset
            self.limit = limit
            self.status = status
            self.expireTime = expireTime
            self.packageId = packageId
            self.type = type
            self.pid = pid
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case status = "Status"
            case expireTime = "ExpireTime"
            case packageId = "PackageId"
            case type = "Type"
            case pid = "Pid"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePackagesResponse) -> DescribePackagesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, status: self.status, expireTime: self.expireTime, packageId: self.packageId, type: self.type, pid: self.pid)
        }
    }

    /// DescribePackages返回参数结构体
    public struct DescribePackagesResponse: TCPaginatedResponse {
        /// 权益包列表。
        public let packages: [PackageInfo]

        /// 总条数。
        public let totalCount: UInt64

        /// 权益点总余额。
        public let totalBalance: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case packages = "Packages"
            case totalCount = "TotalCount"
            case totalBalance = "TotalBalance"
            case requestId = "RequestId"
        }

        /// Extract the returned ``PackageInfo`` list from the paginated response.
        public func getItems() -> [PackageInfo] {
            self.packages
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获得权益包列表
    @inlinable
    public func describePackages(_ input: DescribePackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackagesResponse> {
        self.client.execute(action: "DescribePackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获得权益包列表
    @inlinable
    public func describePackages(_ input: DescribePackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackagesResponse {
        try await self.client.execute(action: "DescribePackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获得权益包列表
    @inlinable
    public func describePackages(offset: UInt64? = nil, limit: UInt64? = nil, status: String? = nil, expireTime: String? = nil, packageId: String? = nil, type: String? = nil, pid: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackagesResponse> {
        self.describePackages(.init(offset: offset, limit: limit, status: status, expireTime: expireTime, packageId: packageId, type: type, pid: pid), region: region, logger: logger, on: eventLoop)
    }

    /// 获得权益包列表
    @inlinable
    public func describePackages(offset: UInt64? = nil, limit: UInt64? = nil, status: String? = nil, expireTime: String? = nil, packageId: String? = nil, type: String? = nil, pid: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackagesResponse {
        try await self.describePackages(.init(offset: offset, limit: limit, status: status, expireTime: expireTime, packageId: packageId, type: type, pid: pid), region: region, logger: logger, on: eventLoop)
    }

    /// 获得权益包列表
    @inlinable
    public func describePackagesPaginated(_ input: DescribePackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PackageInfo])> {
        self.client.paginate(input: input, region: region, command: self.describePackages, logger: logger, on: eventLoop)
    }

    /// 获得权益包列表
    @inlinable @discardableResult
    public func describePackagesPaginated(_ input: DescribePackagesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePackagesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePackages, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获得权益包列表
    ///
    /// - Returns: `AsyncSequence`s of ``PackageInfo`` and ``DescribePackagesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePackagesPaginator(_ input: DescribePackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePackagesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePackages, logger: logger, on: eventLoop)
    }
}
