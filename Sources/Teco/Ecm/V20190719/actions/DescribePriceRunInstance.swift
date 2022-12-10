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

extension Ecm {
    /// 查询实例价格
    ///
    /// 查询实例价格
    @inlinable
    public func describePriceRunInstance(_ input: DescribePriceRunInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePriceRunInstanceResponse > {
        self.client.execute(action: "DescribePriceRunInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询实例价格
    ///
    /// 查询实例价格
    @inlinable
    public func describePriceRunInstance(_ input: DescribePriceRunInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePriceRunInstanceResponse {
        try await self.client.execute(action: "DescribePriceRunInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribePriceRunInstance请求参数结构体
    public struct DescribePriceRunInstanceRequest: TCRequestModel {
        /// 实例的机型信息
        public let instanceType: String
        
        /// 系统盘信息
        public let systemDisk: SystemDisk
        
        /// 实例个数
        public let instanceCount: UInt64
        
        /// 数据盘信息
        public let dataDisk: [DataDisk]?
        
        /// 实例计费类型。其中：
        /// 0，按资源维度后付费，计算当日用量峰值，例如CPU，内存，硬盘等，仅适用于非GNR系列机型；
        /// 1，按小时后付费，单价：xx元/实例/小时，仅适用于GNR机型，如需开通该计费方式请提工单申请；
        /// 2，按月后付费，单价：xx元/实例/月，仅适用于GNR机型；
        /// 该字段不填时，非GNR机型会默认选择0；GNR机型默认选择2。
        public let instanceChargeType: Int64?
        
        public init (instanceType: String, systemDisk: SystemDisk, instanceCount: UInt64, dataDisk: [DataDisk]?, instanceChargeType: Int64?) {
            self.instanceType = instanceType
            self.systemDisk = systemDisk
            self.instanceCount = instanceCount
            self.dataDisk = dataDisk
            self.instanceChargeType = instanceChargeType
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceType = "InstanceType"
            case systemDisk = "SystemDisk"
            case instanceCount = "InstanceCount"
            case dataDisk = "DataDisk"
            case instanceChargeType = "InstanceChargeType"
        }
    }
    
    /// DescribePriceRunInstance返回参数结构体
    public struct DescribePriceRunInstanceResponse: TCResponseModel {
        /// 实例价格信息
        public let instancePrice: InstancesPrice
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case instancePrice = "InstancePrice"
            case requestId = "RequestId"
        }
    }
}