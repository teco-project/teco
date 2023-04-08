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

extension As {
    /// DescribeAccountLimits请求参数结构体
    public struct DescribeAccountLimitsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeAccountLimits返回参数结构体
    public struct DescribeAccountLimitsResponse: TCResponseModel {
        /// 用户账户被允许创建的启动配置最大数量
        public let maxNumberOfLaunchConfigurations: Int64

        /// 用户账户启动配置的当前数量
        public let numberOfLaunchConfigurations: Int64

        /// 用户账户被允许创建的伸缩组最大数量
        public let maxNumberOfAutoScalingGroups: Int64

        /// 用户账户伸缩组的当前数量
        public let numberOfAutoScalingGroups: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case maxNumberOfLaunchConfigurations = "MaxNumberOfLaunchConfigurations"
            case numberOfLaunchConfigurations = "NumberOfLaunchConfigurations"
            case maxNumberOfAutoScalingGroups = "MaxNumberOfAutoScalingGroups"
            case numberOfAutoScalingGroups = "NumberOfAutoScalingGroups"
            case requestId = "RequestId"
        }
    }

    /// 查询用户账号的资源限制
    ///
    /// 本接口（DescribeAccountLimits）用于查询用户账户在弹性伸缩中的资源限制。
    @inlinable
    public func describeAccountLimits(_ input: DescribeAccountLimitsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountLimitsResponse> {
        self.client.execute(action: "DescribeAccountLimits", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户账号的资源限制
    ///
    /// 本接口（DescribeAccountLimits）用于查询用户账户在弹性伸缩中的资源限制。
    @inlinable
    public func describeAccountLimits(_ input: DescribeAccountLimitsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountLimitsResponse {
        try await self.client.execute(action: "DescribeAccountLimits", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户账号的资源限制
    ///
    /// 本接口（DescribeAccountLimits）用于查询用户账户在弹性伸缩中的资源限制。
    @inlinable
    public func describeAccountLimits(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountLimitsResponse> {
        self.describeAccountLimits(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户账号的资源限制
    ///
    /// 本接口（DescribeAccountLimits）用于查询用户账户在弹性伸缩中的资源限制。
    @inlinable
    public func describeAccountLimits(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountLimitsResponse {
        try await self.describeAccountLimits(.init(), region: region, logger: logger, on: eventLoop)
    }
}
