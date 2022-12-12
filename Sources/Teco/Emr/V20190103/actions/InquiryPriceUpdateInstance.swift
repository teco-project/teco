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

extension Emr {
    /// InquiryPriceUpdateInstance请求参数结构体
    public struct InquiryPriceUpdateInstanceRequest: TCRequestModel {
        /// 变配的时间单位。取值范围：
        /// <li>s：表示秒。PayMode取值为0时，TimeUnit只能取值为s。</li>
        /// <li>m：表示月份。PayMode取值为1时，TimeUnit只能取值为m。</li>
        public let timeUnit: String
        
        /// 变配的时长。结合TimeUnit一起使用。
        /// <li>TimeUnit为s时，该参数只能填写3600，表示按量计费实例。</li>
        /// <li>TimeUnit为m时，该参数填写的数字表示包年包月实例的购买时长，如1表示购买一个月</li>
        public let timeSpan: UInt64
        
        /// 节点变配的目标配置。
        public let updateSpec: UpdateInstanceSettings
        
        /// 实例计费模式。取值范围：
        /// <li>0：表示按量计费。</li>
        /// <li>1：表示包年包月。</li>
        public let payMode: UInt64
        
        /// 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        public let placement: Placement
        
        /// 货币种类。取值范围：
        /// <li>CNY：表示人民币。</li>
        public let currency: String?
        
        /// 批量变配资源ID列表
        public let resourceIdList: [String]?
        
        public init (timeUnit: String, timeSpan: UInt64, updateSpec: UpdateInstanceSettings, payMode: UInt64, placement: Placement, currency: String? = nil, resourceIdList: [String]? = nil) {
            self.timeUnit = timeUnit
            self.timeSpan = timeSpan
            self.updateSpec = updateSpec
            self.payMode = payMode
            self.placement = placement
            self.currency = currency
            self.resourceIdList = resourceIdList
        }
        
        enum CodingKeys: String, CodingKey {
            case timeUnit = "TimeUnit"
            case timeSpan = "TimeSpan"
            case updateSpec = "UpdateSpec"
            case payMode = "PayMode"
            case placement = "Placement"
            case currency = "Currency"
            case resourceIdList = "ResourceIdList"
        }
    }
    
    /// InquiryPriceUpdateInstance返回参数结构体
    public struct InquiryPriceUpdateInstanceResponse: TCResponseModel {
        /// 原价，单位为元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let originalCost: Float?
        
        /// 折扣价，单位为元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let discountCost: Float?
        
        /// 变配的时间单位。取值范围：
        /// <li>s：表示秒。</li>
        /// <li>m：表示月份。</li>
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timeUnit: String?
        
        /// 变配的时长。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timeSpan: Int64?
        
        /// 价格详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let priceDetail: [PriceDetail]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case originalCost = "OriginalCost"
            case discountCost = "DiscountCost"
            case timeUnit = "TimeUnit"
            case timeSpan = "TimeSpan"
            case priceDetail = "PriceDetail"
            case requestId = "RequestId"
        }
    }
    
    /// 变配询价
    @inlinable
    public func inquiryPriceUpdateInstance(_ input: InquiryPriceUpdateInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InquiryPriceUpdateInstanceResponse > {
        self.client.execute(action: "InquiryPriceUpdateInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 变配询价
    @inlinable
    public func inquiryPriceUpdateInstance(_ input: InquiryPriceUpdateInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceUpdateInstanceResponse {
        try await self.client.execute(action: "InquiryPriceUpdateInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
