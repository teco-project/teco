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

extension Cynosdb {
    /// DescribeResourcePackageList请求参数结构体
    public struct DescribeResourcePackageListRequest: TCPaginatedRequest {
        /// 资源包唯一ID
        public let packageId: [String]?

        /// 资源包名称
        public let packageName: [String]?

        /// 资源包类型
        /// CCU-计算资源包，DISK-存储资源包
        public let packageType: [String]?

        /// 资源包使用地域
        /// china-中国内地通用，overseas-港澳台及海外通用
        public let packageRegion: [String]?

        /// 资源包状态
        /// creating-创建中；
        /// using-使用中；
        /// expired-已过期；
        /// normal_finish-使用完；
        /// apply_refund-申请退费中；
        /// refund-已退费。
        public let status: [String]?

        /// 排序条件，支持排序条件:startTime-生效时间，
        /// expireTime-过期时间，packageUsedSpec-使用容量，packageTotalSpec-总存储量。
        /// 按照数组顺序排列；
        public let orderBy: [String]?

        /// 排序方式，DESC-降序，ASC-升序
        public let orderDirection: String?

        /// 偏移量
        public let offset: Int64?

        /// 限制
        public let limit: Int64?

        public init(packageId: [String]? = nil, packageName: [String]? = nil, packageType: [String]? = nil, packageRegion: [String]? = nil, status: [String]? = nil, orderBy: [String]? = nil, orderDirection: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.packageId = packageId
            self.packageName = packageName
            self.packageType = packageType
            self.packageRegion = packageRegion
            self.status = status
            self.orderBy = orderBy
            self.orderDirection = orderDirection
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case packageId = "PackageId"
            case packageName = "PackageName"
            case packageType = "PackageType"
            case packageRegion = "PackageRegion"
            case status = "Status"
            case orderBy = "OrderBy"
            case orderDirection = "OrderDirection"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeResourcePackageListResponse) -> DescribeResourcePackageListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeResourcePackageListRequest(packageId: self.packageId, packageName: self.packageName, packageType: self.packageType, packageRegion: self.packageRegion, status: self.status, orderBy: self.orderBy, orderDirection: self.orderDirection, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeResourcePackageList返回参数结构体
    public struct DescribeResourcePackageListResponse: TCPaginatedResponse {
        /// 总配置数
        public let total: Int64

        /// 资源包明细
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let detail: [Package]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case detail = "Detail"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Package] {
            self.detail ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 查询资源包列表
    @inlinable
    public func describeResourcePackageList(_ input: DescribeResourcePackageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourcePackageListResponse> {
        self.client.execute(action: "DescribeResourcePackageList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资源包列表
    @inlinable
    public func describeResourcePackageList(_ input: DescribeResourcePackageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourcePackageListResponse {
        try await self.client.execute(action: "DescribeResourcePackageList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资源包列表
    @inlinable
    public func describeResourcePackageList(packageId: [String]? = nil, packageName: [String]? = nil, packageType: [String]? = nil, packageRegion: [String]? = nil, status: [String]? = nil, orderBy: [String]? = nil, orderDirection: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourcePackageListResponse> {
        self.describeResourcePackageList(.init(packageId: packageId, packageName: packageName, packageType: packageType, packageRegion: packageRegion, status: status, orderBy: orderBy, orderDirection: orderDirection, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资源包列表
    @inlinable
    public func describeResourcePackageList(packageId: [String]? = nil, packageName: [String]? = nil, packageType: [String]? = nil, packageRegion: [String]? = nil, status: [String]? = nil, orderBy: [String]? = nil, orderDirection: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourcePackageListResponse {
        try await self.describeResourcePackageList(.init(packageId: packageId, packageName: packageName, packageType: packageType, packageRegion: packageRegion, status: status, orderBy: orderBy, orderDirection: orderDirection, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资源包列表
    @inlinable
    public func describeResourcePackageListPaginated(_ input: DescribeResourcePackageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Package])> {
        self.client.paginate(input: input, region: region, command: self.describeResourcePackageList, logger: logger, on: eventLoop)
    }

    /// 查询资源包列表
    @inlinable @discardableResult
    public func describeResourcePackageListPaginated(_ input: DescribeResourcePackageListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeResourcePackageListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeResourcePackageList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询资源包列表
    ///
    /// - Returns: `AsyncSequence`s of `Package` and `DescribeResourcePackageListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeResourcePackageListPaginator(_ input: DescribeResourcePackageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeResourcePackageListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeResourcePackageList, logger: logger, on: eventLoop)
    }
}
