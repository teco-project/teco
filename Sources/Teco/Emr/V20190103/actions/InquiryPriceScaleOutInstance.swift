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

extension Emr {
    /// InquiryPriceScaleOutInstance请求参数结构体
    public struct InquiryPriceScaleOutInstanceRequest: TCRequestModel {
        /// 扩容的时间单位。取值范围：
        /// <li>s：表示秒。PayMode取值为0时，TimeUnit只能取值为s。</li>
        /// <li>m：表示月份。PayMode取值为1时，TimeUnit只能取值为m。</li>
        public let timeUnit: String

        /// 扩容的时长。结合TimeUnit一起使用。
        /// <li>TimeUnit为s时，该参数只能填写3600，表示按量计费实例。</li>
        /// <li>TimeUnit为m时，该参数填写的数字表示包年包月实例的购买时长，如1表示购买一个月</li>
        public let timeSpan: UInt64

        /// 实例所属的可用区ID，例如100003。该参数可以通过调用 [DescribeZones](https://cloud.tencent.com/document/api/213/15707) 的返回值中的ZoneId字段来获取。
        public let zoneId: UInt64

        /// 实例计费模式。取值范围：
        /// <li>0：表示按量计费。</li>
        /// <li>1：表示包年包月。</li>
        public let payMode: UInt64

        /// 实例ID。
        public let instanceId: String

        /// 扩容的Core节点数量。
        public let coreCount: UInt64

        /// 扩容的Task节点数量。
        public let taskCount: UInt64

        /// 货币种类。取值范围：
        /// <li>CNY：表示人民币。</li>
        public let currency: String

        /// 扩容的Router节点数量。
        public let routerCount: UInt64?

        /// 扩容的Master节点数量。
        public let masterCount: UInt64?

        public init(timeUnit: String, timeSpan: UInt64, zoneId: UInt64, payMode: UInt64, instanceId: String, coreCount: UInt64, taskCount: UInt64, currency: String, routerCount: UInt64? = nil, masterCount: UInt64? = nil) {
            self.timeUnit = timeUnit
            self.timeSpan = timeSpan
            self.zoneId = zoneId
            self.payMode = payMode
            self.instanceId = instanceId
            self.coreCount = coreCount
            self.taskCount = taskCount
            self.currency = currency
            self.routerCount = routerCount
            self.masterCount = masterCount
        }

        enum CodingKeys: String, CodingKey {
            case timeUnit = "TimeUnit"
            case timeSpan = "TimeSpan"
            case zoneId = "ZoneId"
            case payMode = "PayMode"
            case instanceId = "InstanceId"
            case coreCount = "CoreCount"
            case taskCount = "TaskCount"
            case currency = "Currency"
            case routerCount = "RouterCount"
            case masterCount = "MasterCount"
        }
    }

    /// InquiryPriceScaleOutInstance返回参数结构体
    public struct InquiryPriceScaleOutInstanceResponse: TCResponseModel {
        /// 原价，单位为元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let originalCost: String?

        /// 折扣价，单位为元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let discountCost: String?

        /// 扩容的时间单位。取值范围：
        /// <li>s：表示秒。</li>
        /// <li>m：表示月份。</li>
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unit: String?

        /// 询价的节点规格。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let priceSpec: PriceResource?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case originalCost = "OriginalCost"
            case discountCost = "DiscountCost"
            case unit = "Unit"
            case priceSpec = "PriceSpec"
            case requestId = "RequestId"
        }
    }

    /// 扩容询价
    ///
    /// 扩容询价. 当扩容时候，请通过该接口查询价格。
    @inlinable
    public func inquiryPriceScaleOutInstance(_ input: InquiryPriceScaleOutInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InquiryPriceScaleOutInstanceResponse > {
        self.client.execute(action: "InquiryPriceScaleOutInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 扩容询价
    ///
    /// 扩容询价. 当扩容时候，请通过该接口查询价格。
    @inlinable
    public func inquiryPriceScaleOutInstance(_ input: InquiryPriceScaleOutInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceScaleOutInstanceResponse {
        try await self.client.execute(action: "InquiryPriceScaleOutInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 扩容询价
    ///
    /// 扩容询价. 当扩容时候，请通过该接口查询价格。
    @inlinable
    public func inquiryPriceScaleOutInstance(timeUnit: String, timeSpan: UInt64, zoneId: UInt64, payMode: UInt64, instanceId: String, coreCount: UInt64, taskCount: UInt64, currency: String, routerCount: UInt64? = nil, masterCount: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InquiryPriceScaleOutInstanceResponse > {
        self.inquiryPriceScaleOutInstance(InquiryPriceScaleOutInstanceRequest(timeUnit: timeUnit, timeSpan: timeSpan, zoneId: zoneId, payMode: payMode, instanceId: instanceId, coreCount: coreCount, taskCount: taskCount, currency: currency, routerCount: routerCount, masterCount: masterCount), logger: logger, on: eventLoop)
    }

    /// 扩容询价
    ///
    /// 扩容询价. 当扩容时候，请通过该接口查询价格。
    @inlinable
    public func inquiryPriceScaleOutInstance(timeUnit: String, timeSpan: UInt64, zoneId: UInt64, payMode: UInt64, instanceId: String, coreCount: UInt64, taskCount: UInt64, currency: String, routerCount: UInt64? = nil, masterCount: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceScaleOutInstanceResponse {
        try await self.inquiryPriceScaleOutInstance(InquiryPriceScaleOutInstanceRequest(timeUnit: timeUnit, timeSpan: timeSpan, zoneId: zoneId, payMode: payMode, instanceId: instanceId, coreCount: coreCount, taskCount: taskCount, currency: currency, routerCount: routerCount, masterCount: masterCount), logger: logger, on: eventLoop)
    }
}
