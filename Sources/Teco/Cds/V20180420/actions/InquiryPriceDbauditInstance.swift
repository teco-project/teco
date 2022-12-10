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

extension Cds {
    /// 数据安全审计产品实例询价
    ///
    /// 用于查询数据安全审计产品实例价格
    @inlinable
    public func inquiryPriceDbauditInstance(_ input: InquiryPriceDbauditInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InquiryPriceDbauditInstanceResponse > {
        self.client.execute(action: "InquiryPriceDbauditInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 数据安全审计产品实例询价
    ///
    /// 用于查询数据安全审计产品实例价格
    @inlinable
    public func inquiryPriceDbauditInstance(_ input: InquiryPriceDbauditInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceDbauditInstanceResponse {
        try await self.client.execute(action: "InquiryPriceDbauditInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// InquiryPriceDbauditInstance请求参数结构体
    public struct InquiryPriceDbauditInstanceRequest: TCRequestModel {
        /// 实例规格，取值范围： cdsaudit，cdsaudit_adv， cdsaudit_ent 分别为合规版，高级版，企业版
        public let instanceVersion: String
        
        /// 询价类型： renew，续费；newbuy，新购
        public let inquiryType: String
        
        /// 购买实例的时长。取值范围：1（y/m），2（y/m）,，3（y/m），4（m）， 5（m），6（m）， 7（m），8（m），9（m）， 10（m）
        public let timeSpan: UInt64
        
        /// 购买时长单位，y：年；m：月
        public let timeUnit: String
        
        /// 实例所在地域
        public let serviceRegion: String
        
        public init (instanceVersion: String, inquiryType: String, timeSpan: UInt64, timeUnit: String, serviceRegion: String) {
            self.instanceVersion = instanceVersion
            self.inquiryType = inquiryType
            self.timeSpan = timeSpan
            self.timeUnit = timeUnit
            self.serviceRegion = serviceRegion
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceVersion = "InstanceVersion"
            case inquiryType = "InquiryType"
            case timeSpan = "TimeSpan"
            case timeUnit = "TimeUnit"
            case serviceRegion = "ServiceRegion"
        }
    }
    
    /// InquiryPriceDbauditInstance返回参数结构体
    public struct InquiryPriceDbauditInstanceResponse: TCResponseModel {
        /// 总价，单位：元
        public let totalPrice: Float
        
        /// 真实价钱，预支费用的折扣价，单位：元
        public let realTotalCost: Float
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalPrice = "TotalPrice"
            case realTotalCost = "RealTotalCost"
            case requestId = "RequestId"
        }
    }
}
