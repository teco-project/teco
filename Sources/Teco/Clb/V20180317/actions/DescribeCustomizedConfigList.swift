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

extension Clb {
    /// DescribeCustomizedConfigList请求参数结构体
    public struct DescribeCustomizedConfigListRequest: TCPaginatedRequest {
        /// 配置类型:CLB 负载均衡维度。 SERVER 域名维度。 LOCATION 规则维度。
        public let configType: String

        /// 拉取页偏移，默认值0
        public let offset: Int64?

        /// 拉取数目，默认值20
        public let limit: Int64?

        /// 拉取指定配置名字，模糊匹配。
        public let configName: String?

        /// 配置ID
        public let uconfigIds: [String]?

        /// 过滤条件如下：
        /// <li> loadbalancer-id - String - 是否必填：否 - （过滤条件）按照 负载均衡ID 过滤，如："lb-12345678"。</li>
        /// <li> vip - String - 是否必填：否 - （过滤条件）按照 负载均衡Vip 过滤，如："1.1.1.1","2204::22:3"。</li>
        public let filters: [Filter]?

        public init(configType: String, offset: Int64? = nil, limit: Int64? = nil, configName: String? = nil, uconfigIds: [String]? = nil, filters: [Filter]? = nil) {
            self.configType = configType
            self.offset = offset
            self.limit = limit
            self.configName = configName
            self.uconfigIds = uconfigIds
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case configType = "ConfigType"
            case offset = "Offset"
            case limit = "Limit"
            case configName = "ConfigName"
            case uconfigIds = "UconfigIds"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCustomizedConfigListResponse) -> DescribeCustomizedConfigListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCustomizedConfigListRequest(configType: self.configType, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, configName: self.configName, uconfigIds: self.uconfigIds, filters: self.filters)
        }
    }

    /// DescribeCustomizedConfigList返回参数结构体
    public struct DescribeCustomizedConfigListResponse: TCPaginatedResponse {
        /// 配置列表
        public let configList: [ConfigListItem]

        /// 配置数目
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case configList = "ConfigList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ConfigListItem] {
            self.configList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 拉取配置列表
    ///
    /// 拉取个性化配置列表，返回用户 AppId 下指定类型的配置。
    @inlinable
    public func describeCustomizedConfigList(_ input: DescribeCustomizedConfigListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomizedConfigListResponse> {
        self.client.execute(action: "DescribeCustomizedConfigList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取配置列表
    ///
    /// 拉取个性化配置列表，返回用户 AppId 下指定类型的配置。
    @inlinable
    public func describeCustomizedConfigList(_ input: DescribeCustomizedConfigListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomizedConfigListResponse {
        try await self.client.execute(action: "DescribeCustomizedConfigList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取配置列表
    ///
    /// 拉取个性化配置列表，返回用户 AppId 下指定类型的配置。
    @inlinable
    public func describeCustomizedConfigList(configType: String, offset: Int64? = nil, limit: Int64? = nil, configName: String? = nil, uconfigIds: [String]? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomizedConfigListResponse> {
        let input = DescribeCustomizedConfigListRequest(configType: configType, offset: offset, limit: limit, configName: configName, uconfigIds: uconfigIds, filters: filters)
        return self.client.execute(action: "DescribeCustomizedConfigList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取配置列表
    ///
    /// 拉取个性化配置列表，返回用户 AppId 下指定类型的配置。
    @inlinable
    public func describeCustomizedConfigList(configType: String, offset: Int64? = nil, limit: Int64? = nil, configName: String? = nil, uconfigIds: [String]? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomizedConfigListResponse {
        let input = DescribeCustomizedConfigListRequest(configType: configType, offset: offset, limit: limit, configName: configName, uconfigIds: uconfigIds, filters: filters)
        return try await self.client.execute(action: "DescribeCustomizedConfigList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取配置列表
    ///
    /// 拉取个性化配置列表，返回用户 AppId 下指定类型的配置。
    @inlinable
    public func describeCustomizedConfigListPaginated(_ input: DescribeCustomizedConfigListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ConfigListItem])> {
        self.client.paginate(input: input, region: region, command: self.describeCustomizedConfigList, logger: logger, on: eventLoop)
    }

    /// 拉取配置列表
    ///
    /// 拉取个性化配置列表，返回用户 AppId 下指定类型的配置。
    @inlinable @discardableResult
    public func describeCustomizedConfigListPaginated(_ input: DescribeCustomizedConfigListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCustomizedConfigListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCustomizedConfigList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 拉取配置列表
    ///
    /// 拉取个性化配置列表，返回用户 AppId 下指定类型的配置。
    ///
    /// - Returns: `AsyncSequence`s of `ConfigListItem` and `DescribeCustomizedConfigListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCustomizedConfigListPaginator(_ input: DescribeCustomizedConfigListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCustomizedConfigListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCustomizedConfigList, logger: logger, on: eventLoop)
    }
}
