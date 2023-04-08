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

extension Dc {
    /// DescribeInternetAddressStatistics请求参数结构体
    public struct DescribeInternetAddressStatisticsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeInternetAddressStatistics返回参数结构体
    public struct DescribeInternetAddressStatisticsResponse: TCResponseModel {
        /// 互联网公网地址统计信息数量
        public let totalCount: Int64

        /// 互联网公网地址统计信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let internetAddressStatistics: [InternetAddressStatistics]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case internetAddressStatistics = "InternetAddressStatistics"
            case requestId = "RequestId"
        }
    }

    /// 获取用户互联网公网地址统计信息
    ///
    /// 获取用户互联网公网地址分配统计信息
    @inlinable
    public func describeInternetAddressStatistics(_ input: DescribeInternetAddressStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInternetAddressStatisticsResponse> {
        self.client.execute(action: "DescribeInternetAddressStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户互联网公网地址统计信息
    ///
    /// 获取用户互联网公网地址分配统计信息
    @inlinable
    public func describeInternetAddressStatistics(_ input: DescribeInternetAddressStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInternetAddressStatisticsResponse {
        try await self.client.execute(action: "DescribeInternetAddressStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户互联网公网地址统计信息
    ///
    /// 获取用户互联网公网地址分配统计信息
    @inlinable
    public func describeInternetAddressStatistics(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInternetAddressStatisticsResponse> {
        self.describeInternetAddressStatistics(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户互联网公网地址统计信息
    ///
    /// 获取用户互联网公网地址分配统计信息
    @inlinable
    public func describeInternetAddressStatistics(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInternetAddressStatisticsResponse {
        try await self.describeInternetAddressStatistics(.init(), region: region, logger: logger, on: eventLoop)
    }
}
