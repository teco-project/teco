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

extension Ssa {
    /// DescribeMappingResults请求参数结构体
    public struct DescribeMappingResultsRequest: TCRequestModel {
        /// 过滤条件，FilterKey 取值范围：AssetId，AssetIp，PrivateIp，Protocol，Service，OS，Process，Component，AssetType，Domain，Port，LastMappingTime，MappingType，Disposal，Vpc
        public let filter: [AssetQueryFilter]?

        /// 排序条件，SortKey取值范围：CreateTime，LastMappingTime
        public let sorter: [QuerySort]?

        /// 页码
        public let pageIndex: UInt64?

        /// 页大小，默认大小20
        public let pageSize: UInt64?

        public init(filter: [AssetQueryFilter]? = nil, sorter: [QuerySort]? = nil, pageIndex: UInt64? = nil, pageSize: UInt64? = nil) {
            self.filter = filter
            self.sorter = sorter
            self.pageIndex = pageIndex
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case filter = "Filter"
            case sorter = "Sorter"
            case pageIndex = "PageIndex"
            case pageSize = "PageSize"
        }
    }

    /// DescribeMappingResults返回参数结构体
    public struct DescribeMappingResultsResponse: TCResponseModel {
        /// 总记录数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: Results?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取测绘列表
    @inlinable
    public func describeMappingResults(_ input: DescribeMappingResultsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMappingResultsResponse> {
        self.client.execute(action: "DescribeMappingResults", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取测绘列表
    @inlinable
    public func describeMappingResults(_ input: DescribeMappingResultsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMappingResultsResponse {
        try await self.client.execute(action: "DescribeMappingResults", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取测绘列表
    @inlinable
    public func describeMappingResults(filter: [AssetQueryFilter]? = nil, sorter: [QuerySort]? = nil, pageIndex: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMappingResultsResponse> {
        let input = DescribeMappingResultsRequest(filter: filter, sorter: sorter, pageIndex: pageIndex, pageSize: pageSize)
        return self.client.execute(action: "DescribeMappingResults", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取测绘列表
    @inlinable
    public func describeMappingResults(filter: [AssetQueryFilter]? = nil, sorter: [QuerySort]? = nil, pageIndex: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMappingResultsResponse {
        let input = DescribeMappingResultsRequest(filter: filter, sorter: sorter, pageIndex: pageIndex, pageSize: pageSize)
        return try await self.client.execute(action: "DescribeMappingResults", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
