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

extension Gaap {
    /// DescribeRealServersStatus请求参数结构体
    public struct DescribeRealServersStatusRequest: TCRequest {
        /// 源站ID列表
        public let realServerIds: [String]

        public init(realServerIds: [String]) {
            self.realServerIds = realServerIds
        }

        enum CodingKeys: String, CodingKey {
            case realServerIds = "RealServerIds"
        }
    }

    /// DescribeRealServersStatus返回参数结构体
    public struct DescribeRealServersStatusResponse: TCResponse {
        /// 返回源站查询结果的个数
        public let totalCount: Int64

        /// 源站被绑定状态列表
        public let realServerStatusSet: [RealServerStatus]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case realServerStatusSet = "RealServerStatusSet"
            case requestId = "RequestId"
        }
    }

    /// 查询源站绑定状态
    ///
    /// 本接口（DescribeRealServersStatus）用于查询源站是否已被规则或者监听器绑定
    @inlinable
    public func describeRealServersStatus(_ input: DescribeRealServersStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRealServersStatusResponse> {
        self.client.execute(action: "DescribeRealServersStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询源站绑定状态
    ///
    /// 本接口（DescribeRealServersStatus）用于查询源站是否已被规则或者监听器绑定
    @inlinable
    public func describeRealServersStatus(_ input: DescribeRealServersStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRealServersStatusResponse {
        try await self.client.execute(action: "DescribeRealServersStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询源站绑定状态
    ///
    /// 本接口（DescribeRealServersStatus）用于查询源站是否已被规则或者监听器绑定
    @inlinable
    public func describeRealServersStatus(realServerIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRealServersStatusResponse> {
        self.describeRealServersStatus(.init(realServerIds: realServerIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询源站绑定状态
    ///
    /// 本接口（DescribeRealServersStatus）用于查询源站是否已被规则或者监听器绑定
    @inlinable
    public func describeRealServersStatus(realServerIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRealServersStatusResponse {
        try await self.describeRealServersStatus(.init(realServerIds: realServerIds), region: region, logger: logger, on: eventLoop)
    }
}
