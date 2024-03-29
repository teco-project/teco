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

extension Apigateway {
    /// DescribeServiceReleaseVersion请求参数结构体
    public struct DescribeServiceReleaseVersionRequest: TCPaginatedRequest {
        /// 待查询的服务唯一 ID。
        public let serviceId: String

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
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
        public func makeNextRequest(with response: DescribeServiceReleaseVersionResponse) -> DescribeServiceReleaseVersionRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(serviceId: self.serviceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeServiceReleaseVersion返回参数结构体
    public struct DescribeServiceReleaseVersionResponse: TCPaginatedResponse {
        /// 服务发布版本列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ServiceReleaseVersion?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DescribeServiceReleaseVersionResultVersionListInfo`` list from the paginated response.
        public func getItems() -> [DescribeServiceReleaseVersionResultVersionListInfo] {
            self.result?.versionList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询服务已发布的版本
    ///
    /// 本接口（DescribeServiceReleaseVersion）查询一个服务下面所有已经发布的版本列表。
    /// 用户在发布服务时，常有多个版本发布，可使用本接口查询已发布的版本。
    @inlinable
    public func describeServiceReleaseVersion(_ input: DescribeServiceReleaseVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceReleaseVersionResponse> {
        self.client.execute(action: "DescribeServiceReleaseVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务已发布的版本
    ///
    /// 本接口（DescribeServiceReleaseVersion）查询一个服务下面所有已经发布的版本列表。
    /// 用户在发布服务时，常有多个版本发布，可使用本接口查询已发布的版本。
    @inlinable
    public func describeServiceReleaseVersion(_ input: DescribeServiceReleaseVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceReleaseVersionResponse {
        try await self.client.execute(action: "DescribeServiceReleaseVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务已发布的版本
    ///
    /// 本接口（DescribeServiceReleaseVersion）查询一个服务下面所有已经发布的版本列表。
    /// 用户在发布服务时，常有多个版本发布，可使用本接口查询已发布的版本。
    @inlinable
    public func describeServiceReleaseVersion(serviceId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceReleaseVersionResponse> {
        self.describeServiceReleaseVersion(.init(serviceId: serviceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询服务已发布的版本
    ///
    /// 本接口（DescribeServiceReleaseVersion）查询一个服务下面所有已经发布的版本列表。
    /// 用户在发布服务时，常有多个版本发布，可使用本接口查询已发布的版本。
    @inlinable
    public func describeServiceReleaseVersion(serviceId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceReleaseVersionResponse {
        try await self.describeServiceReleaseVersion(.init(serviceId: serviceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询服务已发布的版本
    ///
    /// 本接口（DescribeServiceReleaseVersion）查询一个服务下面所有已经发布的版本列表。
    /// 用户在发布服务时，常有多个版本发布，可使用本接口查询已发布的版本。
    @inlinable
    public func describeServiceReleaseVersionPaginated(_ input: DescribeServiceReleaseVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DescribeServiceReleaseVersionResultVersionListInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeServiceReleaseVersion, logger: logger, on: eventLoop)
    }

    /// 查询服务已发布的版本
    ///
    /// 本接口（DescribeServiceReleaseVersion）查询一个服务下面所有已经发布的版本列表。
    /// 用户在发布服务时，常有多个版本发布，可使用本接口查询已发布的版本。
    @inlinable @discardableResult
    public func describeServiceReleaseVersionPaginated(_ input: DescribeServiceReleaseVersionRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeServiceReleaseVersionResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeServiceReleaseVersion, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询服务已发布的版本
    ///
    /// 本接口（DescribeServiceReleaseVersion）查询一个服务下面所有已经发布的版本列表。
    /// 用户在发布服务时，常有多个版本发布，可使用本接口查询已发布的版本。
    ///
    /// - Returns: `AsyncSequence`s of ``DescribeServiceReleaseVersionResultVersionListInfo`` and ``DescribeServiceReleaseVersionResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeServiceReleaseVersionPaginator(_ input: DescribeServiceReleaseVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeServiceReleaseVersionRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeServiceReleaseVersion, logger: logger, on: eventLoop)
    }
}
