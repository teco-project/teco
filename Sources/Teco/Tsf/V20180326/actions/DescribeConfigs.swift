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

extension Tsf {
    /// DescribeConfigs请求参数结构体
    public struct DescribeConfigsRequest: TCPaginatedRequest {
        /// 应用ID，不传入时查询全量
        public let applicationId: String?

        /// 配置项ID，不传入时查询全量，高优先级
        public let configId: String?

        /// 偏移量
        public let offset: Int64?

        /// 每页条数
        public let limit: Int64?

        /// 配置项ID列表，不传入时查询全量，低优先级
        public let configIdList: [String]?

        /// 配置项名称，精确查询，不传入时查询全量
        public let configName: String?

        /// 配置项版本，精确查询，不传入时查询全量
        public let configVersion: String?

        public init(applicationId: String? = nil, configId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, configIdList: [String]? = nil, configName: String? = nil, configVersion: String? = nil) {
            self.applicationId = applicationId
            self.configId = configId
            self.offset = offset
            self.limit = limit
            self.configIdList = configIdList
            self.configName = configName
            self.configVersion = configVersion
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case configId = "ConfigId"
            case offset = "Offset"
            case limit = "Limit"
            case configIdList = "ConfigIdList"
            case configName = "ConfigName"
            case configVersion = "ConfigVersion"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeConfigsResponse) -> DescribeConfigsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(applicationId: self.applicationId, configId: self.configId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, configIdList: self.configIdList, configName: self.configName, configVersion: self.configVersion)
        }
    }

    /// DescribeConfigs返回参数结构体
    public struct DescribeConfigsResponse: TCPaginatedResponse {
        /// 分页后的配置项列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageConfig?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Config`` list from the paginated response.
        public func getItems() -> [Config] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询配置项列表
    @inlinable
    public func describeConfigs(_ input: DescribeConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigsResponse> {
        self.client.execute(action: "DescribeConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询配置项列表
    @inlinable
    public func describeConfigs(_ input: DescribeConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigsResponse {
        try await self.client.execute(action: "DescribeConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询配置项列表
    @inlinable
    public func describeConfigs(applicationId: String? = nil, configId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, configIdList: [String]? = nil, configName: String? = nil, configVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigsResponse> {
        self.describeConfigs(.init(applicationId: applicationId, configId: configId, offset: offset, limit: limit, configIdList: configIdList, configName: configName, configVersion: configVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询配置项列表
    @inlinable
    public func describeConfigs(applicationId: String? = nil, configId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, configIdList: [String]? = nil, configName: String? = nil, configVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigsResponse {
        try await self.describeConfigs(.init(applicationId: applicationId, configId: configId, offset: offset, limit: limit, configIdList: configIdList, configName: configName, configVersion: configVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询配置项列表
    @inlinable
    public func describeConfigsPaginated(_ input: DescribeConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Config])> {
        self.client.paginate(input: input, region: region, command: self.describeConfigs, logger: logger, on: eventLoop)
    }

    /// 查询配置项列表
    @inlinable @discardableResult
    public func describeConfigsPaginated(_ input: DescribeConfigsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeConfigsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeConfigs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询配置项列表
    ///
    /// - Returns: `AsyncSequence`s of ``Config`` and ``DescribeConfigsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeConfigsPaginator(_ input: DescribeConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeConfigsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeConfigs, logger: logger, on: eventLoop)
    }
}
