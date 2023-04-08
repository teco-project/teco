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

extension Gse {
    /// DescribeScalingPolicies请求参数结构体
    public struct DescribeScalingPoliciesRequest: TCPaginatedRequest {
        /// 服务器舰队ID
        public let fleetId: String?

        /// 状态过滤条件，取值：ACTIVE表示活跃
        public let statusFilter: String?

        /// 返回结果偏移，最小值0
        public let offset: UInt64?

        /// 结果返回最大数量，最小值0，最大值100
        public let limit: UInt64?

        public init(fleetId: String? = nil, statusFilter: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.fleetId = fleetId
            self.statusFilter = statusFilter
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case statusFilter = "StatusFilter"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeScalingPoliciesResponse) -> DescribeScalingPoliciesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeScalingPoliciesRequest(fleetId: self.fleetId, statusFilter: self.statusFilter, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeScalingPolicies返回参数结构体
    public struct DescribeScalingPoliciesResponse: TCPaginatedResponse {
        /// 动态扩缩容配置策略数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scalingPolicies: [ScalingPolicy]?

        /// 动态扩缩容配置策略总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case scalingPolicies = "ScalingPolicies"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ScalingPolicy] {
            self.scalingPolicies ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询扩缩容配置
    ///
    /// 本接口（DescribeScalingPolicies）用于查询服务器舰队的动态扩缩容策略列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeScalingPolicies(_ input: DescribeScalingPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScalingPoliciesResponse> {
        fatalError("DescribeScalingPolicies is no longer available.")
    }

    /// 查询扩缩容配置
    ///
    /// 本接口（DescribeScalingPolicies）用于查询服务器舰队的动态扩缩容策略列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeScalingPolicies(_ input: DescribeScalingPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScalingPoliciesResponse {
        fatalError("DescribeScalingPolicies is no longer available.")
    }

    /// 查询扩缩容配置
    ///
    /// 本接口（DescribeScalingPolicies）用于查询服务器舰队的动态扩缩容策略列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeScalingPolicies(fleetId: String? = nil, statusFilter: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScalingPoliciesResponse> {
        fatalError("DescribeScalingPolicies is no longer available.")
    }

    /// 查询扩缩容配置
    ///
    /// 本接口（DescribeScalingPolicies）用于查询服务器舰队的动态扩缩容策略列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeScalingPolicies(fleetId: String? = nil, statusFilter: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScalingPoliciesResponse {
        fatalError("DescribeScalingPolicies is no longer available.")
    }

    /// 查询扩缩容配置
    ///
    /// 本接口（DescribeScalingPolicies）用于查询服务器舰队的动态扩缩容策略列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeScalingPoliciesPaginated(_ input: DescribeScalingPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ScalingPolicy])> {
        fatalError("DescribeScalingPolicies is no longer available.")
    }

    /// 查询扩缩容配置
    ///
    /// 本接口（DescribeScalingPolicies）用于查询服务器舰队的动态扩缩容策略列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func describeScalingPoliciesPaginated(_ input: DescribeScalingPoliciesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeScalingPoliciesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        fatalError("DescribeScalingPolicies is no longer available.")
    }

    /// 查询扩缩容配置
    ///
    /// 本接口（DescribeScalingPolicies）用于查询服务器舰队的动态扩缩容策略列表。
    ///
    /// - Returns: `AsyncSequence`s of `ScalingPolicy` and `DescribeScalingPoliciesResponse` that can be iterated over asynchronously on demand.
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeScalingPoliciesPaginator(_ input: DescribeScalingPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeScalingPoliciesRequest> {
        fatalError("DescribeScalingPolicies is no longer available.")
    }
}
