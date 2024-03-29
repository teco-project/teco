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

extension Emr {
    /// InquiryPriceRenewInstance请求参数结构体
    public struct InquiryPriceRenewInstanceRequest: TCRequest {
        /// 实例续费的时长。需要结合TimeUnit一起使用。1表示续费一个月
        public let timeSpan: UInt64

        /// 待续费节点的资源ID列表。资源ID形如：emr-vm-xxxxxxxx。有效的资源ID可通过登录[控制台](https://console.cloud.tencent.com/emr)查询。
        public let resourceIds: [String]

        /// 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        public let placement: Placement

        /// 实例计费模式。此处只支持取值为1，表示包年包月。
        public let payMode: Int64

        /// 实例续费的时间单位。取值范围：
        /// - m：表示月份。
        public let timeUnit: String?

        /// 货币种类。取值范围：
        /// - CNY：表示人民币。
        public let currency: String?

        /// 是否按量转包年包月。0：否，1：是。
        public let modifyPayMode: Int64?

        public init(timeSpan: UInt64, resourceIds: [String], placement: Placement, payMode: Int64, timeUnit: String? = nil, currency: String? = nil, modifyPayMode: Int64? = nil) {
            self.timeSpan = timeSpan
            self.resourceIds = resourceIds
            self.placement = placement
            self.payMode = payMode
            self.timeUnit = timeUnit
            self.currency = currency
            self.modifyPayMode = modifyPayMode
        }

        enum CodingKeys: String, CodingKey {
            case timeSpan = "TimeSpan"
            case resourceIds = "ResourceIds"
            case placement = "Placement"
            case payMode = "PayMode"
            case timeUnit = "TimeUnit"
            case currency = "Currency"
            case modifyPayMode = "ModifyPayMode"
        }
    }

    /// InquiryPriceRenewInstance返回参数结构体
    public struct InquiryPriceRenewInstanceResponse: TCResponse {
        /// 原价，单位为元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let originalCost: Float?

        /// 折扣价，单位为元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let discountCost: Float?

        /// 实例续费的时间单位。取值范围：
        /// - m：表示月份。
        ///
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timeUnit: String?

        /// 实例续费的时长。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timeSpan: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case originalCost = "OriginalCost"
            case discountCost = "DiscountCost"
            case timeUnit = "TimeUnit"
            case timeSpan = "TimeSpan"
            case requestId = "RequestId"
        }
    }

    /// 续费询价
    ///
    /// 续费询价。
    @inlinable
    public func inquiryPriceRenewInstance(_ input: InquiryPriceRenewInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceRenewInstanceResponse> {
        self.client.execute(action: "InquiryPriceRenewInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 续费询价
    ///
    /// 续费询价。
    @inlinable
    public func inquiryPriceRenewInstance(_ input: InquiryPriceRenewInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceRenewInstanceResponse {
        try await self.client.execute(action: "InquiryPriceRenewInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 续费询价
    ///
    /// 续费询价。
    @inlinable
    public func inquiryPriceRenewInstance(timeSpan: UInt64, resourceIds: [String], placement: Placement, payMode: Int64, timeUnit: String? = nil, currency: String? = nil, modifyPayMode: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceRenewInstanceResponse> {
        self.inquiryPriceRenewInstance(.init(timeSpan: timeSpan, resourceIds: resourceIds, placement: placement, payMode: payMode, timeUnit: timeUnit, currency: currency, modifyPayMode: modifyPayMode), region: region, logger: logger, on: eventLoop)
    }

    /// 续费询价
    ///
    /// 续费询价。
    @inlinable
    public func inquiryPriceRenewInstance(timeSpan: UInt64, resourceIds: [String], placement: Placement, payMode: Int64, timeUnit: String? = nil, currency: String? = nil, modifyPayMode: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceRenewInstanceResponse {
        try await self.inquiryPriceRenewInstance(.init(timeSpan: timeSpan, resourceIds: resourceIds, placement: placement, payMode: payMode, timeUnit: timeUnit, currency: currency, modifyPayMode: modifyPayMode), region: region, logger: logger, on: eventLoop)
    }
}
