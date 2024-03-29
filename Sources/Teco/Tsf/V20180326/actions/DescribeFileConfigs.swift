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
    /// DescribeFileConfigs请求参数结构体
    public struct DescribeFileConfigsRequest: TCPaginatedRequest {
        /// 配置项ID
        public let configId: String?

        /// 配置项ID列表
        public let configIdList: [String]?

        /// 配置项名称
        public let configName: String?

        /// 应用ID
        public let applicationId: String?

        /// 偏移量
        public let offset: Int64?

        /// 每页条数
        public let limit: Int64?

        /// 配置项版本
        public let configVersion: String?

        public init(configId: String? = nil, configIdList: [String]? = nil, configName: String? = nil, applicationId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, configVersion: String? = nil) {
            self.configId = configId
            self.configIdList = configIdList
            self.configName = configName
            self.applicationId = applicationId
            self.offset = offset
            self.limit = limit
            self.configVersion = configVersion
        }

        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
            case configIdList = "ConfigIdList"
            case configName = "ConfigName"
            case applicationId = "ApplicationId"
            case offset = "Offset"
            case limit = "Limit"
            case configVersion = "ConfigVersion"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeFileConfigsResponse) -> DescribeFileConfigsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(configId: self.configId, configIdList: self.configIdList, configName: self.configName, applicationId: self.applicationId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, configVersion: self.configVersion)
        }
    }

    /// DescribeFileConfigs返回参数结构体
    public struct DescribeFileConfigsResponse: TCPaginatedResponse {
        /// 文件配置项列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageFileConfig?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``FileConfig`` list from the paginated response.
        public func getItems() -> [FileConfig] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询文件配置项列表
    @inlinable
    public func describeFileConfigs(_ input: DescribeFileConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileConfigsResponse> {
        self.client.execute(action: "DescribeFileConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询文件配置项列表
    @inlinable
    public func describeFileConfigs(_ input: DescribeFileConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileConfigsResponse {
        try await self.client.execute(action: "DescribeFileConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询文件配置项列表
    @inlinable
    public func describeFileConfigs(configId: String? = nil, configIdList: [String]? = nil, configName: String? = nil, applicationId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, configVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileConfigsResponse> {
        self.describeFileConfigs(.init(configId: configId, configIdList: configIdList, configName: configName, applicationId: applicationId, offset: offset, limit: limit, configVersion: configVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询文件配置项列表
    @inlinable
    public func describeFileConfigs(configId: String? = nil, configIdList: [String]? = nil, configName: String? = nil, applicationId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, configVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileConfigsResponse {
        try await self.describeFileConfigs(.init(configId: configId, configIdList: configIdList, configName: configName, applicationId: applicationId, offset: offset, limit: limit, configVersion: configVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询文件配置项列表
    @inlinable
    public func describeFileConfigsPaginated(_ input: DescribeFileConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [FileConfig])> {
        self.client.paginate(input: input, region: region, command: self.describeFileConfigs, logger: logger, on: eventLoop)
    }

    /// 查询文件配置项列表
    @inlinable @discardableResult
    public func describeFileConfigsPaginated(_ input: DescribeFileConfigsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeFileConfigsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeFileConfigs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询文件配置项列表
    ///
    /// - Returns: `AsyncSequence`s of ``FileConfig`` and ``DescribeFileConfigsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeFileConfigsPaginator(_ input: DescribeFileConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeFileConfigsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeFileConfigs, logger: logger, on: eventLoop)
    }
}
