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

extension Sqlserver {
    /// InquiryPriceCreateDBInstances请求参数结构体
    public struct InquiryPriceCreateDBInstancesRequest: TCRequest {
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

        /// sqlserver版本，目前所有支持的版本有：2008R2 (SQL Server 2008 R2 Enterprise)，2012SP3 (SQL Server 2012 Enterprise)，201202 (SQL Server 2012 Standard)，2014SP2 (SQL Server 2014 Enterprise)，201402 (SQL Server 2014 Standard)，2016SP1 (SQL Server 2016 Enterprise)，201602 (SQL Server 2016 Standard)，2017 (SQL Server 2017 Enterprise)，201702 (SQL Server 2017 Standard)，2019 (SQL Server 2019 Enterprise)，201902 (SQL Server 2019 Standard)。每个地域支持售卖的版本不同，可通过DescribeProductConfig接口来拉取每个地域可售卖的版本信息。不填，默认为版本2008R2。
        public let dbVersion: String?

        /// 预购买实例的CPU核心数
        public let cpu: Int64?

        /// 购买实例的类型 HA-高可用型(包括双机高可用，alwaysOn集群)，RO-只读副本型，SI-单节点型,cvmHA-虚拟机双机高可用,cvmRO-虚拟机只读
        public let instanceType: String?

        /// 购买实例的宿主机类型，PM-物理机, CLOUD_PREMIUM-虚拟机高性能云盘，CLOUD_SSD-虚拟机SSD云盘,
        /// CLOUD_HSSD-虚拟机加强型SSD云盘，CLOUD_TSSD-虚拟机极速型SSD云盘，CLOUD_BSSD-虚拟机通用型SSD云盘
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
    public struct InquiryPriceCreateDBInstancesResponse: TCResponse {
        /// 未打折前价格，其值除以100表示最终的价格。
        /// InstanceChargeType=PREPAID时，单位是"每月"。
        /// InstanceChargeType=POSTPAID时，单位是"每小时"。
        /// 例如10010，在InstanceChargeType=PREPAID情况下，表示每月100.10元。
        public let originalPrice: Int64

        /// 实际需要支付的价格，其值除以100表示最终的价格。
        /// InstanceChargeType=PREPAID时，单位是"每月"。
        /// InstanceChargeType=POSTPAID时，单位是"每小时"。
        /// 例如10010，在InstanceChargeType=PREPAID情况下，表示每月100.10元。
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
        self.inquiryPriceCreateDBInstances(.init(zone: zone, memory: memory, storage: storage, instanceChargeType: instanceChargeType, period: period, goodsNum: goodsNum, dbVersion: dbVersion, cpu: cpu, instanceType: instanceType, machineType: machineType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询申请实例价格
    ///
    /// 本接口（InquiryPriceCreateDBInstances）用于查询申请实例价格。
    @inlinable
    public func inquiryPriceCreateDBInstances(zone: String, memory: Int64, storage: Int64, instanceChargeType: String? = nil, period: Int64? = nil, goodsNum: Int64? = nil, dbVersion: String? = nil, cpu: Int64? = nil, instanceType: String? = nil, machineType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceCreateDBInstancesResponse {
        try await self.inquiryPriceCreateDBInstances(.init(zone: zone, memory: memory, storage: storage, instanceChargeType: instanceChargeType, period: period, goodsNum: goodsNum, dbVersion: dbVersion, cpu: cpu, instanceType: instanceType, machineType: machineType), region: region, logger: logger, on: eventLoop)
    }
}
