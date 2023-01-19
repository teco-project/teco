//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tke {
    /// DescribeEKSContainerInstanceRegions请求参数结构体
    public struct DescribeEKSContainerInstanceRegionsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeEKSContainerInstanceRegions返回参数结构体
    public struct DescribeEKSContainerInstanceRegionsResponse: TCResponseModel {
        /// EKS Container Instance支持的地域信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let regions: [EksCiRegionInfo]?

        /// 总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case regions = "Regions"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询容器实例支持的地域
    @inlinable
    public func describeEKSContainerInstanceRegions(_ input: DescribeEKSContainerInstanceRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEKSContainerInstanceRegionsResponse> {
        self.client.execute(action: "DescribeEKSContainerInstanceRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询容器实例支持的地域
    @inlinable
    public func describeEKSContainerInstanceRegions(_ input: DescribeEKSContainerInstanceRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEKSContainerInstanceRegionsResponse {
        try await self.client.execute(action: "DescribeEKSContainerInstanceRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询容器实例支持的地域
    @inlinable
    public func describeEKSContainerInstanceRegions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEKSContainerInstanceRegionsResponse> {
        self.describeEKSContainerInstanceRegions(DescribeEKSContainerInstanceRegionsRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询容器实例支持的地域
    @inlinable
    public func describeEKSContainerInstanceRegions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEKSContainerInstanceRegionsResponse {
        try await self.describeEKSContainerInstanceRegions(DescribeEKSContainerInstanceRegionsRequest(), region: region, logger: logger, on: eventLoop)
    }
}
