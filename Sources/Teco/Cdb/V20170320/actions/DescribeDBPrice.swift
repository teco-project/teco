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

extension Cdb {
    /// DescribeDBPrice请求参数结构体
    public struct DescribeDBPriceRequest: TCRequestModel {
        /// 实例时长，单位：月，最小值 1，最大值为 36；查询按量计费价格时，该字段无效。
        public let period: Int64

        /// 可用区信息，格式如 "ap-guangzhou-2"。具体能设置的值请通过 <a href="https://cloud.tencent.com/document/api/236/17229">DescribeDBZoneConfig</a> 接口查询。InstanceId为空时该参数为必填项。
        public let zone: String?

        /// 实例数量，默认值为 1，最小值 1，最大值为 100。InstanceId为空时该参数为必填项。
        public let goodsNum: Int64?

        /// 实例内存大小，单位：MB。InstanceId为空时该参数为必填项。
        public let memory: Int64?

        /// 实例硬盘大小，单位：GB。InstanceId为空时该参数为必填项。
        public let volume: Int64?

        /// 实例类型，默认为 master，支持值包括：master - 表示主实例，ro - 表示只读实例，dr - 表示灾备实例。InstanceId为空时该参数为必填项。
        public let instanceRole: String?

        /// 付费类型，支持值包括：PRE_PAID - 包年包月，HOUR_PAID - 按量计费。InstanceId为空时该参数为必填项。
        public let payType: String?

        /// 数据复制方式，默认为 0，支持值包括：0 - 表示异步复制，1 - 表示半同步复制，2 - 表示强同步复制。
        public let protectMode: Int64?

        /// 实例隔离类型。支持值包括： "UNIVERSAL" - 通用型实例， "EXCLUSIVE" - 独享型实例， "BASIC" - 基础版实例。 不指定则默认为通用型实例。
        public let deviceType: String?

        /// 实例节点数。对于 RO 和 基础版实例， 该值默认为1。 如果需要询价三节点实例， 请将该值设置为3。其余主实例该值默认为2。
        public let instanceNodes: Int64?

        /// 询价实例的CPU核心数目，单位：核，为保证传入 CPU 值有效，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/product/236/17229) 接口获取可售卖的核心数目，当未指定该值时，将按照 Memory 大小补全一个默认值。
        public let cpu: Int64?

        /// 询价续费实例ID。如需查询实例续费价格，填写InstanceId和Period即可。
        public let instanceId: String?

        /// 按量计费阶梯。仅PayType=HOUR_PAID有效，支持值包括：1，2，3。阶梯时长见https://cloud.tencent.com/document/product/236/18335。
        public let ladder: UInt64?

        public init(period: Int64, zone: String? = nil, goodsNum: Int64? = nil, memory: Int64? = nil, volume: Int64? = nil, instanceRole: String? = nil, payType: String? = nil, protectMode: Int64? = nil, deviceType: String? = nil, instanceNodes: Int64? = nil, cpu: Int64? = nil, instanceId: String? = nil, ladder: UInt64? = nil) {
            self.period = period
            self.zone = zone
            self.goodsNum = goodsNum
            self.memory = memory
            self.volume = volume
            self.instanceRole = instanceRole
            self.payType = payType
            self.protectMode = protectMode
            self.deviceType = deviceType
            self.instanceNodes = instanceNodes
            self.cpu = cpu
            self.instanceId = instanceId
            self.ladder = ladder
        }

        enum CodingKeys: String, CodingKey {
            case period = "Period"
            case zone = "Zone"
            case goodsNum = "GoodsNum"
            case memory = "Memory"
            case volume = "Volume"
            case instanceRole = "InstanceRole"
            case payType = "PayType"
            case protectMode = "ProtectMode"
            case deviceType = "DeviceType"
            case instanceNodes = "InstanceNodes"
            case cpu = "Cpu"
            case instanceId = "InstanceId"
            case ladder = "Ladder"
        }
    }

    /// DescribeDBPrice返回参数结构体
    public struct DescribeDBPriceResponse: TCResponseModel {
        /// 实例价格，单位：分。
        public let price: Int64

        /// 实例原价，单位：分。
        public let originalPrice: Int64

        /// 货币单位。CNY-人民币，USD-美元。
        public let currency: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case originalPrice = "OriginalPrice"
            case currency = "Currency"
            case requestId = "RequestId"
        }
    }

    /// 查询数据库价格
    ///
    /// 本接口(DescribeDBPrice)用于查询购买或续费云数据库实例的价格，支持查询按量计费或者包年包月的价格。可传入实例类型、购买时长、购买数量、内存大小、硬盘大小和可用区信息等来查询实例价格。可传入实例名称来查询实例续费价格。
    ///
    /// 注意：对某个地域进行询价，请使用对应地域的接入点，接入点信息请参照 <a href="https://cloud.tencent.com/document/api/236/15832">服务地址</a> 文档。例如：对广州地域进行询价，请把请求发到：cdb.ap-guangzhou.tencentcloudapi.com。同理对上海地域询价，把请求发到：cdb.ap-shanghai.tencentcloudapi.com。
    @inlinable
    public func describeDBPrice(_ input: DescribeDBPriceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBPriceResponse> {
        self.client.execute(action: "DescribeDBPrice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库价格
    ///
    /// 本接口(DescribeDBPrice)用于查询购买或续费云数据库实例的价格，支持查询按量计费或者包年包月的价格。可传入实例类型、购买时长、购买数量、内存大小、硬盘大小和可用区信息等来查询实例价格。可传入实例名称来查询实例续费价格。
    ///
    /// 注意：对某个地域进行询价，请使用对应地域的接入点，接入点信息请参照 <a href="https://cloud.tencent.com/document/api/236/15832">服务地址</a> 文档。例如：对广州地域进行询价，请把请求发到：cdb.ap-guangzhou.tencentcloudapi.com。同理对上海地域询价，把请求发到：cdb.ap-shanghai.tencentcloudapi.com。
    @inlinable
    public func describeDBPrice(_ input: DescribeDBPriceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBPriceResponse {
        try await self.client.execute(action: "DescribeDBPrice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库价格
    ///
    /// 本接口(DescribeDBPrice)用于查询购买或续费云数据库实例的价格，支持查询按量计费或者包年包月的价格。可传入实例类型、购买时长、购买数量、内存大小、硬盘大小和可用区信息等来查询实例价格。可传入实例名称来查询实例续费价格。
    ///
    /// 注意：对某个地域进行询价，请使用对应地域的接入点，接入点信息请参照 <a href="https://cloud.tencent.com/document/api/236/15832">服务地址</a> 文档。例如：对广州地域进行询价，请把请求发到：cdb.ap-guangzhou.tencentcloudapi.com。同理对上海地域询价，把请求发到：cdb.ap-shanghai.tencentcloudapi.com。
    @inlinable
    public func describeDBPrice(period: Int64, zone: String? = nil, goodsNum: Int64? = nil, memory: Int64? = nil, volume: Int64? = nil, instanceRole: String? = nil, payType: String? = nil, protectMode: Int64? = nil, deviceType: String? = nil, instanceNodes: Int64? = nil, cpu: Int64? = nil, instanceId: String? = nil, ladder: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBPriceResponse> {
        self.describeDBPrice(DescribeDBPriceRequest(period: period, zone: zone, goodsNum: goodsNum, memory: memory, volume: volume, instanceRole: instanceRole, payType: payType, protectMode: protectMode, deviceType: deviceType, instanceNodes: instanceNodes, cpu: cpu, instanceId: instanceId, ladder: ladder), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据库价格
    ///
    /// 本接口(DescribeDBPrice)用于查询购买或续费云数据库实例的价格，支持查询按量计费或者包年包月的价格。可传入实例类型、购买时长、购买数量、内存大小、硬盘大小和可用区信息等来查询实例价格。可传入实例名称来查询实例续费价格。
    ///
    /// 注意：对某个地域进行询价，请使用对应地域的接入点，接入点信息请参照 <a href="https://cloud.tencent.com/document/api/236/15832">服务地址</a> 文档。例如：对广州地域进行询价，请把请求发到：cdb.ap-guangzhou.tencentcloudapi.com。同理对上海地域询价，把请求发到：cdb.ap-shanghai.tencentcloudapi.com。
    @inlinable
    public func describeDBPrice(period: Int64, zone: String? = nil, goodsNum: Int64? = nil, memory: Int64? = nil, volume: Int64? = nil, instanceRole: String? = nil, payType: String? = nil, protectMode: Int64? = nil, deviceType: String? = nil, instanceNodes: Int64? = nil, cpu: Int64? = nil, instanceId: String? = nil, ladder: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBPriceResponse {
        try await self.describeDBPrice(DescribeDBPriceRequest(period: period, zone: zone, goodsNum: goodsNum, memory: memory, volume: volume, instanceRole: instanceRole, payType: payType, protectMode: protectMode, deviceType: deviceType, instanceNodes: instanceNodes, cpu: cpu, instanceId: instanceId, ladder: ladder), region: region, logger: logger, on: eventLoop)
    }
}
