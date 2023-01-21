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

extension Teo {
    /// DescribeSecurityPolicyRegions请求参数结构体
    public struct DescribeSecurityPolicyRegionsRequest: TCRequestModel {
        /// 分页查询偏移量。默认值：0。
        public let offset: Int64?

        /// 分页查询限制数目。默认值：20，最大值：1000。
        public let limit: Int64?

        public init(offset: Int64? = nil, limit: Int64? = nil) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeSecurityPolicyRegions返回参数结构体
    public struct DescribeSecurityPolicyRegionsResponse: TCResponseModel {
        /// 总地域信息数。
        public let count: Int64

        /// 地域信息。
        public let geoIps: [GeoIp]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case geoIps = "GeoIps"
            case requestId = "RequestId"
        }
    }

    /// 查询所有地域信息
    @inlinable
    public func describeSecurityPolicyRegions(_ input: DescribeSecurityPolicyRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityPolicyRegionsResponse> {
        self.client.execute(action: "DescribeSecurityPolicyRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询所有地域信息
    @inlinable
    public func describeSecurityPolicyRegions(_ input: DescribeSecurityPolicyRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityPolicyRegionsResponse {
        try await self.client.execute(action: "DescribeSecurityPolicyRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询所有地域信息
    @inlinable
    public func describeSecurityPolicyRegions(offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityPolicyRegionsResponse> {
        self.describeSecurityPolicyRegions(DescribeSecurityPolicyRegionsRequest(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询所有地域信息
    @inlinable
    public func describeSecurityPolicyRegions(offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityPolicyRegionsResponse {
        try await self.describeSecurityPolicyRegions(DescribeSecurityPolicyRegionsRequest(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
