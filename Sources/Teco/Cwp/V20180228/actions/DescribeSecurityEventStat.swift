//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cwp {
    /// DescribeSecurityEventStat请求参数结构体
    public struct DescribeSecurityEventStatRequest: TCRequestModel {
        /// 该接口无过滤条件
        public let filters: [Filter]?

        public init(filters: [Filter]? = nil) {
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
        }
    }

    /// DescribeSecurityEventStat返回参数结构体
    public struct DescribeSecurityEventStatResponse: TCResponseModel {
        /// 木马事件统计
        public let malwareStat: EventStat

        /// 异地事件统计
        public let hostLoginStat: EventStat

        /// 爆破事件统计
        public let bruteAttackStat: EventStat

        /// 恶意请求事件统计
        public let maliciousRequestStat: EventStat

        /// 本地提权事件统计
        public let privilegeStat: EventStat

        /// 反弹Shell事件统计
        public let reverseShellStat: EventStat

        /// 高危命令事件统计
        public let highRiskBashStat: EventStat

        /// 网络攻击事件统计
        public let attackLogsStat: EventStat

        /// 高危漏洞事件统计
        public let vulHighStat: EventStat

        /// 中危漏洞事件统计
        public let vulNormalStat: EventStat

        /// 低危漏洞事件统计
        public let vulLowStat: EventStat

        /// 高危基线漏洞事件统计
        public let baselineHighStat: EventStat

        /// 中危基线漏事件统计
        public let baselineNormalStat: EventStat

        /// 低危基线漏事件统计
        public let baselineLowStat: EventStat

        /// 有未处理安全事件的机器总数
        public let machineTotalAffectNum: UInt64

        /// 有未处理入侵安全事件的机器总数
        public let invasionTotalAffectNum: UInt64

        /// 有未处理漏洞安全事件的机器总数
        public let vulTotalAffectNum: UInt64

        /// 有未处理基线安全事件的机器总数
        public let baseLineTotalAffectNum: UInt64

        /// 有未处理网络攻击安全事件的机器总数
        public let cyberAttackTotalAffectNum: UInt64

        /// 严重漏洞事件统计
        public let vulRiskStat: EventStat

        /// 严重基线漏洞事件统计
        public let baselineRiskStat: EventStat

        /// 漏洞数统计
        public let vulStat: EventStat

        /// 安全得分
        public let score: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case malwareStat = "MalwareStat"
            case hostLoginStat = "HostLoginStat"
            case bruteAttackStat = "BruteAttackStat"
            case maliciousRequestStat = "MaliciousRequestStat"
            case privilegeStat = "PrivilegeStat"
            case reverseShellStat = "ReverseShellStat"
            case highRiskBashStat = "HighRiskBashStat"
            case attackLogsStat = "AttackLogsStat"
            case vulHighStat = "VulHighStat"
            case vulNormalStat = "VulNormalStat"
            case vulLowStat = "VulLowStat"
            case baselineHighStat = "BaselineHighStat"
            case baselineNormalStat = "BaselineNormalStat"
            case baselineLowStat = "BaselineLowStat"
            case machineTotalAffectNum = "MachineTotalAffectNum"
            case invasionTotalAffectNum = "InvasionTotalAffectNum"
            case vulTotalAffectNum = "VulTotalAffectNum"
            case baseLineTotalAffectNum = "BaseLineTotalAffectNum"
            case cyberAttackTotalAffectNum = "CyberAttackTotalAffectNum"
            case vulRiskStat = "VulRiskStat"
            case baselineRiskStat = "BaselineRiskStat"
            case vulStat = "VulStat"
            case score = "Score"
            case requestId = "RequestId"
        }
    }

    /// 获取安全事件统计
    @inlinable
    public func describeSecurityEventStat(_ input: DescribeSecurityEventStatRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityEventStatResponse> {
        self.client.execute(action: "DescribeSecurityEventStat", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取安全事件统计
    @inlinable
    public func describeSecurityEventStat(_ input: DescribeSecurityEventStatRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityEventStatResponse {
        try await self.client.execute(action: "DescribeSecurityEventStat", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取安全事件统计
    @inlinable
    public func describeSecurityEventStat(filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityEventStatResponse> {
        self.describeSecurityEventStat(DescribeSecurityEventStatRequest(filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取安全事件统计
    @inlinable
    public func describeSecurityEventStat(filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityEventStatResponse {
        try await self.describeSecurityEventStat(DescribeSecurityEventStatRequest(filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
