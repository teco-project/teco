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

extension Cwp {
    /// DescribeSecurityEventsCnt请求参数结构体
    public struct DescribeSecurityEventsCntRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeSecurityEventsCnt返回参数结构体
    public struct DescribeSecurityEventsCntResponse: TCResponseModel {
        /// 木马文件相关风险事件
        public let malware: SecurityEventInfo

        /// 登录审计相关风险事件
        public let hostLogin: SecurityEventInfo

        /// 密码破解相关风险事件
        public let bruteAttack: SecurityEventInfo

        /// 恶意请求相关风险事件
        public let riskDns: SecurityEventInfo

        /// 高危命令相关风险事件
        public let bash: SecurityEventInfo

        /// 本地提权相关风险事件
        public let privilegeRules: SecurityEventInfo

        /// 反弹Shell相关风险事件
        public let reverseShell: SecurityEventInfo

        /// 应用漏洞风险事件
        public let sysVul: SecurityEventInfo

        /// Web应用漏洞相关风险事件
        public let webVul: SecurityEventInfo

        /// 应急漏洞相关风险事件
        public let emergencyVul: SecurityEventInfo

        /// 安全基线相关风险事件
        public let baseLine: SecurityEventInfo

        /// 攻击检测相关风险事件
        public let attackLogs: SecurityEventInfo

        /// 受影响机器数
        public let effectMachineCount: UInt64

        /// 所有事件总数
        public let eventsCount: UInt64

        /// window 系统漏洞事件总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let windowVul: SecurityEventInfo?

        /// linux系统漏洞事件总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let linuxVul: SecurityEventInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case malware = "Malware"
            case hostLogin = "HostLogin"
            case bruteAttack = "BruteAttack"
            case riskDns = "RiskDns"
            case bash = "Bash"
            case privilegeRules = "PrivilegeRules"
            case reverseShell = "ReverseShell"
            case sysVul = "SysVul"
            case webVul = "WebVul"
            case emergencyVul = "EmergencyVul"
            case baseLine = "BaseLine"
            case attackLogs = "AttackLogs"
            case effectMachineCount = "EffectMachineCount"
            case eventsCount = "EventsCount"
            case windowVul = "WindowVul"
            case linuxVul = "LinuxVul"
            case requestId = "RequestId"
        }
    }

    /// 获取安全事件数统计数据
    ///
    /// 获取安全概览相关事件统计数据接口
    @inlinable
    public func describeSecurityEventsCnt(_ input: DescribeSecurityEventsCntRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityEventsCntResponse> {
        self.client.execute(action: "DescribeSecurityEventsCnt", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取安全事件数统计数据
    ///
    /// 获取安全概览相关事件统计数据接口
    @inlinable
    public func describeSecurityEventsCnt(_ input: DescribeSecurityEventsCntRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityEventsCntResponse {
        try await self.client.execute(action: "DescribeSecurityEventsCnt", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取安全事件数统计数据
    ///
    /// 获取安全概览相关事件统计数据接口
    @inlinable
    public func describeSecurityEventsCnt(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityEventsCntResponse> {
        self.describeSecurityEventsCnt(DescribeSecurityEventsCntRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取安全事件数统计数据
    ///
    /// 获取安全概览相关事件统计数据接口
    @inlinable
    public func describeSecurityEventsCnt(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityEventsCntResponse {
        try await self.describeSecurityEventsCnt(DescribeSecurityEventsCntRequest(), region: region, logger: logger, on: eventLoop)
    }
}
