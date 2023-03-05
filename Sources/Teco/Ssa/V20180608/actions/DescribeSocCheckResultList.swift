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

extension Ssa {
    /// DescribeSocCheckResultList请求参数结构体
    public struct DescribeSocCheckResultListRequest: TCPaginatedRequest {
        /// 查询参数,可支持的查询参数：
        /// Name,Type,AssetType,Result,PloyName,PloyId
        public let filter: [QueryFilter]?

        /// 排序参数,可支持的排序参数：CheckStatus,RiskCount
        public let sorter: [QuerySort]?

        /// 当前页码数据，默认值为10
        public let pageSize: Int64?

        /// 当前页面索引，默认值为0
        public let pageIndex: Int64?

        /// 资产id
        public let assetId: String?

        public init(filter: [QueryFilter]? = nil, sorter: [QuerySort]? = nil, pageSize: Int64? = nil, pageIndex: Int64? = nil, assetId: String? = nil) {
            self.filter = filter
            self.sorter = sorter
            self.pageSize = pageSize
            self.pageIndex = pageIndex
            self.assetId = assetId
        }

        enum CodingKeys: String, CodingKey {
            case filter = "Filter"
            case sorter = "Sorter"
            case pageSize = "PageSize"
            case pageIndex = "PageIndex"
            case assetId = "AssetId"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeSocCheckResultListResponse) -> DescribeSocCheckResultListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSocCheckResultListRequest(filter: self.filter, sorter: self.sorter, pageSize: self.pageSize, pageIndex: (self.pageIndex ?? 0) + 1, assetId: self.assetId)
        }
    }

    /// DescribeSocCheckResultList返回参数结构体
    public struct DescribeSocCheckResultListResponse: TCPaginatedResponse {
        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: DescribeSocCheckResultListRspRsp?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the total count from the paginated response.
        public func getItems() -> [SocCheckResult] {
            self.data?.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data?.total
        }
    }

    /// 云安全配置检查项结果列表
    @inlinable
    public func describeSocCheckResultList(_ input: DescribeSocCheckResultListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSocCheckResultListResponse> {
        self.client.execute(action: "DescribeSocCheckResultList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云安全配置检查项结果列表
    @inlinable
    public func describeSocCheckResultList(_ input: DescribeSocCheckResultListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSocCheckResultListResponse {
        try await self.client.execute(action: "DescribeSocCheckResultList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云安全配置检查项结果列表
    @inlinable
    public func describeSocCheckResultList(filter: [QueryFilter]? = nil, sorter: [QuerySort]? = nil, pageSize: Int64? = nil, pageIndex: Int64? = nil, assetId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSocCheckResultListResponse> {
        let input = DescribeSocCheckResultListRequest(filter: filter, sorter: sorter, pageSize: pageSize, pageIndex: pageIndex, assetId: assetId)
        return self.client.execute(action: "DescribeSocCheckResultList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云安全配置检查项结果列表
    @inlinable
    public func describeSocCheckResultList(filter: [QueryFilter]? = nil, sorter: [QuerySort]? = nil, pageSize: Int64? = nil, pageIndex: Int64? = nil, assetId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSocCheckResultListResponse {
        let input = DescribeSocCheckResultListRequest(filter: filter, sorter: sorter, pageSize: pageSize, pageIndex: pageIndex, assetId: assetId)
        return try await self.client.execute(action: "DescribeSocCheckResultList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
