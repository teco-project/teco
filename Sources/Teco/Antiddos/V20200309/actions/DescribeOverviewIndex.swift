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

extension Antiddos {
    /// DescribeOverviewIndex请求参数结构体
    public struct DescribeOverviewIndexRequest: TCRequest {
        /// 拉取指标起始时间
        public let startTime: String

        /// 拉取指标结束时间
        public let endTime: String

        public init(startTime: String, endTime: String) {
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeOverviewIndex返回参数结构体
    public struct DescribeOverviewIndexResponse: TCResponse {
        /// IP总数
        public let allIpCount: UInt64

        /// 高防IP总数（包含高防包+高防IP）
        public let antiddosIpCount: UInt64

        /// 攻击IP总数
        public let attackIpCount: UInt64

        /// 封堵IP总数
        public let blockIpCount: UInt64

        /// 高防域名总数
        public let antiddosDomainCount: UInt64

        /// 攻击域名总数
        public let attackDomainCount: UInt64

        /// 攻击流量峰值
        public let maxAttackFlow: UInt64

        /// 当前最近一条攻击中的起始时间
        public let newAttackTime: String

        /// 当前最近一条攻击中的IP
        public let newAttackIp: String

        /// 当前最近一条攻击中的攻击类型
        public let newAttackType: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case allIpCount = "AllIpCount"
            case antiddosIpCount = "AntiddosIpCount"
            case attackIpCount = "AttackIpCount"
            case blockIpCount = "BlockIpCount"
            case antiddosDomainCount = "AntiddosDomainCount"
            case attackDomainCount = "AttackDomainCount"
            case maxAttackFlow = "MaxAttackFlow"
            case newAttackTime = "NewAttackTime"
            case newAttackIp = "NewAttackIp"
            case newAttackType = "NewAttackType"
            case requestId = "RequestId"
        }
    }

    /// 拉取防护概览指标
    @inlinable
    public func describeOverviewIndex(_ input: DescribeOverviewIndexRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOverviewIndexResponse> {
        self.client.execute(action: "DescribeOverviewIndex", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取防护概览指标
    @inlinable
    public func describeOverviewIndex(_ input: DescribeOverviewIndexRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOverviewIndexResponse {
        try await self.client.execute(action: "DescribeOverviewIndex", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取防护概览指标
    @inlinable
    public func describeOverviewIndex(startTime: String, endTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOverviewIndexResponse> {
        self.describeOverviewIndex(.init(startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取防护概览指标
    @inlinable
    public func describeOverviewIndex(startTime: String, endTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOverviewIndexResponse {
        try await self.describeOverviewIndex(.init(startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
