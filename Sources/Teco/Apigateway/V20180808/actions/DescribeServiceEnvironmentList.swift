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

extension Apigateway {
    /// DescribeServiceEnvironmentList请求参数结构体
    public struct DescribeServiceEnvironmentListRequest: TCPaginatedRequest {
        /// 待查询的服务唯一 ID。
        public let serviceId: String

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: UInt64?

        /// 偏移量，默认为 0。
        public let offset: UInt64?

        public init(serviceId: String, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.serviceId = serviceId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeServiceEnvironmentListResponse) -> DescribeServiceEnvironmentListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeServiceEnvironmentListRequest(serviceId: self.serviceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeServiceEnvironmentList返回参数结构体
    public struct DescribeServiceEnvironmentListResponse: TCPaginatedResponse {
        /// 服务绑定环境详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ServiceEnvironmentSet?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Environment] {
            self.result?.environmentList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询服务环境列表
    ///
    /// 本接口（DescribeServiceEnvironmentList）用于查询一个服务的环境列表，可查询到此服务下所有环境及其状态。
    @inlinable
    public func describeServiceEnvironmentList(_ input: DescribeServiceEnvironmentListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceEnvironmentListResponse> {
        self.client.execute(action: "DescribeServiceEnvironmentList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务环境列表
    ///
    /// 本接口（DescribeServiceEnvironmentList）用于查询一个服务的环境列表，可查询到此服务下所有环境及其状态。
    @inlinable
    public func describeServiceEnvironmentList(_ input: DescribeServiceEnvironmentListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceEnvironmentListResponse {
        try await self.client.execute(action: "DescribeServiceEnvironmentList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务环境列表
    ///
    /// 本接口（DescribeServiceEnvironmentList）用于查询一个服务的环境列表，可查询到此服务下所有环境及其状态。
    @inlinable
    public func describeServiceEnvironmentList(serviceId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceEnvironmentListResponse> {
        let input = DescribeServiceEnvironmentListRequest(serviceId: serviceId, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeServiceEnvironmentList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务环境列表
    ///
    /// 本接口（DescribeServiceEnvironmentList）用于查询一个服务的环境列表，可查询到此服务下所有环境及其状态。
    @inlinable
    public func describeServiceEnvironmentList(serviceId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceEnvironmentListResponse {
        let input = DescribeServiceEnvironmentListRequest(serviceId: serviceId, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeServiceEnvironmentList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务环境列表
    ///
    /// 本接口（DescribeServiceEnvironmentList）用于查询一个服务的环境列表，可查询到此服务下所有环境及其状态。
    @inlinable
    public func describeServiceEnvironmentListPaginated(_ input: DescribeServiceEnvironmentListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Environment])> {
        self.client.paginate(input: input, region: region, command: self.describeServiceEnvironmentList, logger: logger, on: eventLoop)
    }

    /// 查询服务环境列表
    ///
    /// 本接口（DescribeServiceEnvironmentList）用于查询一个服务的环境列表，可查询到此服务下所有环境及其状态。
    @inlinable @discardableResult
    public func describeServiceEnvironmentListPaginated(_ input: DescribeServiceEnvironmentListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeServiceEnvironmentListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeServiceEnvironmentList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询服务环境列表
    ///
    /// 本接口（DescribeServiceEnvironmentList）用于查询一个服务的环境列表，可查询到此服务下所有环境及其状态。
    ///
    /// - Returns: `AsyncSequence`s of `Environment` and `DescribeServiceEnvironmentListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeServiceEnvironmentListPaginator(_ input: DescribeServiceEnvironmentListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeServiceEnvironmentListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeServiceEnvironmentList, logger: logger, on: eventLoop)
    }
}
