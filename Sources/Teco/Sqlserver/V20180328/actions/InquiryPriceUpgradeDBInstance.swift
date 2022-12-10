//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Sqlserver {
    /// 查询升级实例价格
    ///
    /// 本接口（InquiryPriceUpgradeDBInstance）用于查询升级实例的价格。
    @inlinable
    public func inquiryPriceUpgradeDBInstance(_ input: InquiryPriceUpgradeDBInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InquiryPriceUpgradeDBInstanceResponse > {
        self.client.execute(action: "InquiryPriceUpgradeDBInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询升级实例价格
    ///
    /// 本接口（InquiryPriceUpgradeDBInstance）用于查询升级实例的价格。
    @inlinable
    public func inquiryPriceUpgradeDBInstance(_ input: InquiryPriceUpgradeDBInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceUpgradeDBInstanceResponse {
        try await self.client.execute(action: "InquiryPriceUpgradeDBInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// InquiryPriceUpgradeDBInstance请求参数结构体
    public struct InquiryPriceUpgradeDBInstanceRequest: TCRequestModel {
        /// 实例ID，形如mssql-njj2mtpl
        public let instanceId: String
        
        /// 实例升级后的内存大小，单位GB，其值不能比当前实例内存小
        public let memory: Int64
        
        /// 实例升级后的磁盘大小，单位GB，其值不能比当前实例磁盘小
        public let storage: Int64
        
        /// 实例升级后的CPU核心数，其值不能比当前实例CPU小
        public let cpu: Int64?
        
        public init (instanceId: String, memory: Int64, storage: Int64, cpu: Int64?) {
            self.instanceId = instanceId
            self.memory = memory
            self.storage = storage
            self.cpu = cpu
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case memory = "Memory"
            case storage = "Storage"
            case cpu = "Cpu"
        }
    }
    
    /// InquiryPriceUpgradeDBInstance返回参数结构体
    public struct InquiryPriceUpgradeDBInstanceResponse: TCResponseModel {
        /// 未打折的原价，其值除以100表示最终的价格。例如10094表示100.94元
        public let originalPrice: Int64
        
        /// 实际需要支付价格，其值除以100表示最终的价格。例如10094表示100.94元
        public let price: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case originalPrice = "OriginalPrice"
            case price = "Price"
            case requestId = "RequestId"
        }
    }
}