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

extension Cds {
    /// DescribeDbauditUsedRegions请求参数结构体
    public struct DescribeDbauditUsedRegionsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeDbauditUsedRegions返回参数结构体
    public struct DescribeDbauditUsedRegionsResponse: TCResponseModel {
        /// 可售卖地域信息列表
        public let regionSet: [RegionInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case regionSet = "RegionSet"
            case requestId = "RequestId"
        }
    }

    /// 查询可售卖地域列表
    ///
    /// 本接口 (DescribeDbauditUsedRegions) 用于查询可售卖地域列表。
    @inlinable
    public func describeDbauditUsedRegions(_ input: DescribeDbauditUsedRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDbauditUsedRegionsResponse> {
        self.client.execute(action: "DescribeDbauditUsedRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询可售卖地域列表
    ///
    /// 本接口 (DescribeDbauditUsedRegions) 用于查询可售卖地域列表。
    @inlinable
    public func describeDbauditUsedRegions(_ input: DescribeDbauditUsedRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDbauditUsedRegionsResponse {
        try await self.client.execute(action: "DescribeDbauditUsedRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询可售卖地域列表
    ///
    /// 本接口 (DescribeDbauditUsedRegions) 用于查询可售卖地域列表。
    @inlinable
    public func describeDbauditUsedRegions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDbauditUsedRegionsResponse> {
        self.describeDbauditUsedRegions(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询可售卖地域列表
    ///
    /// 本接口 (DescribeDbauditUsedRegions) 用于查询可售卖地域列表。
    @inlinable
    public func describeDbauditUsedRegions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDbauditUsedRegionsResponse {
        try await self.describeDbauditUsedRegions(.init(), region: region, logger: logger, on: eventLoop)
    }
}
