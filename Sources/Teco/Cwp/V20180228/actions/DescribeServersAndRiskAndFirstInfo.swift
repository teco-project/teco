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
    /// DescribeServersAndRiskAndFirstInfo请求参数结构体
    public struct DescribeServersAndRiskAndFirstInfoRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeServersAndRiskAndFirstInfo返回参数结构体
    public struct DescribeServersAndRiskAndFirstInfoResponse: TCResponse {
        /// 风险文件数
        public let riskFileCount: UInt64

        /// 今日新增风险文件数
        public let addRiskFileCount: UInt64

        /// 受影响服务器台数
        public let serversCount: UInt64

        /// 是否试用：true-是，false-否
        public let isFirstCheck: Bool

        /// 木马最近检测时间
        public let scanTime: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case riskFileCount = "RiskFileCount"
            case addRiskFileCount = "AddRiskFileCount"
            case serversCount = "ServersCount"
            case isFirstCheck = "IsFirstCheck"
            case scanTime = "ScanTime"
            case requestId = "RequestId"
        }
    }

    /// 获文件查杀概览信息
    ///
    /// 获取待处理风险文件数+影响服务器数+是否试用检测+最近检测时间
    @inlinable
    public func describeServersAndRiskAndFirstInfo(_ input: DescribeServersAndRiskAndFirstInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServersAndRiskAndFirstInfoResponse> {
        self.client.execute(action: "DescribeServersAndRiskAndFirstInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获文件查杀概览信息
    ///
    /// 获取待处理风险文件数+影响服务器数+是否试用检测+最近检测时间
    @inlinable
    public func describeServersAndRiskAndFirstInfo(_ input: DescribeServersAndRiskAndFirstInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServersAndRiskAndFirstInfoResponse {
        try await self.client.execute(action: "DescribeServersAndRiskAndFirstInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获文件查杀概览信息
    ///
    /// 获取待处理风险文件数+影响服务器数+是否试用检测+最近检测时间
    @inlinable
    public func describeServersAndRiskAndFirstInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServersAndRiskAndFirstInfoResponse> {
        self.describeServersAndRiskAndFirstInfo(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获文件查杀概览信息
    ///
    /// 获取待处理风险文件数+影响服务器数+是否试用检测+最近检测时间
    @inlinable
    public func describeServersAndRiskAndFirstInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServersAndRiskAndFirstInfoResponse {
        try await self.describeServersAndRiskAndFirstInfo(.init(), region: region, logger: logger, on: eventLoop)
    }
}
