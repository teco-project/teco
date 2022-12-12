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

extension Mariadb {
    /// UpgradeDBInstance请求参数结构体
    public struct UpgradeDBInstanceRequest: TCRequestModel {
        /// 待升级的实例ID。形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
        public let instanceId: String
        
        /// 内存大小，单位：GB，可以通过 DescribeDBInstanceSpecs
        ///  查询实例规格获得。
        public let memory: Int64
        
        /// 存储空间大小，单位：GB，可以通过 DescribeDBInstanceSpecs
        ///  查询实例规格获得不同内存大小对应的磁盘规格下限和上限。
        public let storage: Int64
        
        /// 是否自动使用代金券进行支付，默认不使用。
        public let autoVoucher: Bool?
        
        /// 代金券ID列表，目前仅支持指定一张代金券。
        public let voucherIds: [String]?
        
        /// 变更部署时指定的新可用区列表，第1个为主可用区，其余为从可用区
        public let zones: [String]?
        
        public init (instanceId: String, memory: Int64, storage: Int64, autoVoucher: Bool? = nil, voucherIds: [String]? = nil, zones: [String]? = nil) {
            self.instanceId = instanceId
            self.memory = memory
            self.storage = storage
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
            self.zones = zones
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case memory = "Memory"
            case storage = "Storage"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
            case zones = "Zones"
        }
    }
    
    /// UpgradeDBInstance返回参数结构体
    public struct UpgradeDBInstanceResponse: TCResponseModel {
        /// 长订单号。可以据此调用 DescribeOrders
        ///  查询订单详细信息，或在支付失败时调用用户账号相关接口进行支付。
        public let dealName: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dealName = "DealName"
            case requestId = "RequestId"
        }
    }
    
    /// 扩容实例
    ///
    /// 本接口(UpgradeDBInstance)用于扩容云数据库实例。本接口完成下单和支付两个动作，如果发生支付失败的错误，调用用户账户相关接口中的支付订单接口（PayDeals）重新支付即可。
    @inlinable
    public func upgradeDBInstance(_ input: UpgradeDBInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpgradeDBInstanceResponse > {
        self.client.execute(action: "UpgradeDBInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 扩容实例
    ///
    /// 本接口(UpgradeDBInstance)用于扩容云数据库实例。本接口完成下单和支付两个动作，如果发生支付失败的错误，调用用户账户相关接口中的支付订单接口（PayDeals）重新支付即可。
    @inlinable
    public func upgradeDBInstance(_ input: UpgradeDBInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeDBInstanceResponse {
        try await self.client.execute(action: "UpgradeDBInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
