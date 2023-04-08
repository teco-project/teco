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

extension Vpc {
    /// DescribeSecurityGroupLimits请求参数结构体
    public struct DescribeSecurityGroupLimitsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeSecurityGroupLimits返回参数结构体
    public struct DescribeSecurityGroupLimitsResponse: TCResponseModel {
        /// 用户安全组配额限制。
        public let securityGroupLimitSet: SecurityGroupLimitSet

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case securityGroupLimitSet = "SecurityGroupLimitSet"
            case requestId = "RequestId"
        }
    }

    /// 查询用户安全组配额
    ///
    /// 本接口(DescribeSecurityGroupLimits)用于查询用户安全组配额。
    @inlinable
    public func describeSecurityGroupLimits(_ input: DescribeSecurityGroupLimitsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityGroupLimitsResponse> {
        self.client.execute(action: "DescribeSecurityGroupLimits", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户安全组配额
    ///
    /// 本接口(DescribeSecurityGroupLimits)用于查询用户安全组配额。
    @inlinable
    public func describeSecurityGroupLimits(_ input: DescribeSecurityGroupLimitsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityGroupLimitsResponse {
        try await self.client.execute(action: "DescribeSecurityGroupLimits", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户安全组配额
    ///
    /// 本接口(DescribeSecurityGroupLimits)用于查询用户安全组配额。
    @inlinable
    public func describeSecurityGroupLimits(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityGroupLimitsResponse> {
        self.describeSecurityGroupLimits(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户安全组配额
    ///
    /// 本接口(DescribeSecurityGroupLimits)用于查询用户安全组配额。
    @inlinable
    public func describeSecurityGroupLimits(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityGroupLimitsResponse {
        try await self.describeSecurityGroupLimits(.init(), region: region, logger: logger, on: eventLoop)
    }
}
