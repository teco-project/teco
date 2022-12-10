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

extension Postgres {
    /// 查询售卖价格
    ///
    /// 本接口 (InquiryPriceCreateDBInstances) 用于查询购买一个或多个实例的价格信息。
    @inlinable
    public func inquiryPriceCreateDBInstances(_ input: InquiryPriceCreateDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InquiryPriceCreateDBInstancesResponse > {
        self.client.execute(action: "InquiryPriceCreateDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询售卖价格
    ///
    /// 本接口 (InquiryPriceCreateDBInstances) 用于查询购买一个或多个实例的价格信息。
    @inlinable
    public func inquiryPriceCreateDBInstances(_ input: InquiryPriceCreateDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceCreateDBInstancesResponse {
        try await self.client.execute(action: "InquiryPriceCreateDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// InquiryPriceCreateDBInstances请求参数结构体
    public struct InquiryPriceCreateDBInstancesRequest: TCRequestModel {
        /// 可用区ID。该参数可以通过调用 DescribeZones 接口的返回值中的Zone字段来获取。
        public let zone: String
        
        /// 规格ID。该参数可以通过调用DescribeProductConfig接口的返回值中的SpecCode字段来获取。
        public let specCode: String
        
        /// 存储容量大小，单位：GB。
        public let storage: UInt64
        
        /// 实例数量。目前最大数量不超过100，如需一次性创建更多实例，请联系客服支持。
        public let instanceCount: UInt64
        
        /// 购买时长，单位：月。目前只支持1,2,3,4,5,6,7,8,9,10,11,12,24,36这些值。
        public let period: UInt64
        
        /// 【弃字段，不再生效】，计费ID。该参数可以通过调用DescribeProductConfig接口的返回值中的Pid字段来获取。
        public let pid: UInt64?
        
        /// 实例计费类型。目前只支持：PREPAID（预付费，即包年包月）。
        public let instanceChargeType: String?
        
        /// 实例类型，默认primary，支持如下：
        /// primary（双机高可用（一主一从））
        /// readonly（只读实例）
        public let instanceType: String?
        
        /// DB引擎，默认postgresql，支持如下：
        /// postgresql（云数据库PostgreSQL）
        /// mssql_compatible（MSSQL兼容-云数据库PostgreSQL）
        public let dbEngine: String?
        
        public init (zone: String, specCode: String, storage: UInt64, instanceCount: UInt64, period: UInt64, pid: UInt64?, instanceChargeType: String?, instanceType: String?, dbEngine: String?) {
            self.zone = zone
            self.specCode = specCode
            self.storage = storage
            self.instanceCount = instanceCount
            self.period = period
            self.pid = pid
            self.instanceChargeType = instanceChargeType
            self.instanceType = instanceType
            self.dbEngine = dbEngine
        }
        
        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case specCode = "SpecCode"
            case storage = "Storage"
            case instanceCount = "InstanceCount"
            case period = "Period"
            case pid = "Pid"
            case instanceChargeType = "InstanceChargeType"
            case instanceType = "InstanceType"
            case dbEngine = "DBEngine"
        }
    }
    
    /// InquiryPriceCreateDBInstances返回参数结构体
    public struct InquiryPriceCreateDBInstancesResponse: TCResponseModel {
        /// 刊例价，单位：分
        public let originalPrice: UInt64
        
        /// 折后实际付款金额，单位：分
        public let price: UInt64
        
        /// 币种。例如，CNY：人民币。
        public let currency: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case originalPrice = "OriginalPrice"
            case price = "Price"
            case currency = "Currency"
            case requestId = "RequestId"
        }
    }
}
