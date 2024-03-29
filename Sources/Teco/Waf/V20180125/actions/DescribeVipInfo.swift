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

extension Waf {
    /// DescribeVipInfo请求参数结构体
    public struct DescribeVipInfoRequest: TCRequest {
        /// waf实例id列表
        public let instanceIds: [String]

        public init(instanceIds: [String]) {
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }

    /// DescribeVipInfo返回参数结构体
    public struct DescribeVipInfoResponse: TCResponse {
        /// VIP信息
        public let vipInfo: [VipInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vipInfo = "VipInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询VIP信息
    ///
    /// 根据过滤条件查询VIP信息
    @inlinable
    public func describeVipInfo(_ input: DescribeVipInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVipInfoResponse> {
        self.client.execute(action: "DescribeVipInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询VIP信息
    ///
    /// 根据过滤条件查询VIP信息
    @inlinable
    public func describeVipInfo(_ input: DescribeVipInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVipInfoResponse {
        try await self.client.execute(action: "DescribeVipInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询VIP信息
    ///
    /// 根据过滤条件查询VIP信息
    @inlinable
    public func describeVipInfo(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVipInfoResponse> {
        self.describeVipInfo(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询VIP信息
    ///
    /// 根据过滤条件查询VIP信息
    @inlinable
    public func describeVipInfo(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVipInfoResponse {
        try await self.describeVipInfo(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
