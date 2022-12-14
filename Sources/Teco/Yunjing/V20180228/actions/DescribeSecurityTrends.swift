//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Yunjing {
    /// DescribeSecurityTrends请求参数结构体
    public struct DescribeSecurityTrendsRequest: TCRequestModel {
        /// 开始时间。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var beginDate: Date

        /// 结束时间。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var endDate: Date

        public init(beginDate: Date, endDate: Date) {
            self.beginDate = beginDate
            self.endDate = endDate
        }

        enum CodingKeys: String, CodingKey {
            case beginDate = "BeginDate"
            case endDate = "EndDate"
        }
    }

    /// DescribeSecurityTrends返回参数结构体
    public struct DescribeSecurityTrendsResponse: TCResponseModel {
        /// 木马事件统计数据数组。
        public let malwares: [SecurityTrend]

        /// 异地登录事件统计数据数组。
        public let nonLocalLoginPlaces: [SecurityTrend]

        /// 密码破解事件统计数据数组。
        public let bruteAttacks: [SecurityTrend]

        /// 漏洞统计数据数组。
        public let vuls: [SecurityTrend]

        /// 基线统计数据数组。
        public let baseLines: [SecurityTrend]

        /// 恶意请求统计数据数组。
        public let maliciousRequests: [SecurityTrend]

        /// 高危命令统计数据数组。
        public let highRiskBashs: [SecurityTrend]

        /// 反弹shell统计数据数组。
        public let reverseShells: [SecurityTrend]

        /// 本地提权统计数据数组。
        public let privilegeEscalations: [SecurityTrend]

        /// 网络攻击统计数据数组。
        public let cyberAttacks: [SecurityTrend]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case malwares = "Malwares"
            case nonLocalLoginPlaces = "NonLocalLoginPlaces"
            case bruteAttacks = "BruteAttacks"
            case vuls = "Vuls"
            case baseLines = "BaseLines"
            case maliciousRequests = "MaliciousRequests"
            case highRiskBashs = "HighRiskBashs"
            case reverseShells = "ReverseShells"
            case privilegeEscalations = "PrivilegeEscalations"
            case cyberAttacks = "CyberAttacks"
            case requestId = "RequestId"
        }
    }

    /// 获取安全事件统计数据
    ///
    /// 本接口 (DescribeSecurityTrends) 用于获取安全事件统计数据。
    @inlinable
    public func describeSecurityTrends(_ input: DescribeSecurityTrendsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSecurityTrendsResponse > {
        self.client.execute(action: "DescribeSecurityTrends", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取安全事件统计数据
    ///
    /// 本接口 (DescribeSecurityTrends) 用于获取安全事件统计数据。
    @inlinable
    public func describeSecurityTrends(_ input: DescribeSecurityTrendsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityTrendsResponse {
        try await self.client.execute(action: "DescribeSecurityTrends", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取安全事件统计数据
    ///
    /// 本接口 (DescribeSecurityTrends) 用于获取安全事件统计数据。
    @inlinable
    public func describeSecurityTrends(beginDate: Date, endDate: Date, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSecurityTrendsResponse > {
        self.describeSecurityTrends(DescribeSecurityTrendsRequest(beginDate: beginDate, endDate: endDate), logger: logger, on: eventLoop)
    }

    /// 获取安全事件统计数据
    ///
    /// 本接口 (DescribeSecurityTrends) 用于获取安全事件统计数据。
    @inlinable
    public func describeSecurityTrends(beginDate: Date, endDate: Date, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityTrendsResponse {
        try await self.describeSecurityTrends(DescribeSecurityTrendsRequest(beginDate: beginDate, endDate: endDate), logger: logger, on: eventLoop)
    }
}
