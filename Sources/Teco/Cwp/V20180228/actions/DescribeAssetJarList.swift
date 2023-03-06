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
    /// DescribeAssetJarList请求参数结构体
    public struct DescribeAssetJarListRequest: TCPaginatedRequest {
        /// 服务器Uuid
        public let uuid: String?

        /// 服务器Quuid
        public let quuid: String?

        /// 过滤条件。
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>Name- string - 是否必填：否 - 包名</li>
        /// <li>Type- uint - 是否必填：否 - 类型
        /// 1: 应用程序
        /// 2 : 系统类库
        /// 3 : Web服务自带库
        /// 4 : 其他依赖包</li>
        /// <li>Status- string - 是否必填：否 - 是否可执行：0否，1是</li>
        public let filters: [AssetFilters]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 排序方式，asc升序 或 desc降序
        public let order: String?

        /// 排序方式：[FirstTime]
        public let by: String?

        public init(uuid: String? = nil, quuid: String? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.uuid = uuid
            self.quuid = quuid
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case quuid = "Quuid"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAssetJarListResponse) -> DescribeAssetJarListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetJarListRequest(uuid: self.uuid, quuid: self.quuid, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, order: self.order, by: self.by)
        }
    }

    /// DescribeAssetJarList返回参数结构体
    public struct DescribeAssetJarListResponse: TCPaginatedResponse {
        /// 应用列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jars: [AssetJarBaseInfo]?

        /// 总数量
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jars = "Jars"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AssetJarBaseInfo] {
            self.jars ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询Jar包列表
    @inlinable
    public func describeAssetJarList(_ input: DescribeAssetJarListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetJarListResponse> {
        self.client.execute(action: "DescribeAssetJarList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Jar包列表
    @inlinable
    public func describeAssetJarList(_ input: DescribeAssetJarListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetJarListResponse {
        try await self.client.execute(action: "DescribeAssetJarList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Jar包列表
    @inlinable
    public func describeAssetJarList(uuid: String? = nil, quuid: String? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetJarListResponse> {
        let input = DescribeAssetJarListRequest(uuid: uuid, quuid: quuid, filters: filters, offset: offset, limit: limit, order: order, by: by)
        return self.client.execute(action: "DescribeAssetJarList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Jar包列表
    @inlinable
    public func describeAssetJarList(uuid: String? = nil, quuid: String? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetJarListResponse {
        let input = DescribeAssetJarListRequest(uuid: uuid, quuid: quuid, filters: filters, offset: offset, limit: limit, order: order, by: by)
        return try await self.client.execute(action: "DescribeAssetJarList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
