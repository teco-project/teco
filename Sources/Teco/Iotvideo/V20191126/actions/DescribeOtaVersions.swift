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

extension Iotvideo {
    /// DescribeOtaVersions请求参数结构体
    public struct DescribeOtaVersionsRequest: TCPaginatedRequest {
        /// 分页偏移量
        public let offset: UInt64

        /// 每页数量，0<取值范围<=100
        public let limit: UInt64

        /// 产品ID，为空时查询客户所有产品的版本信息
        public let productId: String?

        /// 版本号，支持模糊匹配
        public let otaVersion: String?

        /// 版本类型 1未发布 2测试发布 3正式发布 4禁用
        public let pubStatus: UInt64?

        public init(offset: UInt64, limit: UInt64, productId: String? = nil, otaVersion: String? = nil, pubStatus: UInt64? = nil) {
            self.offset = offset
            self.limit = limit
            self.productId = productId
            self.otaVersion = otaVersion
            self.pubStatus = pubStatus
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case productId = "ProductId"
            case otaVersion = "OtaVersion"
            case pubStatus = "PubStatus"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeOtaVersionsResponse) -> DescribeOtaVersionsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeOtaVersionsRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, productId: self.productId, otaVersion: self.otaVersion, pubStatus: self.pubStatus)
        }
    }

    /// DescribeOtaVersions返回参数结构体
    public struct DescribeOtaVersionsResponse: TCPaginatedResponse {
        /// 版本数量
        public let totalCount: Int64

        /// 版本详细信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [VersionData]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [VersionData] {
            self.data ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询固件版本信息列表
    ///
    /// 本接口（DescribeOtaVersions）用于查询固件版本信息列表。
    @inlinable
    public func describeOtaVersions(_ input: DescribeOtaVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOtaVersionsResponse> {
        self.client.execute(action: "DescribeOtaVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询固件版本信息列表
    ///
    /// 本接口（DescribeOtaVersions）用于查询固件版本信息列表。
    @inlinable
    public func describeOtaVersions(_ input: DescribeOtaVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOtaVersionsResponse {
        try await self.client.execute(action: "DescribeOtaVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询固件版本信息列表
    ///
    /// 本接口（DescribeOtaVersions）用于查询固件版本信息列表。
    @inlinable
    public func describeOtaVersions(offset: UInt64, limit: UInt64, productId: String? = nil, otaVersion: String? = nil, pubStatus: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOtaVersionsResponse> {
        let input = DescribeOtaVersionsRequest(offset: offset, limit: limit, productId: productId, otaVersion: otaVersion, pubStatus: pubStatus)
        return self.client.execute(action: "DescribeOtaVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询固件版本信息列表
    ///
    /// 本接口（DescribeOtaVersions）用于查询固件版本信息列表。
    @inlinable
    public func describeOtaVersions(offset: UInt64, limit: UInt64, productId: String? = nil, otaVersion: String? = nil, pubStatus: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOtaVersionsResponse {
        let input = DescribeOtaVersionsRequest(offset: offset, limit: limit, productId: productId, otaVersion: otaVersion, pubStatus: pubStatus)
        return try await self.client.execute(action: "DescribeOtaVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询固件版本信息列表
    ///
    /// 本接口（DescribeOtaVersions）用于查询固件版本信息列表。
    @inlinable
    public func describeOtaVersionsPaginated(_ input: DescribeOtaVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [VersionData])> {
        self.client.paginate(input: input, region: region, command: self.describeOtaVersions, logger: logger, on: eventLoop)
    }

    /// 查询固件版本信息列表
    ///
    /// 本接口（DescribeOtaVersions）用于查询固件版本信息列表。
    @inlinable
    public func describeOtaVersionsPaginated(_ input: DescribeOtaVersionsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeOtaVersionsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeOtaVersions, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询固件版本信息列表
    ///
    /// 本接口（DescribeOtaVersions）用于查询固件版本信息列表。
    @inlinable
    public func describeOtaVersionsPaginator(_ input: DescribeOtaVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeOtaVersionsRequest, DescribeOtaVersionsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeOtaVersionsRequest, DescribeOtaVersionsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeOtaVersionsRequest, DescribeOtaVersionsResponse>.ResultSequence(input: input, region: region, command: self.describeOtaVersions, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeOtaVersionsRequest, DescribeOtaVersionsResponse>.ResponseSequence(input: input, region: region, command: self.describeOtaVersions, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
