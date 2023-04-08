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

extension Teo {
    /// DescribeHostsSetting请求参数结构体
    public struct DescribeHostsSettingRequest: TCPaginatedRequest {
        /// 站点ID
        public let zoneId: String

        /// 分页查询偏移量，默认为 0
        public let offset: Int64?

        /// 分页查询限制数目，默认为 100，最大可设置为 1000
        public let limit: Int64?

        /// 指定域名查询
        public let hosts: [String]?

        public init(zoneId: String, offset: Int64? = nil, limit: Int64? = nil, hosts: [String]? = nil) {
            self.zoneId = zoneId
            self.offset = offset
            self.limit = limit
            self.hosts = hosts
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case offset = "Offset"
            case limit = "Limit"
            case hosts = "Hosts"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeHostsSettingResponse) -> DescribeHostsSettingRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeHostsSettingRequest(zoneId: self.zoneId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, hosts: self.hosts)
        }
    }

    /// DescribeHostsSetting返回参数结构体
    public struct DescribeHostsSettingResponse: TCPaginatedResponse {
        /// 域名列表
        public let hosts: [DetailHost]

        /// 域名数量
        public let totalNumber: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case hosts = "Hosts"
            case totalNumber = "TotalNumber"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DetailHost] {
            self.hosts
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalNumber
        }
    }

    /// 查询域名详细配置
    ///
    /// 用于查询域名配置信息
    @inlinable
    public func describeHostsSetting(_ input: DescribeHostsSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHostsSettingResponse> {
        self.client.execute(action: "DescribeHostsSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询域名详细配置
    ///
    /// 用于查询域名配置信息
    @inlinable
    public func describeHostsSetting(_ input: DescribeHostsSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostsSettingResponse {
        try await self.client.execute(action: "DescribeHostsSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询域名详细配置
    ///
    /// 用于查询域名配置信息
    @inlinable
    public func describeHostsSetting(zoneId: String, offset: Int64? = nil, limit: Int64? = nil, hosts: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHostsSettingResponse> {
        self.describeHostsSetting(.init(zoneId: zoneId, offset: offset, limit: limit, hosts: hosts), region: region, logger: logger, on: eventLoop)
    }

    /// 查询域名详细配置
    ///
    /// 用于查询域名配置信息
    @inlinable
    public func describeHostsSetting(zoneId: String, offset: Int64? = nil, limit: Int64? = nil, hosts: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostsSettingResponse {
        try await self.describeHostsSetting(.init(zoneId: zoneId, offset: offset, limit: limit, hosts: hosts), region: region, logger: logger, on: eventLoop)
    }

    /// 查询域名详细配置
    ///
    /// 用于查询域名配置信息
    @inlinable
    public func describeHostsSettingPaginated(_ input: DescribeHostsSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DetailHost])> {
        self.client.paginate(input: input, region: region, command: self.describeHostsSetting, logger: logger, on: eventLoop)
    }

    /// 查询域名详细配置
    ///
    /// 用于查询域名配置信息
    @inlinable @discardableResult
    public func describeHostsSettingPaginated(_ input: DescribeHostsSettingRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeHostsSettingResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeHostsSetting, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询域名详细配置
    ///
    /// 用于查询域名配置信息
    ///
    /// - Returns: `AsyncSequence`s of `DetailHost` and `DescribeHostsSettingResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeHostsSettingPaginator(_ input: DescribeHostsSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeHostsSettingRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeHostsSetting, logger: logger, on: eventLoop)
    }
}
