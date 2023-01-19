//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// RenewDCDBInstance请求参数结构体
    public struct RenewDCDBInstanceRequest: TCRequestModel {
        /// 待续费的实例ID。形如：dcdbt-ow728lmc，可以通过 DescribeDCDBInstances 查询实例详情获得。
        public let instanceId: String

        /// 续费时长，单位：月。
        public let period: Int64

        /// 是否自动使用代金券进行支付，默认不使用。
        public let autoVoucher: Bool?

        /// 代金券ID列表，目前仅支持指定一张代金券。
        public let voucherIds: [String]?

        public init(instanceId: String, period: Int64, autoVoucher: Bool? = nil, voucherIds: [String]? = nil) {
            self.instanceId = instanceId
            self.period = period
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case period = "Period"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
        }
    }

    /// RenewDCDBInstance返回参数结构体
    public struct RenewDCDBInstanceResponse: TCResponseModel {
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

    /// 续费分布式数据库实例
    ///
    /// 本接口（RenewDCDBInstance）用于续费分布式数据库实例。
    @inlinable
    public func renewDCDBInstance(_ input: RenewDCDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RenewDCDBInstanceResponse> {
        self.client.execute(action: "RenewDCDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 续费分布式数据库实例
    ///
    /// 本接口（RenewDCDBInstance）用于续费分布式数据库实例。
    @inlinable
    public func renewDCDBInstance(_ input: RenewDCDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewDCDBInstanceResponse {
        try await self.client.execute(action: "RenewDCDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 续费分布式数据库实例
    ///
    /// 本接口（RenewDCDBInstance）用于续费分布式数据库实例。
    @inlinable
    public func renewDCDBInstance(instanceId: String, period: Int64, autoVoucher: Bool? = nil, voucherIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RenewDCDBInstanceResponse> {
        self.renewDCDBInstance(RenewDCDBInstanceRequest(instanceId: instanceId, period: period, autoVoucher: autoVoucher, voucherIds: voucherIds), region: region, logger: logger, on: eventLoop)
    }

    /// 续费分布式数据库实例
    ///
    /// 本接口（RenewDCDBInstance）用于续费分布式数据库实例。
    @inlinable
    public func renewDCDBInstance(instanceId: String, period: Int64, autoVoucher: Bool? = nil, voucherIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewDCDBInstanceResponse {
        try await self.renewDCDBInstance(RenewDCDBInstanceRequest(instanceId: instanceId, period: period, autoVoucher: autoVoucher, voucherIds: voucherIds), region: region, logger: logger, on: eventLoop)
    }
}
