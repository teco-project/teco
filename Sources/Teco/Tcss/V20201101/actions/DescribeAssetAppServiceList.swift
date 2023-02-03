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

extension Tcss {
    /// DescribeAssetAppServiceList请求参数结构体
    public struct DescribeAssetAppServiceListRequest: TCRequestModel {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Keywords- String - 是否必填：否 - 模糊查询可选字段</li>
        public let filters: [AssetFilters]?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }
    }

    /// DescribeAssetAppServiceList返回参数结构体
    public struct DescribeAssetAppServiceListResponse: TCResponseModel {
        /// db服务列表
        public let list: [ServiceInfo]

        /// 总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询app服务列表
    ///
    /// 容器安全查询app服务列表
    @inlinable
    public func describeAssetAppServiceList(_ input: DescribeAssetAppServiceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetAppServiceListResponse> {
        self.client.execute(action: "DescribeAssetAppServiceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询app服务列表
    ///
    /// 容器安全查询app服务列表
    @inlinable
    public func describeAssetAppServiceList(_ input: DescribeAssetAppServiceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetAppServiceListResponse {
        try await self.client.execute(action: "DescribeAssetAppServiceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询app服务列表
    ///
    /// 容器安全查询app服务列表
    @inlinable
    public func describeAssetAppServiceList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetAppServiceListResponse> {
        let input = DescribeAssetAppServiceListRequest(limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeAssetAppServiceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询app服务列表
    ///
    /// 容器安全查询app服务列表
    @inlinable
    public func describeAssetAppServiceList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetAppServiceListResponse {
        let input = DescribeAssetAppServiceListRequest(limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeAssetAppServiceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
