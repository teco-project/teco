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

extension Mongodb {
    /// InquirePriceRenewDBInstances请求参数结构体
    public struct InquirePriceRenewDBInstancesRequest: TCRequestModel {
        /// 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同，接口单次最多只支持5个实例进行操作。
        public let instanceIds: [String]
        
        /// 预付费模式（即包年包月）相关参数设置。通过该参数可以指定包年包月实例的续费时长、是否设置自动续费等属性。
        public let instanceChargePrepaid: InstanceChargePrepaid
        
        public init (instanceIds: [String], instanceChargePrepaid: InstanceChargePrepaid) {
            self.instanceIds = instanceIds
            self.instanceChargePrepaid = instanceChargePrepaid
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case instanceChargePrepaid = "InstanceChargePrepaid"
        }
    }
    
    /// InquirePriceRenewDBInstances返回参数结构体
    public struct InquirePriceRenewDBInstancesResponse: TCResponseModel {
        /// 价格
        public let price: DBInstancePrice
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case requestId = "RequestId"
        }
    }
    
    /// 续费实例询价
    ///
    /// 本接口 (InquiryPriceRenewDBInstances) 用于续费包年包月实例询价。
    @inlinable
    public func inquirePriceRenewDBInstances(_ input: InquirePriceRenewDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InquirePriceRenewDBInstancesResponse > {
        self.client.execute(action: "InquirePriceRenewDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 续费实例询价
    ///
    /// 本接口 (InquiryPriceRenewDBInstances) 用于续费包年包月实例询价。
    @inlinable
    public func inquirePriceRenewDBInstances(_ input: InquirePriceRenewDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePriceRenewDBInstancesResponse {
        try await self.client.execute(action: "InquirePriceRenewDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
