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

extension Cfw {
    /// DescribeNatFwInstance请求参数结构体
    public struct DescribeNatFwInstanceRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeNatFwInstance返回参数结构体
    public struct DescribeNatFwInstanceResponse: TCResponseModel {
        /// 实例数组
        public let natinsLst: [NatFwInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case natinsLst = "NatinsLst"
            case requestId = "RequestId"
        }
    }

    /// 获取租户所有NAT实例
    ///
    /// DescribeNatFwInstance 获取租户所有NAT实例
    @inlinable
    public func describeNatFwInstance(_ input: DescribeNatFwInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatFwInstanceResponse> {
        self.client.execute(action: "DescribeNatFwInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取租户所有NAT实例
    ///
    /// DescribeNatFwInstance 获取租户所有NAT实例
    @inlinable
    public func describeNatFwInstance(_ input: DescribeNatFwInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatFwInstanceResponse {
        try await self.client.execute(action: "DescribeNatFwInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取租户所有NAT实例
    ///
    /// DescribeNatFwInstance 获取租户所有NAT实例
    @inlinable
    public func describeNatFwInstance(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatFwInstanceResponse> {
        self.describeNatFwInstance(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取租户所有NAT实例
    ///
    /// DescribeNatFwInstance 获取租户所有NAT实例
    @inlinable
    public func describeNatFwInstance(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatFwInstanceResponse {
        try await self.describeNatFwInstance(.init(), region: region, logger: logger, on: eventLoop)
    }
}
