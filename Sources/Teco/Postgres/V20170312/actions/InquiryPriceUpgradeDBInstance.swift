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

import TecoCore

extension Postgres {
    /// InquiryPriceUpgradeDBInstance请求参数结构体
    public struct InquiryPriceUpgradeDBInstanceRequest: TCRequestModel {
        /// 实例的磁盘大小，单位GB
        public let storage: Int64

        /// 实例的内存大小，单位GB
        public let memory: Int64

        /// 实例ID，形如postgres-hez4fh0v
        public let dbInstanceId: String

        /// 【废弃参数，不再生效】，实例计费类型。
        public let instanceChargeType: String?

        public init(storage: Int64, memory: Int64, dbInstanceId: String, instanceChargeType: String? = nil) {
            self.storage = storage
            self.memory = memory
            self.dbInstanceId = dbInstanceId
            self.instanceChargeType = instanceChargeType
        }

        enum CodingKeys: String, CodingKey {
            case storage = "Storage"
            case memory = "Memory"
            case dbInstanceId = "DBInstanceId"
            case instanceChargeType = "InstanceChargeType"
        }
    }

    /// InquiryPriceUpgradeDBInstance返回参数结构体
    public struct InquiryPriceUpgradeDBInstanceResponse: TCResponseModel {
        /// 刊例价费用
        public let originalPrice: Int64

        /// 折后实际付款金额
        public let price: Int64

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

    /// 查询升级实例价格
    ///
    /// 本接口（InquiryPriceUpgradeDBInstance）用于查询升级实例的价格。只支持按量计费实例。
    @inlinable
    public func inquiryPriceUpgradeDBInstance(_ input: InquiryPriceUpgradeDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceUpgradeDBInstanceResponse> {
        self.client.execute(action: "InquiryPriceUpgradeDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询升级实例价格
    ///
    /// 本接口（InquiryPriceUpgradeDBInstance）用于查询升级实例的价格。只支持按量计费实例。
    @inlinable
    public func inquiryPriceUpgradeDBInstance(_ input: InquiryPriceUpgradeDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceUpgradeDBInstanceResponse {
        try await self.client.execute(action: "InquiryPriceUpgradeDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询升级实例价格
    ///
    /// 本接口（InquiryPriceUpgradeDBInstance）用于查询升级实例的价格。只支持按量计费实例。
    @inlinable
    public func inquiryPriceUpgradeDBInstance(storage: Int64, memory: Int64, dbInstanceId: String, instanceChargeType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceUpgradeDBInstanceResponse> {
        self.inquiryPriceUpgradeDBInstance(.init(storage: storage, memory: memory, dbInstanceId: dbInstanceId, instanceChargeType: instanceChargeType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询升级实例价格
    ///
    /// 本接口（InquiryPriceUpgradeDBInstance）用于查询升级实例的价格。只支持按量计费实例。
    @inlinable
    public func inquiryPriceUpgradeDBInstance(storage: Int64, memory: Int64, dbInstanceId: String, instanceChargeType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceUpgradeDBInstanceResponse {
        try await self.inquiryPriceUpgradeDBInstance(.init(storage: storage, memory: memory, dbInstanceId: dbInstanceId, instanceChargeType: instanceChargeType), region: region, logger: logger, on: eventLoop)
    }
}
