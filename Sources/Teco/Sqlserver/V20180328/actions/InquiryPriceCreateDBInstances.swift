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

extension Sqlserver {
    /// InquiryPriceCreateDBInstances请求参数结构体
    public struct InquiryPriceCreateDBInstancesRequest: TCRequestModel {
        /// 可用区ID。该参数可以通过调用 DescribeZones 接口的返回值中的Zone字段来获取。
        public let zone: String

        /// 内存大小，单位：GB
        public let memory: Int64

        /// 实例容量大小，单位：GB。
        public let storage: Int64

        /// 计费类型，取值支持 PREPAID，POSTPAID。
        public let instanceChargeType: String?

        /// 购买时长，单位：月。取值为1到48，默认为1
        public let period: Int64?

        /// 一次性购买的实例数量。取值1-100，默认取值为1
        public let goodsNum: Int64?

        /// sqlserver版本，目前只支持：2008R2（SQL Server 2008 Enterprise），2012SP3（SQL Server 2012 Enterprise），2016SP1（SQL Server 2016 Enterprise），201602（SQL Server 2016 Standard）2017（SQL Server 2017 Enterprise）版本。默认为2008R2版本
        public let dbVersion: String?

        /// 预购买实例的CPU核心数
        public let cpu: Int64?

        /// 购买实例的类型 HA-高可用型(包括双机高可用，alwaysOn集群)，RO-只读副本，SI-基础版，默认取值HA
        public let instanceType: String?

        /// 购买实例的宿主机类型，PM-物理机, CLOUD_PREMIUM-虚拟机高性能云盘，CLOUD_SSD-虚拟机SSD云盘，默认取值PM
        public let machineType: String?

        public init(zone: String, memory: Int64, storage: Int64, instanceChargeType: String? = nil, period: Int64? = nil, goodsNum: Int64? = nil, dbVersion: String? = nil, cpu: Int64? = nil, instanceType: String? = nil, machineType: String? = nil) {
            self.zone = zone
            self.memory = memory
            self.storage = storage
            self.instanceChargeType = instanceChargeType
            self.period = period
            self.goodsNum = goodsNum
            self.dbVersion = dbVersion
            self.cpu = cpu
            self.instanceType = instanceType
            self.machineType = machineType
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case memory = "Memory"
            case storage = "Storage"
            case instanceChargeType = "InstanceChargeType"
            case period = "Period"
            case goodsNum = "GoodsNum"
            case dbVersion = "DBVersion"
            case cpu = "Cpu"
            case instanceType = "InstanceType"
            case machineType = "MachineType"
        }
    }

    /// InquiryPriceCreateDBInstances返回参数结构体
    public struct InquiryPriceCreateDBInstancesResponse: TCResponseModel {
        /// 未打折前价格，其值除以100表示多少钱。例如10010表示100.10元
        public let originalPrice: Int64

        /// 实际需要支付的价格，其值除以100表示多少钱。例如10010表示100.10元
        public let price: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case originalPrice = "OriginalPrice"
            case price = "Price"
            case requestId = "RequestId"
        }
    }

    /// 查询申请实例价格
    ///
    /// 本接口（InquiryPriceCreateDBInstances）用于查询申请实例价格。
    @inlinable
    public func inquiryPriceCreateDBInstances(_ input: InquiryPriceCreateDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceCreateDBInstancesResponse> {
        self.client.execute(action: "InquiryPriceCreateDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询申请实例价格
    ///
    /// 本接口（InquiryPriceCreateDBInstances）用于查询申请实例价格。
    @inlinable
    public func inquiryPriceCreateDBInstances(_ input: InquiryPriceCreateDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceCreateDBInstancesResponse {
        try await self.client.execute(action: "InquiryPriceCreateDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询申请实例价格
    ///
    /// 本接口（InquiryPriceCreateDBInstances）用于查询申请实例价格。
    @inlinable
    public func inquiryPriceCreateDBInstances(zone: String, memory: Int64, storage: Int64, instanceChargeType: String? = nil, period: Int64? = nil, goodsNum: Int64? = nil, dbVersion: String? = nil, cpu: Int64? = nil, instanceType: String? = nil, machineType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceCreateDBInstancesResponse> {
        self.inquiryPriceCreateDBInstances(InquiryPriceCreateDBInstancesRequest(zone: zone, memory: memory, storage: storage, instanceChargeType: instanceChargeType, period: period, goodsNum: goodsNum, dbVersion: dbVersion, cpu: cpu, instanceType: instanceType, machineType: machineType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询申请实例价格
    ///
    /// 本接口（InquiryPriceCreateDBInstances）用于查询申请实例价格。
    @inlinable
    public func inquiryPriceCreateDBInstances(zone: String, memory: Int64, storage: Int64, instanceChargeType: String? = nil, period: Int64? = nil, goodsNum: Int64? = nil, dbVersion: String? = nil, cpu: Int64? = nil, instanceType: String? = nil, machineType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceCreateDBInstancesResponse {
        try await self.inquiryPriceCreateDBInstances(InquiryPriceCreateDBInstancesRequest(zone: zone, memory: memory, storage: storage, instanceChargeType: instanceChargeType, period: period, goodsNum: goodsNum, dbVersion: dbVersion, cpu: cpu, instanceType: instanceType, machineType: machineType), region: region, logger: logger, on: eventLoop)
    }
}
