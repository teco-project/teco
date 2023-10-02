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
    /// DescribeServiceEnvironmentReleaseHistory请求参数结构体
    public struct DescribeServiceEnvironmentReleaseHistoryRequest: TCPaginatedRequest {
        /// 待查询的服务唯一 ID。
        public let serviceId: String

        /// 环境名称。
        public let environmentName: String?

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        public init(serviceId: String, environmentName: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.serviceId = serviceId
            self.environmentName = environmentName
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case environmentName = "EnvironmentName"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeServiceEnvironmentReleaseHistoryResponse) -> DescribeServiceEnvironmentReleaseHistoryRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(serviceId: self.serviceId, environmentName: self.environmentName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeServiceEnvironmentReleaseHistory返回参数结构体
    public struct DescribeServiceEnvironmentReleaseHistoryResponse: TCPaginatedResponse {
        /// 服务发布历史。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ServiceReleaseHistory?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ServiceReleaseHistoryInfo`` list from the paginated response.
        public func getItems() -> [ServiceReleaseHistoryInfo] {
            self.result?.versionList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询服务环境的发布历史
    ///
    /// 本接口（DescribeServiceEnvironmentReleaseHistory）用于查询服务环境的发布历史。
    /// 用户在创建好服务后需要发布到某个环境中才能进行使用，本接口用于查询一个服务某个环境的发布记录。
    @inlinable
    public func describeServiceEnvironmentReleaseHistory(_ input: DescribeServiceEnvironmentReleaseHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceEnvironmentReleaseHistoryResponse> {
        self.client.execute(action: "DescribeServiceEnvironmentReleaseHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务环境的发布历史
    ///
    /// 本接口（DescribeServiceEnvironmentReleaseHistory）用于查询服务环境的发布历史。
    /// 用户在创建好服务后需要发布到某个环境中才能进行使用，本接口用于查询一个服务某个环境的发布记录。
    @inlinable
    public func describeServiceEnvironmentReleaseHistory(_ input: DescribeServiceEnvironmentReleaseHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceEnvironmentReleaseHistoryResponse {
        try await self.client.execute(action: "DescribeServiceEnvironmentReleaseHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务环境的发布历史
    ///
    /// 本接口（DescribeServiceEnvironmentReleaseHistory）用于查询服务环境的发布历史。
    /// 用户在创建好服务后需要发布到某个环境中才能进行使用，本接口用于查询一个服务某个环境的发布记录。
    @inlinable
    public func describeServiceEnvironmentReleaseHistory(serviceId: String, environmentName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceEnvironmentReleaseHistoryResponse> {
        self.describeServiceEnvironmentReleaseHistory(.init(serviceId: serviceId, environmentName: environmentName, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询服务环境的发布历史
    ///
    /// 本接口（DescribeServiceEnvironmentReleaseHistory）用于查询服务环境的发布历史。
    /// 用户在创建好服务后需要发布到某个环境中才能进行使用，本接口用于查询一个服务某个环境的发布记录。
    @inlinable
    public func describeServiceEnvironmentReleaseHistory(serviceId: String, environmentName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceEnvironmentReleaseHistoryResponse {
        try await self.describeServiceEnvironmentReleaseHistory(.init(serviceId: serviceId, environmentName: environmentName, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询服务环境的发布历史
    ///
    /// 本接口（DescribeServiceEnvironmentReleaseHistory）用于查询服务环境的发布历史。
    /// 用户在创建好服务后需要发布到某个环境中才能进行使用，本接口用于查询一个服务某个环境的发布记录。
    @inlinable
    public func describeServiceEnvironmentReleaseHistoryPaginated(_ input: DescribeServiceEnvironmentReleaseHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ServiceReleaseHistoryInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeServiceEnvironmentReleaseHistory, logger: logger, on: eventLoop)
    }

    /// 查询服务环境的发布历史
    ///
    /// 本接口（DescribeServiceEnvironmentReleaseHistory）用于查询服务环境的发布历史。
    /// 用户在创建好服务后需要发布到某个环境中才能进行使用，本接口用于查询一个服务某个环境的发布记录。
    @inlinable @discardableResult
    public func describeServiceEnvironmentReleaseHistoryPaginated(_ input: DescribeServiceEnvironmentReleaseHistoryRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeServiceEnvironmentReleaseHistoryResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeServiceEnvironmentReleaseHistory, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询服务环境的发布历史
    ///
    /// 本接口（DescribeServiceEnvironmentReleaseHistory）用于查询服务环境的发布历史。
    /// 用户在创建好服务后需要发布到某个环境中才能进行使用，本接口用于查询一个服务某个环境的发布记录。
    ///
    /// - Returns: `AsyncSequence`s of ``ServiceReleaseHistoryInfo`` and ``DescribeServiceEnvironmentReleaseHistoryResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeServiceEnvironmentReleaseHistoryPaginator(_ input: DescribeServiceEnvironmentReleaseHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeServiceEnvironmentReleaseHistoryRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeServiceEnvironmentReleaseHistory, logger: logger, on: eventLoop)
    }
}
