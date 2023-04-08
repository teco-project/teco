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

extension Tsf {
    /// DescribeBasicResourceUsage请求参数结构体
    public struct DescribeBasicResourceUsageRequest: TCRequestModel {
        /// 是否无视权限查询全租户的，默认 true。注：无论 true 还是 false，PackageSpaceUsed 和 ConsulInstanceCount  都是全租户的
        public let all: Bool?

        public init(all: Bool? = nil) {
            self.all = all
        }

        enum CodingKeys: String, CodingKey {
            case all = "All"
        }
    }

    /// DescribeBasicResourceUsage返回参数结构体
    public struct DescribeBasicResourceUsageResponse: TCResponseModel {
        /// TSF基本资源信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: OverviewBasicResourceUsage?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// TSF基本资源信息概览
    ///
    /// TSF基本资源信息概览接口
    @inlinable
    public func describeBasicResourceUsage(_ input: DescribeBasicResourceUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBasicResourceUsageResponse> {
        self.client.execute(action: "DescribeBasicResourceUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// TSF基本资源信息概览
    ///
    /// TSF基本资源信息概览接口
    @inlinable
    public func describeBasicResourceUsage(_ input: DescribeBasicResourceUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBasicResourceUsageResponse {
        try await self.client.execute(action: "DescribeBasicResourceUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// TSF基本资源信息概览
    ///
    /// TSF基本资源信息概览接口
    @inlinable
    public func describeBasicResourceUsage(all: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBasicResourceUsageResponse> {
        self.describeBasicResourceUsage(.init(all: all), region: region, logger: logger, on: eventLoop)
    }

    /// TSF基本资源信息概览
    ///
    /// TSF基本资源信息概览接口
    @inlinable
    public func describeBasicResourceUsage(all: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBasicResourceUsageResponse {
        try await self.describeBasicResourceUsage(.init(all: all), region: region, logger: logger, on: eventLoop)
    }
}
