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

extension Tcr {
    /// DescribeWebhookTriggerLog请求参数结构体
    public struct DescribeWebhookTriggerLogRequest: TCPaginatedRequest {
        /// 实例 Id
        public let registryId: String

        /// 命名空间
        public let namespace: String

        /// 触发器 Id
        public let id: Int64?

        /// 分页单页数量
        public let limit: Int64?

        /// 分页偏移量
        public let offset: Int64?

        public init(registryId: String, namespace: String, id: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.registryId = registryId
            self.namespace = namespace
            self.id = id
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case namespace = "Namespace"
            case id = "Id"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeWebhookTriggerLogResponse) -> DescribeWebhookTriggerLogRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeWebhookTriggerLogRequest(registryId: self.registryId, namespace: self.namespace, id: self.id, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeWebhookTriggerLog返回参数结构体
    public struct DescribeWebhookTriggerLogResponse: TCPaginatedResponse {
        /// 总数
        public let totalCount: Int64

        /// 日志列表
        public let logs: [WebhookTriggerLog]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case logs = "Logs"
            case requestId = "RequestId"
        }

        /// Extract the returned ``WebhookTriggerLog`` list from the paginated response.
        public func getItems() -> [WebhookTriggerLog] {
            self.logs
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取触发器日志
    @inlinable
    public func describeWebhookTriggerLog(_ input: DescribeWebhookTriggerLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebhookTriggerLogResponse> {
        self.client.execute(action: "DescribeWebhookTriggerLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取触发器日志
    @inlinable
    public func describeWebhookTriggerLog(_ input: DescribeWebhookTriggerLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebhookTriggerLogResponse {
        try await self.client.execute(action: "DescribeWebhookTriggerLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取触发器日志
    @inlinable
    public func describeWebhookTriggerLog(registryId: String, namespace: String, id: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebhookTriggerLogResponse> {
        self.describeWebhookTriggerLog(.init(registryId: registryId, namespace: namespace, id: id, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取触发器日志
    @inlinable
    public func describeWebhookTriggerLog(registryId: String, namespace: String, id: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebhookTriggerLogResponse {
        try await self.describeWebhookTriggerLog(.init(registryId: registryId, namespace: namespace, id: id, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取触发器日志
    @inlinable
    public func describeWebhookTriggerLogPaginated(_ input: DescribeWebhookTriggerLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [WebhookTriggerLog])> {
        self.client.paginate(input: input, region: region, command: self.describeWebhookTriggerLog, logger: logger, on: eventLoop)
    }

    /// 获取触发器日志
    @inlinable @discardableResult
    public func describeWebhookTriggerLogPaginated(_ input: DescribeWebhookTriggerLogRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeWebhookTriggerLogResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeWebhookTriggerLog, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取触发器日志
    ///
    /// - Returns: `AsyncSequence`s of `WebhookTriggerLog` and `DescribeWebhookTriggerLogResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeWebhookTriggerLogPaginator(_ input: DescribeWebhookTriggerLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeWebhookTriggerLogRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeWebhookTriggerLog, logger: logger, on: eventLoop)
    }
}
