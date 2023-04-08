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

extension Teo {
    /// CreatePlanForZone请求参数结构体
    public struct CreatePlanForZoneRequest: TCRequestModel {
        /// 站点ID。
        public let zoneId: String

        /// 所要购买套餐的类型，取值有：
        /// <li> sta: 全球内容分发网络（不包括中国大陆）标准版套餐； </li>
        /// <li> sta_with_bot: 全球内容分发网络（不包括中国大陆）标准版套餐附带bot管理；</li>
        /// <li> sta_cm: 中国大陆内容分发网络标准版套餐； </li>
        /// <li> sta_cm_with_bot: 中国大陆内容分发网络标准版套餐附带bot管理；</li>
        /// <li> ent: 全球内容分发网络（不包括中国大陆）企业版套餐； </li>
        /// <li> ent_with_bot: 全球内容分发网络（不包括中国大陆）企业版套餐附带bot管理；</li>
        /// <li> ent_cm: 中国大陆内容分发网络企业版套餐； </li>
        /// <li> ent_cm_with_bot: 中国大陆内容分发网络企业版套餐附带bot管理。</li>当前账户可购买套餐类型请以<a href="https://tcloud4api.woa.com/document/product/1657/80124?!preview&!document=1">DescribeAvailablePlans</a>返回为准。
        public let planType: String

        public init(zoneId: String, planType: String) {
            self.zoneId = zoneId
            self.planType = planType
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case planType = "PlanType"
        }
    }

    /// CreatePlanForZone返回参数结构体
    public struct CreatePlanForZoneResponse: TCResponseModel {
        /// 购买的资源名字列表。
        public let resourceNames: [String]

        /// 购买的订单号列表。
        public let dealNames: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resourceNames = "ResourceNames"
            case dealNames = "DealNames"
            case requestId = "RequestId"
        }
    }

    /// 为未购买套餐的站点购买套餐
    @inlinable
    public func createPlanForZone(_ input: CreatePlanForZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePlanForZoneResponse> {
        self.client.execute(action: "CreatePlanForZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 为未购买套餐的站点购买套餐
    @inlinable
    public func createPlanForZone(_ input: CreatePlanForZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePlanForZoneResponse {
        try await self.client.execute(action: "CreatePlanForZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 为未购买套餐的站点购买套餐
    @inlinable
    public func createPlanForZone(zoneId: String, planType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePlanForZoneResponse> {
        self.createPlanForZone(.init(zoneId: zoneId, planType: planType), region: region, logger: logger, on: eventLoop)
    }

    /// 为未购买套餐的站点购买套餐
    @inlinable
    public func createPlanForZone(zoneId: String, planType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePlanForZoneResponse {
        try await self.createPlanForZone(.init(zoneId: zoneId, planType: planType), region: region, logger: logger, on: eventLoop)
    }
}
