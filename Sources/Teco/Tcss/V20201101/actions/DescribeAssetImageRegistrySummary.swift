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

extension Tcss {
    /// DescribeAssetImageRegistrySummary请求参数结构体
    public struct DescribeAssetImageRegistrySummaryRequest: TCRequest {
        /// 过滤字段
        public let filters: [AssetFilters]?

        public init(filters: [AssetFilters]? = nil) {
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
        }
    }

    /// DescribeAssetImageRegistrySummary返回参数结构体
    public struct DescribeAssetImageRegistrySummaryResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 镜像仓库查询镜像统计信息
    @inlinable @discardableResult
    public func describeAssetImageRegistrySummary(_ input: DescribeAssetImageRegistrySummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRegistrySummaryResponse> {
        self.client.execute(action: "DescribeAssetImageRegistrySummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查询镜像统计信息
    @inlinable @discardableResult
    public func describeAssetImageRegistrySummary(_ input: DescribeAssetImageRegistrySummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistrySummaryResponse {
        try await self.client.execute(action: "DescribeAssetImageRegistrySummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 镜像仓库查询镜像统计信息
    @inlinable @discardableResult
    public func describeAssetImageRegistrySummary(filters: [AssetFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRegistrySummaryResponse> {
        self.describeAssetImageRegistrySummary(.init(filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查询镜像统计信息
    @inlinable @discardableResult
    public func describeAssetImageRegistrySummary(filters: [AssetFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistrySummaryResponse {
        try await self.describeAssetImageRegistrySummary(.init(filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
