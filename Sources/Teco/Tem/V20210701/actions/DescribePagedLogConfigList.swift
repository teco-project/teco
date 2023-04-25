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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Tem {
    /// DescribePagedLogConfigList请求参数结构体
    public struct DescribePagedLogConfigListRequest: TCPaginatedRequest {
        /// 环境 ID
        public let environmentId: String

        /// 应用 ID
        public let applicationId: String?

        /// 应用名
        public let applicationName: String?

        /// 规则名
        public let name: String?

        /// 分页大小，默认 20
        public let limit: Int64?

        /// 翻页游标
        public let continueToken: String?

        public init(environmentId: String, applicationId: String? = nil, applicationName: String? = nil, name: String? = nil, limit: Int64? = nil, continueToken: String? = nil) {
            self.environmentId = environmentId
            self.applicationId = applicationId
            self.applicationName = applicationName
            self.name = name
            self.limit = limit
            self.continueToken = continueToken
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case applicationId = "ApplicationId"
            case applicationName = "ApplicationName"
            case name = "Name"
            case limit = "Limit"
            case continueToken = "ContinueToken"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePagedLogConfigListResponse) -> DescribePagedLogConfigListRequest? {
            guard response.result.continueToken != nil else {
                return nil
            }
            return DescribePagedLogConfigListRequest(environmentId: self.environmentId, applicationId: self.applicationId, applicationName: self.applicationName, name: self.name, limit: self.limit, continueToken: response.result.continueToken)
        }
    }

    /// DescribePagedLogConfigList返回参数结构体
    public struct DescribePagedLogConfigListResponse: TCPaginatedResponse {
        /// 日志收集配置列表
        public let result: LogConfigListPage

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [LogConfig] {
            self.result.records ?? []
        }
    }

    /// 查询分页的日志收集配置列表
    @inlinable
    public func describePagedLogConfigList(_ input: DescribePagedLogConfigListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePagedLogConfigListResponse> {
        self.client.execute(action: "DescribePagedLogConfigList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询分页的日志收集配置列表
    @inlinable
    public func describePagedLogConfigList(_ input: DescribePagedLogConfigListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePagedLogConfigListResponse {
        try await self.client.execute(action: "DescribePagedLogConfigList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询分页的日志收集配置列表
    @inlinable
    public func describePagedLogConfigList(environmentId: String, applicationId: String? = nil, applicationName: String? = nil, name: String? = nil, limit: Int64? = nil, continueToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePagedLogConfigListResponse> {
        self.describePagedLogConfigList(.init(environmentId: environmentId, applicationId: applicationId, applicationName: applicationName, name: name, limit: limit, continueToken: continueToken), region: region, logger: logger, on: eventLoop)
    }

    /// 查询分页的日志收集配置列表
    @inlinable
    public func describePagedLogConfigList(environmentId: String, applicationId: String? = nil, applicationName: String? = nil, name: String? = nil, limit: Int64? = nil, continueToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePagedLogConfigListResponse {
        try await self.describePagedLogConfigList(.init(environmentId: environmentId, applicationId: applicationId, applicationName: applicationName, name: name, limit: limit, continueToken: continueToken), region: region, logger: logger, on: eventLoop)
    }

    /// 查询分页的日志收集配置列表
    @inlinable
    public func describePagedLogConfigListPaginated(_ input: DescribePagedLogConfigListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [LogConfig])> {
        self.client.paginate(input: input, region: region, command: self.describePagedLogConfigList, logger: logger, on: eventLoop)
    }

    /// 查询分页的日志收集配置列表
    @inlinable @discardableResult
    public func describePagedLogConfigListPaginated(_ input: DescribePagedLogConfigListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePagedLogConfigListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePagedLogConfigList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询分页的日志收集配置列表
    ///
    /// - Returns: `AsyncSequence`s of `LogConfig` and `DescribePagedLogConfigListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePagedLogConfigListPaginator(_ input: DescribePagedLogConfigListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePagedLogConfigListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePagedLogConfigList, logger: logger, on: eventLoop)
    }
}
