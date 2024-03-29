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

import Logging
import NIOCore
import TecoCore

extension Redis {
    /// InquiryPriceCreateInstance请求参数结构体
    public struct InquiryPriceCreateInstanceRequest: TCRequest {
        /// 实例类型：2 – Redis2.8内存版(标准架构)，3 – CKV 3.2内存版(标准架构)，4 – CKV 3.2内存版(集群架构)，6 – Redis4.0内存版(标准架构)，7 – Redis4.0内存版(集群架构)，8 – Redis5.0内存版(标准架构)，9 – Redis5.0内存版(集群架构)。
        public let typeId: UInt64

        /// 内存容量，单位为MB， 数值需为1024的整数倍，具体规格以 [查询产品售卖规格](https://cloud.tencent.com/document/api/239/30600) 返回的规格为准。
        /// TypeId为标准架构时，MemSize是实例总内存容量；TypeId为集群架构时，MemSize是单分片内存容量。
        public let memSize: UInt64

        /// 实例数量，单次购买实例数量以 [查询产品售卖规格](https://cloud.tencent.com/document/api/239/30600) 返回的规格为准。
        public let goodsNum: UInt64

        /// 购买时长，在创建包年包月实例的时候需要填写，按量计费实例填1即可，单位：月，取值范围 [1,2,3,4,5,6,7,8,9,10,11,12,24,36]。
        public let period: UInt64

        /// 付费方式:0-按量计费，1-包年包月。
        public let billingMode: Int64

        /// 实例所属的可用区ID，可参考[地域和可用区](https://cloud.tencent.com/document/product/239/4106)  。
        public let zoneId: UInt64?

        /// 实例分片数量，Redis2.8标准架构、CKV标准架构和Redis2.8单机版、Redis4.0标准架构不需要填写。
        public let redisShardNum: Int64?

        /// 实例副本数量，Redis2.8标准架构、CKV标准架构和Redis2.8单机版不需要填写。
        public let redisReplicasNum: Int64?

        /// 是否支持副本只读，Redis2.8标准架构、CKV标准架构和Redis2.8单机版不需要填写。
        public let replicasReadonly: Bool?

        /// 实例所属的可用区名称，可参考[地域和可用区](https://cloud.tencent.com/document/product/239/4106)  。
        public let zoneName: String?

        /// "local"本地盘版，"cloud"云盘版，"cdc"独享集群版，如果不传默认询价为本地盘版本
        public let productVersion: String?

        public init(typeId: UInt64, memSize: UInt64, goodsNum: UInt64, period: UInt64, billingMode: Int64, zoneId: UInt64? = nil, redisShardNum: Int64? = nil, redisReplicasNum: Int64? = nil, replicasReadonly: Bool? = nil, zoneName: String? = nil, productVersion: String? = nil) {
            self.typeId = typeId
            self.memSize = memSize
            self.goodsNum = goodsNum
            self.period = period
            self.billingMode = billingMode
            self.zoneId = zoneId
            self.redisShardNum = redisShardNum
            self.redisReplicasNum = redisReplicasNum
            self.replicasReadonly = replicasReadonly
            self.zoneName = zoneName
            self.productVersion = productVersion
        }

        enum CodingKeys: String, CodingKey {
            case typeId = "TypeId"
            case memSize = "MemSize"
            case goodsNum = "GoodsNum"
            case period = "Period"
            case billingMode = "BillingMode"
            case zoneId = "ZoneId"
            case redisShardNum = "RedisShardNum"
            case redisReplicasNum = "RedisReplicasNum"
            case replicasReadonly = "ReplicasReadonly"
            case zoneName = "ZoneName"
            case productVersion = "ProductVersion"
        }
    }

    /// InquiryPriceCreateInstance返回参数结构体
    public struct InquiryPriceCreateInstanceResponse: TCResponse {
        /// 价格，单位：分
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let price: Float?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case requestId = "RequestId"
        }
    }

    /// 查询新购实例价格
    @inlinable
    public func inquiryPriceCreateInstance(_ input: InquiryPriceCreateInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceCreateInstanceResponse> {
        self.client.execute(action: "InquiryPriceCreateInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询新购实例价格
    @inlinable
    public func inquiryPriceCreateInstance(_ input: InquiryPriceCreateInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceCreateInstanceResponse {
        try await self.client.execute(action: "InquiryPriceCreateInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询新购实例价格
    @inlinable
    public func inquiryPriceCreateInstance(typeId: UInt64, memSize: UInt64, goodsNum: UInt64, period: UInt64, billingMode: Int64, zoneId: UInt64? = nil, redisShardNum: Int64? = nil, redisReplicasNum: Int64? = nil, replicasReadonly: Bool? = nil, zoneName: String? = nil, productVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceCreateInstanceResponse> {
        self.inquiryPriceCreateInstance(.init(typeId: typeId, memSize: memSize, goodsNum: goodsNum, period: period, billingMode: billingMode, zoneId: zoneId, redisShardNum: redisShardNum, redisReplicasNum: redisReplicasNum, replicasReadonly: replicasReadonly, zoneName: zoneName, productVersion: productVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询新购实例价格
    @inlinable
    public func inquiryPriceCreateInstance(typeId: UInt64, memSize: UInt64, goodsNum: UInt64, period: UInt64, billingMode: Int64, zoneId: UInt64? = nil, redisShardNum: Int64? = nil, redisReplicasNum: Int64? = nil, replicasReadonly: Bool? = nil, zoneName: String? = nil, productVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceCreateInstanceResponse {
        try await self.inquiryPriceCreateInstance(.init(typeId: typeId, memSize: memSize, goodsNum: goodsNum, period: period, billingMode: billingMode, zoneId: zoneId, redisShardNum: redisShardNum, redisReplicasNum: redisReplicasNum, replicasReadonly: replicasReadonly, zoneName: zoneName, productVersion: productVersion), region: region, logger: logger, on: eventLoop)
    }
}
