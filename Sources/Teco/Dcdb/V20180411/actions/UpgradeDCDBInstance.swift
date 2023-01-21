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

extension Dcdb {
    /// UpgradeDCDBInstance请求参数结构体
    public struct UpgradeDCDBInstanceRequest: TCRequestModel {
        /// 待升级的实例ID。形如：dcdbt-ow728lmc，可以通过 DescribeDCDBInstances 查询实例详情获得。
        public let instanceId: String

        /// 升级类型，取值范围:
        /// <li> ADD: 新增分片 </li>
        ///  <li> EXPAND: 升级实例中的已有分片 </li>
        ///  <li> SPLIT: 将已有分片中的数据切分到新增分片上</li>
        public let upgradeType: String

        /// 新增分片配置，当UpgradeType为ADD时生效。
        public let addShardConfig: AddShardConfig?

        /// 扩容分片配置，当UpgradeType为EXPAND时生效。
        public let expandShardConfig: ExpandShardConfig?

        /// 切分分片配置，当UpgradeType为SPLIT时生效。
        public let splitShardConfig: SplitShardConfig?

        /// 是否自动使用代金券进行支付，默认不使用。
        public let autoVoucher: Bool?

        /// 代金券ID列表，目前仅支持指定一张代金券。
        public let voucherIds: [String]?

        /// 变更部署时指定的新可用区列表，第1个为主可用区，其余为从可用区
        public let zones: [String]?

        public init(instanceId: String, upgradeType: String, addShardConfig: AddShardConfig? = nil, expandShardConfig: ExpandShardConfig? = nil, splitShardConfig: SplitShardConfig? = nil, autoVoucher: Bool? = nil, voucherIds: [String]? = nil, zones: [String]? = nil) {
            self.instanceId = instanceId
            self.upgradeType = upgradeType
            self.addShardConfig = addShardConfig
            self.expandShardConfig = expandShardConfig
            self.splitShardConfig = splitShardConfig
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
            self.zones = zones
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case upgradeType = "UpgradeType"
            case addShardConfig = "AddShardConfig"
            case expandShardConfig = "ExpandShardConfig"
            case splitShardConfig = "SplitShardConfig"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
            case zones = "Zones"
        }
    }

    /// UpgradeDCDBInstance返回参数结构体
    public struct UpgradeDCDBInstanceResponse: TCResponseModel {
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

    /// 升级分布式数据库
    ///
    /// 本接口（UpgradeDCDBInstance）用于升级分布式数据库实例。本接口完成下单和支付两个动作，如果发生支付失败的错误，调用用户账户相关接口中的支付订单接口（PayDeals）重新支付即可。
    @inlinable
    public func upgradeDCDBInstance(_ input: UpgradeDCDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeDCDBInstanceResponse> {
        self.client.execute(action: "UpgradeDCDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 升级分布式数据库
    ///
    /// 本接口（UpgradeDCDBInstance）用于升级分布式数据库实例。本接口完成下单和支付两个动作，如果发生支付失败的错误，调用用户账户相关接口中的支付订单接口（PayDeals）重新支付即可。
    @inlinable
    public func upgradeDCDBInstance(_ input: UpgradeDCDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeDCDBInstanceResponse {
        try await self.client.execute(action: "UpgradeDCDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 升级分布式数据库
    ///
    /// 本接口（UpgradeDCDBInstance）用于升级分布式数据库实例。本接口完成下单和支付两个动作，如果发生支付失败的错误，调用用户账户相关接口中的支付订单接口（PayDeals）重新支付即可。
    @inlinable
    public func upgradeDCDBInstance(instanceId: String, upgradeType: String, addShardConfig: AddShardConfig? = nil, expandShardConfig: ExpandShardConfig? = nil, splitShardConfig: SplitShardConfig? = nil, autoVoucher: Bool? = nil, voucherIds: [String]? = nil, zones: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeDCDBInstanceResponse> {
        self.upgradeDCDBInstance(UpgradeDCDBInstanceRequest(instanceId: instanceId, upgradeType: upgradeType, addShardConfig: addShardConfig, expandShardConfig: expandShardConfig, splitShardConfig: splitShardConfig, autoVoucher: autoVoucher, voucherIds: voucherIds, zones: zones), region: region, logger: logger, on: eventLoop)
    }

    /// 升级分布式数据库
    ///
    /// 本接口（UpgradeDCDBInstance）用于升级分布式数据库实例。本接口完成下单和支付两个动作，如果发生支付失败的错误，调用用户账户相关接口中的支付订单接口（PayDeals）重新支付即可。
    @inlinable
    public func upgradeDCDBInstance(instanceId: String, upgradeType: String, addShardConfig: AddShardConfig? = nil, expandShardConfig: ExpandShardConfig? = nil, splitShardConfig: SplitShardConfig? = nil, autoVoucher: Bool? = nil, voucherIds: [String]? = nil, zones: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeDCDBInstanceResponse {
        try await self.upgradeDCDBInstance(UpgradeDCDBInstanceRequest(instanceId: instanceId, upgradeType: upgradeType, addShardConfig: addShardConfig, expandShardConfig: expandShardConfig, splitShardConfig: splitShardConfig, autoVoucher: autoVoucher, voucherIds: voucherIds, zones: zones), region: region, logger: logger, on: eventLoop)
    }
}
