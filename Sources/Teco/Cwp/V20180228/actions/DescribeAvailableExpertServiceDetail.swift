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

extension Cwp {
    /// DescribeAvailableExpertServiceDetail请求参数结构体
    public struct DescribeAvailableExpertServiceDetailRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeAvailableExpertServiceDetail返回参数结构体
    public struct DescribeAvailableExpertServiceDetailResponse: TCResponse {
        /// 安全管家订单
        public let expertService: [ExpertServiceOrderInfo]

        /// 应急响应可用次数
        public let emergencyResponse: UInt64

        /// 旗舰护网可用次数
        public let protectNet: UInt64

        /// 是否购买过安全管家
        public let expertServiceBuy: Bool

        /// 是否购买过应急响应
        public let emergencyResponseBuy: Bool

        /// 是否购买过旗舰护网
        public let protectNetBuy: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case expertService = "ExpertService"
            case emergencyResponse = "EmergencyResponse"
            case protectNet = "ProtectNet"
            case expertServiceBuy = "ExpertServiceBuy"
            case emergencyResponseBuy = "EmergencyResponseBuy"
            case protectNetBuy = "ProtectNetBuy"
            case requestId = "RequestId"
        }
    }

    /// 可用订单详情
    ///
    /// 专家服务-可用订单详情
    @inlinable
    public func describeAvailableExpertServiceDetail(_ input: DescribeAvailableExpertServiceDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAvailableExpertServiceDetailResponse> {
        self.client.execute(action: "DescribeAvailableExpertServiceDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 可用订单详情
    ///
    /// 专家服务-可用订单详情
    @inlinable
    public func describeAvailableExpertServiceDetail(_ input: DescribeAvailableExpertServiceDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailableExpertServiceDetailResponse {
        try await self.client.execute(action: "DescribeAvailableExpertServiceDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 可用订单详情
    ///
    /// 专家服务-可用订单详情
    @inlinable
    public func describeAvailableExpertServiceDetail(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAvailableExpertServiceDetailResponse> {
        self.describeAvailableExpertServiceDetail(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 可用订单详情
    ///
    /// 专家服务-可用订单详情
    @inlinable
    public func describeAvailableExpertServiceDetail(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailableExpertServiceDetailResponse {
        try await self.describeAvailableExpertServiceDetail(.init(), region: region, logger: logger, on: eventLoop)
    }
}
