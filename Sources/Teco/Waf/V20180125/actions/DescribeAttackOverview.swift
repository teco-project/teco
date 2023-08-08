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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Waf {
    /// DescribeAttackOverview请求参数结构体
    public struct DescribeAttackOverviewRequest: TCRequestModel {
        /// 查询开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var fromTime: Date

        /// 查询结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var toTime: Date

        /// 客户的Appid
        public let appid: UInt64?

        /// 被查询的域名
        public let domain: String?

        /// 只有两个值有效，sparta-waf，clb-waf，不传则不过滤
        public let edition: String?

        /// WAF实例ID，不传则不过滤
        public let instanceID: String?

        public init(fromTime: Date, toTime: Date, appid: UInt64? = nil, domain: String? = nil, edition: String? = nil, instanceID: String? = nil) {
            self._fromTime = .init(wrappedValue: fromTime)
            self._toTime = .init(wrappedValue: toTime)
            self.appid = appid
            self.domain = domain
            self.edition = edition
            self.instanceID = instanceID
        }

        enum CodingKeys: String, CodingKey {
            case fromTime = "FromTime"
            case toTime = "ToTime"
            case appid = "Appid"
            case domain = "Domain"
            case edition = "Edition"
            case instanceID = "InstanceID"
        }
    }

    /// DescribeAttackOverview返回参数结构体
    public struct DescribeAttackOverviewResponse: TCResponseModel {
        /// 访问请求总数
        public let accessCount: UInt64

        /// Web攻击总数
        public let attackCount: UInt64

        /// 访问控制总数
        public let aclCount: UInt64

        /// CC攻击总数
        public let ccCount: UInt64

        /// Bot攻击总数
        public let botCount: UInt64

        /// api资产总数
        public let apiAssetsCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accessCount = "AccessCount"
            case attackCount = "AttackCount"
            case aclCount = "ACLCount"
            case ccCount = "CCCount"
            case botCount = "BotCount"
            case apiAssetsCount = "ApiAssetsCount"
            case requestId = "RequestId"
        }
    }

    /// 攻击总览
    @inlinable
    public func describeAttackOverview(_ input: DescribeAttackOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAttackOverviewResponse> {
        self.client.execute(action: "DescribeAttackOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 攻击总览
    @inlinable
    public func describeAttackOverview(_ input: DescribeAttackOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAttackOverviewResponse {
        try await self.client.execute(action: "DescribeAttackOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 攻击总览
    @inlinable
    public func describeAttackOverview(fromTime: Date, toTime: Date, appid: UInt64? = nil, domain: String? = nil, edition: String? = nil, instanceID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAttackOverviewResponse> {
        self.describeAttackOverview(.init(fromTime: fromTime, toTime: toTime, appid: appid, domain: domain, edition: edition, instanceID: instanceID), region: region, logger: logger, on: eventLoop)
    }

    /// 攻击总览
    @inlinable
    public func describeAttackOverview(fromTime: Date, toTime: Date, appid: UInt64? = nil, domain: String? = nil, edition: String? = nil, instanceID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAttackOverviewResponse {
        try await self.describeAttackOverview(.init(fromTime: fromTime, toTime: toTime, appid: appid, domain: domain, edition: edition, instanceID: instanceID), region: region, logger: logger, on: eventLoop)
    }
}
