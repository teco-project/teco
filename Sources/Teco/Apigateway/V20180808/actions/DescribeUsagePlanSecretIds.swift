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
    /// DescribeUsagePlanSecretIds请求参数结构体
    public struct DescribeUsagePlanSecretIdsRequest: TCPaginatedRequest {
        /// 绑定的使用计划唯一 ID。
        public let usagePlanId: String

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        public init(usagePlanId: String, limit: Int64? = nil, offset: Int64? = nil) {
            self.usagePlanId = usagePlanId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case usagePlanId = "UsagePlanId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeUsagePlanSecretIdsResponse) -> DescribeUsagePlanSecretIdsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeUsagePlanSecretIdsRequest(usagePlanId: self.usagePlanId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeUsagePlanSecretIds返回参数结构体
    public struct DescribeUsagePlanSecretIdsResponse: TCPaginatedResponse {
        /// 使用计划绑定的密钥列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: UsagePlanBindSecretStatus?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [UsagePlanBindSecret] {
            self.result?.accessKeyList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询使用计划绑定密钥列表
    ///
    /// 本接口（DescribeUsagePlanSecretIds）用于查询使用计划绑定的密钥列表。
    /// 在 API 网关中，一个使用计划可绑定多个密钥对，可使用本接口查询使用计划绑定的密钥列表。
    @inlinable
    public func describeUsagePlanSecretIds(_ input: DescribeUsagePlanSecretIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsagePlanSecretIdsResponse> {
        self.client.execute(action: "DescribeUsagePlanSecretIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询使用计划绑定密钥列表
    ///
    /// 本接口（DescribeUsagePlanSecretIds）用于查询使用计划绑定的密钥列表。
    /// 在 API 网关中，一个使用计划可绑定多个密钥对，可使用本接口查询使用计划绑定的密钥列表。
    @inlinable
    public func describeUsagePlanSecretIds(_ input: DescribeUsagePlanSecretIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsagePlanSecretIdsResponse {
        try await self.client.execute(action: "DescribeUsagePlanSecretIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询使用计划绑定密钥列表
    ///
    /// 本接口（DescribeUsagePlanSecretIds）用于查询使用计划绑定的密钥列表。
    /// 在 API 网关中，一个使用计划可绑定多个密钥对，可使用本接口查询使用计划绑定的密钥列表。
    @inlinable
    public func describeUsagePlanSecretIds(usagePlanId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsagePlanSecretIdsResponse> {
        let input = DescribeUsagePlanSecretIdsRequest(usagePlanId: usagePlanId, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeUsagePlanSecretIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询使用计划绑定密钥列表
    ///
    /// 本接口（DescribeUsagePlanSecretIds）用于查询使用计划绑定的密钥列表。
    /// 在 API 网关中，一个使用计划可绑定多个密钥对，可使用本接口查询使用计划绑定的密钥列表。
    @inlinable
    public func describeUsagePlanSecretIds(usagePlanId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsagePlanSecretIdsResponse {
        let input = DescribeUsagePlanSecretIdsRequest(usagePlanId: usagePlanId, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeUsagePlanSecretIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询使用计划绑定密钥列表
    ///
    /// 本接口（DescribeUsagePlanSecretIds）用于查询使用计划绑定的密钥列表。
    /// 在 API 网关中，一个使用计划可绑定多个密钥对，可使用本接口查询使用计划绑定的密钥列表。
    @inlinable
    public func describeUsagePlanSecretIdsPaginated(_ input: DescribeUsagePlanSecretIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [UsagePlanBindSecret])> {
        self.client.paginate(input: input, region: region, command: self.describeUsagePlanSecretIds, logger: logger, on: eventLoop)
    }

    /// 查询使用计划绑定密钥列表
    ///
    /// 本接口（DescribeUsagePlanSecretIds）用于查询使用计划绑定的密钥列表。
    /// 在 API 网关中，一个使用计划可绑定多个密钥对，可使用本接口查询使用计划绑定的密钥列表。
    @inlinable @discardableResult
    public func describeUsagePlanSecretIdsPaginated(_ input: DescribeUsagePlanSecretIdsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUsagePlanSecretIdsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUsagePlanSecretIds, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询使用计划绑定密钥列表
    ///
    /// 本接口（DescribeUsagePlanSecretIds）用于查询使用计划绑定的密钥列表。
    /// 在 API 网关中，一个使用计划可绑定多个密钥对，可使用本接口查询使用计划绑定的密钥列表。
    ///
    /// - Returns: `AsyncSequence`s of `UsagePlanBindSecret` and `DescribeUsagePlanSecretIdsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeUsagePlanSecretIdsPaginator(_ input: DescribeUsagePlanSecretIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeUsagePlanSecretIdsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUsagePlanSecretIds, logger: logger, on: eventLoop)
    }
}
