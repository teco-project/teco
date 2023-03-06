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

extension Tsf {
    /// DescribePublicConfigReleaseLogs请求参数结构体
    public struct DescribePublicConfigReleaseLogsRequest: TCPaginatedRequest {
        /// 命名空间ID，不传入时查询全量
        public let namespaceId: String?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 每页条数，默认为20
        public let limit: Int64?

        public init(namespaceId: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.namespaceId = namespaceId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case namespaceId = "NamespaceId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribePublicConfigReleaseLogsResponse) -> DescribePublicConfigReleaseLogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePublicConfigReleaseLogsRequest(namespaceId: self.namespaceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribePublicConfigReleaseLogs返回参数结构体
    public struct DescribePublicConfigReleaseLogsResponse: TCPaginatedResponse {
        /// 分页后的公共配置项发布历史列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageConfigReleaseLog?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ConfigReleaseLog] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询公共配置发布历史
    @inlinable
    public func describePublicConfigReleaseLogs(_ input: DescribePublicConfigReleaseLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePublicConfigReleaseLogsResponse> {
        self.client.execute(action: "DescribePublicConfigReleaseLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询公共配置发布历史
    @inlinable
    public func describePublicConfigReleaseLogs(_ input: DescribePublicConfigReleaseLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePublicConfigReleaseLogsResponse {
        try await self.client.execute(action: "DescribePublicConfigReleaseLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询公共配置发布历史
    @inlinable
    public func describePublicConfigReleaseLogs(namespaceId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePublicConfigReleaseLogsResponse> {
        let input = DescribePublicConfigReleaseLogsRequest(namespaceId: namespaceId, offset: offset, limit: limit)
        return self.client.execute(action: "DescribePublicConfigReleaseLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询公共配置发布历史
    @inlinable
    public func describePublicConfigReleaseLogs(namespaceId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePublicConfigReleaseLogsResponse {
        let input = DescribePublicConfigReleaseLogsRequest(namespaceId: namespaceId, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribePublicConfigReleaseLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询公共配置发布历史
    @inlinable
    public func describePublicConfigReleaseLogsPaginated(_ input: DescribePublicConfigReleaseLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ConfigReleaseLog])> {
        self.client.paginate(input: input, region: region, command: self.describePublicConfigReleaseLogs, logger: logger, on: eventLoop)
    }

    /// 查询公共配置发布历史
    @inlinable
    public func describePublicConfigReleaseLogsPaginated(_ input: DescribePublicConfigReleaseLogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePublicConfigReleaseLogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePublicConfigReleaseLogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询公共配置发布历史
    @inlinable
    public func describePublicConfigReleaseLogsPaginator(_ input: DescribePublicConfigReleaseLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribePublicConfigReleaseLogsRequest, DescribePublicConfigReleaseLogsResponse>.ResultSequence, responses: TCClient.Paginator<DescribePublicConfigReleaseLogsRequest, DescribePublicConfigReleaseLogsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribePublicConfigReleaseLogsRequest, DescribePublicConfigReleaseLogsResponse>.ResultSequence(input: input, region: region, command: self.describePublicConfigReleaseLogs, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribePublicConfigReleaseLogsRequest, DescribePublicConfigReleaseLogsResponse>.ResponseSequence(input: input, region: region, command: self.describePublicConfigReleaseLogs, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
