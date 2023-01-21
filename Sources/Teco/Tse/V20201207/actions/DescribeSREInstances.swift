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

extension Tse {
    /// DescribeSREInstances请求参数结构体
    public struct DescribeSREInstancesRequest: TCRequestModel {
        /// 请求过滤参数
        public let filters: [Filter]?

        /// 翻页单页查询限制数量[0,1000], 默认值0
        public let limit: Int64?

        /// 翻页单页偏移量，默认值0
        public let offset: Int64?

        /// 查询类型
        public let queryType: String?

        /// 调用方来源
        public let querySource: String?

        public init(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, queryType: String? = nil, querySource: String? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.queryType = queryType
            self.querySource = querySource
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case queryType = "QueryType"
            case querySource = "QuerySource"
        }
    }

    /// DescribeSREInstances返回参数结构体
    public struct DescribeSREInstancesResponse: TCResponseModel {
        /// 总数量
        public let totalCount: Int64

        /// 实例记录
        public let content: [SREInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case content = "Content"
            case requestId = "RequestId"
        }
    }

    /// 查询引擎实例列表
    ///
    /// 用于查询引擎实例列表
    @inlinable
    public func describeSREInstances(_ input: DescribeSREInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSREInstancesResponse> {
        self.client.execute(action: "DescribeSREInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询引擎实例列表
    ///
    /// 用于查询引擎实例列表
    @inlinable
    public func describeSREInstances(_ input: DescribeSREInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSREInstancesResponse {
        try await self.client.execute(action: "DescribeSREInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询引擎实例列表
    ///
    /// 用于查询引擎实例列表
    @inlinable
    public func describeSREInstances(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, queryType: String? = nil, querySource: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSREInstancesResponse> {
        self.describeSREInstances(DescribeSREInstancesRequest(filters: filters, limit: limit, offset: offset, queryType: queryType, querySource: querySource), region: region, logger: logger, on: eventLoop)
    }

    /// 查询引擎实例列表
    ///
    /// 用于查询引擎实例列表
    @inlinable
    public func describeSREInstances(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, queryType: String? = nil, querySource: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSREInstancesResponse {
        try await self.describeSREInstances(DescribeSREInstancesRequest(filters: filters, limit: limit, offset: offset, queryType: queryType, querySource: querySource), region: region, logger: logger, on: eventLoop)
    }
}
