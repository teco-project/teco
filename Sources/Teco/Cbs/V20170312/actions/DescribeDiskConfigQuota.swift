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

extension Cbs {
    /// DescribeDiskConfigQuota请求参数结构体
    public struct DescribeDiskConfigQuotaRequest: TCRequestModel {
        /// 查询类别，取值范围。<br><li>INQUIRY_CBS_CONFIG：查询云盘配置列表<br><li>INQUIRY_CVM_CONFIG：查询云盘与实例搭配的配置列表。
        public let inquiryType: String

        /// 付费模式。取值范围：<br><li>PREPAID：预付费<br><li>POSTPAID_BY_HOUR：后付费。
        public let diskChargeType: String?

        /// 按照实例机型系列过滤。实例机型系列形如：S1、I1、M1等。详见[实例类型](https://cloud.tencent.com/document/product/213/11518)
        public let instanceFamilies: [String]?

        /// 硬盘介质类型。取值范围：<br><li>CLOUD_BASIC：表示普通云硬盘<br><li>CLOUD_PREMIUM：表示高性能云硬盘<br><li>CLOUD_SSD：表示SSD云硬盘<br><li>CLOUD_HSSD：表示增强型SSD云硬盘。
        public let diskTypes: [String]?

        /// 查询一个或多个[可用区](/document/product/213/15753#ZoneInfo)下的配置。
        public let zones: [String]?

        /// 实例内存大小。
        public let memory: UInt64?

        /// 系统盘或数据盘。取值范围：<br><li>SYSTEM_DISK：表示系统盘<br><li>DATA_DISK：表示数据盘。
        public let diskUsage: String?

        /// 实例CPU核数。
        public let cpu: UInt64?

        public init(inquiryType: String, diskChargeType: String? = nil, instanceFamilies: [String]? = nil, diskTypes: [String]? = nil, zones: [String]? = nil, memory: UInt64? = nil, diskUsage: String? = nil, cpu: UInt64? = nil) {
            self.inquiryType = inquiryType
            self.diskChargeType = diskChargeType
            self.instanceFamilies = instanceFamilies
            self.diskTypes = diskTypes
            self.zones = zones
            self.memory = memory
            self.diskUsage = diskUsage
            self.cpu = cpu
        }

        enum CodingKeys: String, CodingKey {
            case inquiryType = "InquiryType"
            case diskChargeType = "DiskChargeType"
            case instanceFamilies = "InstanceFamilies"
            case diskTypes = "DiskTypes"
            case zones = "Zones"
            case memory = "Memory"
            case diskUsage = "DiskUsage"
            case cpu = "CPU"
        }
    }

    /// DescribeDiskConfigQuota返回参数结构体
    public struct DescribeDiskConfigQuotaResponse: TCResponseModel {
        /// 云盘配置列表。
        public let diskConfigSet: [DiskConfig]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case diskConfigSet = "DiskConfigSet"
            case requestId = "RequestId"
        }
    }

    /// 查询云硬盘配额
    ///
    /// 本接口（DescribeDiskConfigQuota）用于查询云硬盘配额。
    @inlinable
    public func describeDiskConfigQuota(_ input: DescribeDiskConfigQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDiskConfigQuotaResponse> {
        self.client.execute(action: "DescribeDiskConfigQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云硬盘配额
    ///
    /// 本接口（DescribeDiskConfigQuota）用于查询云硬盘配额。
    @inlinable
    public func describeDiskConfigQuota(_ input: DescribeDiskConfigQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDiskConfigQuotaResponse {
        try await self.client.execute(action: "DescribeDiskConfigQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云硬盘配额
    ///
    /// 本接口（DescribeDiskConfigQuota）用于查询云硬盘配额。
    @inlinable
    public func describeDiskConfigQuota(inquiryType: String, diskChargeType: String? = nil, instanceFamilies: [String]? = nil, diskTypes: [String]? = nil, zones: [String]? = nil, memory: UInt64? = nil, diskUsage: String? = nil, cpu: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDiskConfigQuotaResponse> {
        self.describeDiskConfigQuota(.init(inquiryType: inquiryType, diskChargeType: diskChargeType, instanceFamilies: instanceFamilies, diskTypes: diskTypes, zones: zones, memory: memory, diskUsage: diskUsage, cpu: cpu), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云硬盘配额
    ///
    /// 本接口（DescribeDiskConfigQuota）用于查询云硬盘配额。
    @inlinable
    public func describeDiskConfigQuota(inquiryType: String, diskChargeType: String? = nil, instanceFamilies: [String]? = nil, diskTypes: [String]? = nil, zones: [String]? = nil, memory: UInt64? = nil, diskUsage: String? = nil, cpu: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDiskConfigQuotaResponse {
        try await self.describeDiskConfigQuota(.init(inquiryType: inquiryType, diskChargeType: diskChargeType, instanceFamilies: instanceFamilies, diskTypes: diskTypes, zones: zones, memory: memory, diskUsage: diskUsage, cpu: cpu), region: region, logger: logger, on: eventLoop)
    }
}
