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
    /// InquiryPriceRenewDisks请求参数结构体
    public struct InquiryPriceRenewDisksRequest: TCRequest {
        /// 云硬盘ID， 通过[DescribeDisks](/document/product/362/16315)接口查询。
        public let diskIds: [String]

        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月云盘的购买时长。如果在该参数中指定CurInstanceDeadline，则会按对齐到子机到期时间来续费。如果是批量续费询价，该参数与Disks参数一一对应，元素数量需保持一致。
        public let diskChargePrepaids: [DiskChargePrepaid]?

        /// 指定云盘新的到期时间，形式如：2017-12-17 00:00:00。参数`NewDeadline`和`DiskChargePrepaids`是两种指定询价时长的方式，两者必传一个。
        public let newDeadline: String?

        /// 云盘所属项目ID。 如传入则仅用于鉴权。
        public let projectId: UInt64?

        public init(diskIds: [String], diskChargePrepaids: [DiskChargePrepaid]? = nil, newDeadline: String? = nil, projectId: UInt64? = nil) {
            self.diskIds = diskIds
            self.diskChargePrepaids = diskChargePrepaids
            self.newDeadline = newDeadline
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case diskIds = "DiskIds"
            case diskChargePrepaids = "DiskChargePrepaids"
            case newDeadline = "NewDeadline"
            case projectId = "ProjectId"
        }
    }

    /// InquiryPriceRenewDisks返回参数结构体
    public struct InquiryPriceRenewDisksResponse: TCResponse {
        /// 描述了续费云盘的价格。
        public let diskPrice: PrepayPrice

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case diskPrice = "DiskPrice"
            case requestId = "RequestId"
        }
    }

    /// 续费云硬盘询价
    ///
    /// 本接口（InquiryPriceRenewDisks）用于续费云硬盘询价。
    ///
    /// * 只支持查询预付费模式的弹性云盘续费价格。
    /// * 支持与挂载实例一起续费的场景，需要在[DiskChargePrepaid](/document/product/362/15669#DiskChargePrepaid)参数中指定CurInstanceDeadline，此时会按对齐到实例续费后的到期时间来续费询价。
    /// * 支持为多块云盘指定不同的续费时长，此时返回的价格为多块云盘续费的总价格。
    @inlinable
    public func inquiryPriceRenewDisks(_ input: InquiryPriceRenewDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceRenewDisksResponse> {
        self.client.execute(action: "InquiryPriceRenewDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 续费云硬盘询价
    ///
    /// 本接口（InquiryPriceRenewDisks）用于续费云硬盘询价。
    ///
    /// * 只支持查询预付费模式的弹性云盘续费价格。
    /// * 支持与挂载实例一起续费的场景，需要在[DiskChargePrepaid](/document/product/362/15669#DiskChargePrepaid)参数中指定CurInstanceDeadline，此时会按对齐到实例续费后的到期时间来续费询价。
    /// * 支持为多块云盘指定不同的续费时长，此时返回的价格为多块云盘续费的总价格。
    @inlinable
    public func inquiryPriceRenewDisks(_ input: InquiryPriceRenewDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceRenewDisksResponse {
        try await self.client.execute(action: "InquiryPriceRenewDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 续费云硬盘询价
    ///
    /// 本接口（InquiryPriceRenewDisks）用于续费云硬盘询价。
    ///
    /// * 只支持查询预付费模式的弹性云盘续费价格。
    /// * 支持与挂载实例一起续费的场景，需要在[DiskChargePrepaid](/document/product/362/15669#DiskChargePrepaid)参数中指定CurInstanceDeadline，此时会按对齐到实例续费后的到期时间来续费询价。
    /// * 支持为多块云盘指定不同的续费时长，此时返回的价格为多块云盘续费的总价格。
    @inlinable
    public func inquiryPriceRenewDisks(diskIds: [String], diskChargePrepaids: [DiskChargePrepaid]? = nil, newDeadline: String? = nil, projectId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceRenewDisksResponse> {
        self.inquiryPriceRenewDisks(.init(diskIds: diskIds, diskChargePrepaids: diskChargePrepaids, newDeadline: newDeadline, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 续费云硬盘询价
    ///
    /// 本接口（InquiryPriceRenewDisks）用于续费云硬盘询价。
    ///
    /// * 只支持查询预付费模式的弹性云盘续费价格。
    /// * 支持与挂载实例一起续费的场景，需要在[DiskChargePrepaid](/document/product/362/15669#DiskChargePrepaid)参数中指定CurInstanceDeadline，此时会按对齐到实例续费后的到期时间来续费询价。
    /// * 支持为多块云盘指定不同的续费时长，此时返回的价格为多块云盘续费的总价格。
    @inlinable
    public func inquiryPriceRenewDisks(diskIds: [String], diskChargePrepaids: [DiskChargePrepaid]? = nil, newDeadline: String? = nil, projectId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceRenewDisksResponse {
        try await self.inquiryPriceRenewDisks(.init(diskIds: diskIds, diskChargePrepaids: diskChargePrepaids, newDeadline: newDeadline, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
