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

extension Cynosdb {
    /// 升级实例
    ///
    /// 升级实例
    @inlinable
    public func upgradeInstance(_ input: UpgradeInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpgradeInstanceResponse > {
        self.client.execute(action: "UpgradeInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 升级实例
    ///
    /// 升级实例
    @inlinable
    public func upgradeInstance(_ input: UpgradeInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeInstanceResponse {
        try await self.client.execute(action: "UpgradeInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpgradeInstance请求参数结构体
    public struct UpgradeInstanceRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// 数据库CPU
        public let cpu: Int64
        
        /// 数据库内存，单位GB
        public let memory: Int64
        
        /// 升级类型：upgradeImmediate，upgradeInMaintain
        public let upgradeType: String
        
        /// 该参数已废弃
        public let storageLimit: UInt64?
        
        /// 是否自动选择代金券 1是 0否 默认为0
        public let autoVoucher: Int64?
        
        /// 该参数已废弃
        public let dbType: String?
        
        /// 交易模式 0-下单并支付 1-下单
        public let dealMode: Int64?
        
        /// NormalUpgrade：普通变配，FastUpgrade：极速变配，若变配过程判断会造成闪断，变配流程会终止。
        public let upgradeMode: String?
        
        public init (instanceId: String, cpu: Int64, memory: Int64, upgradeType: String, storageLimit: UInt64?, autoVoucher: Int64?, dbType: String?, dealMode: Int64?, upgradeMode: String?) {
            self.instanceId = instanceId
            self.cpu = cpu
            self.memory = memory
            self.upgradeType = upgradeType
            self.storageLimit = storageLimit
            self.autoVoucher = autoVoucher
            self.dbType = dbType
            self.dealMode = dealMode
            self.upgradeMode = upgradeMode
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case cpu = "Cpu"
            case memory = "Memory"
            case upgradeType = "UpgradeType"
            case storageLimit = "StorageLimit"
            case autoVoucher = "AutoVoucher"
            case dbType = "DbType"
            case dealMode = "DealMode"
            case upgradeMode = "UpgradeMode"
        }
    }
    
    /// UpgradeInstance返回参数结构体
    public struct UpgradeInstanceResponse: TCResponseModel {
        /// 冻结流水ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tranId: String?
        
        /// 大订单号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bigDealIds: [String]?
        
        /// 订单号
        public let dealNames: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case tranId = "TranId"
            case bigDealIds = "BigDealIds"
            case dealNames = "DealNames"
            case requestId = "RequestId"
        }
    }
}