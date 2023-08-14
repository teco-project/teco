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

extension Cbs {
    /// InquiryPriceCreateDisks请求参数结构体
    public struct InquiryPriceCreateDisksRequest: TCRequestModel {
        /// 云硬盘计费类型。
        ///
        /// - PREPAID：预付费，即包年包月
        /// - POSTPAID_BY_HOUR：按小时后付费
        public let diskChargeType: String

        /// 硬盘介质类型。取值范围：
        ///
        /// - CLOUD_BASIC：表示普通云硬盘
        /// - CLOUD_PREMIUM：表示高性能云硬盘
        /// - CLOUD_SSD：表示SSD云硬盘
        /// - CLOUD_HSSD：表示增强型SSD云硬盘
        /// - CLOUD_TSSD：表示极速型SSD云硬盘。
        public let diskType: String

        /// 云硬盘大小，单位为GB。云盘大小取值范围参见云硬盘[产品分类](/document/product/362/2353)的说明。
        public let diskSize: UInt64

        /// 云盘所属项目ID。
        public let projectId: UInt64?

        /// 购买云盘的数量。不填则默认为1。
        public let diskCount: UInt64?

        /// 额外购买的云硬盘性能值，单位MB/s。
        ///
        /// 目前仅支持增强型SSD云硬盘（CLOUD_HSSD）和极速型SSD云硬盘（CLOUD_TSSD）
        public let throughputPerformance: UInt64?

        /// 预付费模式，即包年包月相关参数设置。通过该参数指定包年包月云盘的购买时长、是否设置自动续费等属性。
        ///
        /// 创建预付费云盘该参数必传，创建按小时后付费云盘无需传该参数。
        public let diskChargePrepaid: DiskChargePrepaid?

        /// 指定云硬盘备份点配额。
        public let diskBackupQuota: UInt64?

        public init(diskChargeType: String, diskType: String, diskSize: UInt64, projectId: UInt64? = nil, diskCount: UInt64? = nil, throughputPerformance: UInt64? = nil, diskChargePrepaid: DiskChargePrepaid? = nil, diskBackupQuota: UInt64? = nil) {
            self.diskChargeType = diskChargeType
            self.diskType = diskType
            self.diskSize = diskSize
            self.projectId = projectId
            self.diskCount = diskCount
            self.throughputPerformance = throughputPerformance
            self.diskChargePrepaid = diskChargePrepaid
            self.diskBackupQuota = diskBackupQuota
        }

        enum CodingKeys: String, CodingKey {
            case diskChargeType = "DiskChargeType"
            case diskType = "DiskType"
            case diskSize = "DiskSize"
            case projectId = "ProjectId"
            case diskCount = "DiskCount"
            case throughputPerformance = "ThroughputPerformance"
            case diskChargePrepaid = "DiskChargePrepaid"
            case diskBackupQuota = "DiskBackupQuota"
        }
    }

    /// InquiryPriceCreateDisks返回参数结构体
    public struct InquiryPriceCreateDisksResponse: TCResponseModel {
        /// 描述了新购云盘的价格。
        public let diskPrice: Price

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case diskPrice = "DiskPrice"
            case requestId = "RequestId"
        }
    }

    /// 创建云硬盘询价
    ///
    /// 本接口（InquiryPriceCreateDisks）用于创建云硬盘询价。
    ///
    /// * 支持查询创建多块云硬盘的价格，此时返回结果为总价格。
    @inlinable
    public func inquiryPriceCreateDisks(_ input: InquiryPriceCreateDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceCreateDisksResponse> {
        self.client.execute(action: "InquiryPriceCreateDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建云硬盘询价
    ///
    /// 本接口（InquiryPriceCreateDisks）用于创建云硬盘询价。
    ///
    /// * 支持查询创建多块云硬盘的价格，此时返回结果为总价格。
    @inlinable
    public func inquiryPriceCreateDisks(_ input: InquiryPriceCreateDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceCreateDisksResponse {
        try await self.client.execute(action: "InquiryPriceCreateDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建云硬盘询价
    ///
    /// 本接口（InquiryPriceCreateDisks）用于创建云硬盘询价。
    ///
    /// * 支持查询创建多块云硬盘的价格，此时返回结果为总价格。
    @inlinable
    public func inquiryPriceCreateDisks(diskChargeType: String, diskType: String, diskSize: UInt64, projectId: UInt64? = nil, diskCount: UInt64? = nil, throughputPerformance: UInt64? = nil, diskChargePrepaid: DiskChargePrepaid? = nil, diskBackupQuota: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceCreateDisksResponse> {
        self.inquiryPriceCreateDisks(.init(diskChargeType: diskChargeType, diskType: diskType, diskSize: diskSize, projectId: projectId, diskCount: diskCount, throughputPerformance: throughputPerformance, diskChargePrepaid: diskChargePrepaid, diskBackupQuota: diskBackupQuota), region: region, logger: logger, on: eventLoop)
    }

    /// 创建云硬盘询价
    ///
    /// 本接口（InquiryPriceCreateDisks）用于创建云硬盘询价。
    ///
    /// * 支持查询创建多块云硬盘的价格，此时返回结果为总价格。
    @inlinable
    public func inquiryPriceCreateDisks(diskChargeType: String, diskType: String, diskSize: UInt64, projectId: UInt64? = nil, diskCount: UInt64? = nil, throughputPerformance: UInt64? = nil, diskChargePrepaid: DiskChargePrepaid? = nil, diskBackupQuota: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceCreateDisksResponse {
        try await self.inquiryPriceCreateDisks(.init(diskChargeType: diskChargeType, diskType: diskType, diskSize: diskSize, projectId: projectId, diskCount: diskCount, throughputPerformance: throughputPerformance, diskChargePrepaid: diskChargePrepaid, diskBackupQuota: diskBackupQuota), region: region, logger: logger, on: eventLoop)
    }
}
