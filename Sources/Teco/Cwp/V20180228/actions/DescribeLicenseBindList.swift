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

import TecoPaginationHelpers

extension Cwp {
    /// DescribeLicenseBindList请求参数结构体
    public struct DescribeLicenseBindListRequest: TCPaginatedRequest {
        /// 授权ID
        public let licenseId: UInt64

        /// 授权类型
        public let licenseType: UInt64

        /// 资源ID
        public let resourceId: String

        /// <li>Keywords 机器别名/公私IP 模糊查询</li>
        public let filters: [Filters]?

        /// 限制条数,默认10.
        public let limit: UInt64?

        /// 偏移量,默认0.
        public let offset: UInt64?

        public init(licenseId: UInt64, licenseType: UInt64, resourceId: String, filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.licenseId = licenseId
            self.licenseType = licenseType
            self.resourceId = resourceId
            self.filters = filters
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case licenseId = "LicenseId"
            case licenseType = "LicenseType"
            case resourceId = "ResourceId"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLicenseBindListResponse) -> DescribeLicenseBindListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLicenseBindListRequest(licenseId: self.licenseId, licenseType: self.licenseType, resourceId: self.resourceId, filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeLicenseBindList返回参数结构体
    public struct DescribeLicenseBindListResponse: TCPaginatedResponse {
        /// 总条数
        public let totalCount: UInt64

        /// 绑定机器列表信息
        public let list: [LicenseBindDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [LicenseBindDetail] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查看授权绑定列表
    ///
    /// 该接口可以获取设置中心-授权管理,某个授权下已绑定的授权机器列表
    @inlinable
    public func describeLicenseBindList(_ input: DescribeLicenseBindListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLicenseBindListResponse> {
        self.client.execute(action: "DescribeLicenseBindList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看授权绑定列表
    ///
    /// 该接口可以获取设置中心-授权管理,某个授权下已绑定的授权机器列表
    @inlinable
    public func describeLicenseBindList(_ input: DescribeLicenseBindListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLicenseBindListResponse {
        try await self.client.execute(action: "DescribeLicenseBindList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看授权绑定列表
    ///
    /// 该接口可以获取设置中心-授权管理,某个授权下已绑定的授权机器列表
    @inlinable
    public func describeLicenseBindList(licenseId: UInt64, licenseType: UInt64, resourceId: String, filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLicenseBindListResponse> {
        let input = DescribeLicenseBindListRequest(licenseId: licenseId, licenseType: licenseType, resourceId: resourceId, filters: filters, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeLicenseBindList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看授权绑定列表
    ///
    /// 该接口可以获取设置中心-授权管理,某个授权下已绑定的授权机器列表
    @inlinable
    public func describeLicenseBindList(licenseId: UInt64, licenseType: UInt64, resourceId: String, filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLicenseBindListResponse {
        let input = DescribeLicenseBindListRequest(licenseId: licenseId, licenseType: licenseType, resourceId: resourceId, filters: filters, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeLicenseBindList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看授权绑定列表
    ///
    /// 该接口可以获取设置中心-授权管理,某个授权下已绑定的授权机器列表
    @inlinable
    public func describeLicenseBindListPaginated(_ input: DescribeLicenseBindListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [LicenseBindDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeLicenseBindList, logger: logger, on: eventLoop)
    }

    /// 查看授权绑定列表
    ///
    /// 该接口可以获取设置中心-授权管理,某个授权下已绑定的授权机器列表
    @inlinable @discardableResult
    public func describeLicenseBindListPaginated(_ input: DescribeLicenseBindListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLicenseBindListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLicenseBindList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看授权绑定列表
    ///
    /// 该接口可以获取设置中心-授权管理,某个授权下已绑定的授权机器列表
    ///
    /// - Returns: `AsyncSequence`s of `LicenseBindDetail` and `DescribeLicenseBindListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLicenseBindListPaginator(_ input: DescribeLicenseBindListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLicenseBindListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLicenseBindList, logger: logger, on: eventLoop)
    }
}
