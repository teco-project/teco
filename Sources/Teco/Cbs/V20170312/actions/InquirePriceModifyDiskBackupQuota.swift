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
    /// InquirePriceModifyDiskBackupQuota请求参数结构体
    public struct InquirePriceModifyDiskBackupQuotaRequest: TCRequestModel {
        /// 云硬盘ID， 通过DescribeDisks（查询云硬盘信息）接口查询。
        public let diskId: String

        /// 修改后的云硬盘备份点配额，即云盘可以拥有的备份点数量，单位为个。
        public let diskBackupQuota: UInt64

        public init(diskId: String, diskBackupQuota: UInt64) {
            self.diskId = diskId
            self.diskBackupQuota = diskBackupQuota
        }

        enum CodingKeys: String, CodingKey {
            case diskId = "DiskId"
            case diskBackupQuota = "DiskBackupQuota"
        }
    }

    /// InquirePriceModifyDiskBackupQuota返回参数结构体
    public struct InquirePriceModifyDiskBackupQuotaResponse: TCResponseModel {
        /// 描述了修改云硬盘备份点之后的云盘价格。
        public let diskPrice: Price

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case diskPrice = "DiskPrice"
            case requestId = "RequestId"
        }
    }

    /// 修改云硬盘备份点配额询价
    ///
    /// 本接口（InquirePricePriceModifyDiskBackupQuota）用于修改云硬盘备份点配额询价。
    @inlinable
    public func inquirePriceModifyDiskBackupQuota(_ input: InquirePriceModifyDiskBackupQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquirePriceModifyDiskBackupQuotaResponse> {
        self.client.execute(action: "InquirePriceModifyDiskBackupQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改云硬盘备份点配额询价
    ///
    /// 本接口（InquirePricePriceModifyDiskBackupQuota）用于修改云硬盘备份点配额询价。
    @inlinable
    public func inquirePriceModifyDiskBackupQuota(_ input: InquirePriceModifyDiskBackupQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePriceModifyDiskBackupQuotaResponse {
        try await self.client.execute(action: "InquirePriceModifyDiskBackupQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改云硬盘备份点配额询价
    ///
    /// 本接口（InquirePricePriceModifyDiskBackupQuota）用于修改云硬盘备份点配额询价。
    @inlinable
    public func inquirePriceModifyDiskBackupQuota(diskId: String, diskBackupQuota: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquirePriceModifyDiskBackupQuotaResponse> {
        let input = InquirePriceModifyDiskBackupQuotaRequest(diskId: diskId, diskBackupQuota: diskBackupQuota)
        return self.client.execute(action: "InquirePriceModifyDiskBackupQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改云硬盘备份点配额询价
    ///
    /// 本接口（InquirePricePriceModifyDiskBackupQuota）用于修改云硬盘备份点配额询价。
    @inlinable
    public func inquirePriceModifyDiskBackupQuota(diskId: String, diskBackupQuota: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePriceModifyDiskBackupQuotaResponse {
        let input = InquirePriceModifyDiskBackupQuotaRequest(diskId: diskId, diskBackupQuota: diskBackupQuota)
        return try await self.client.execute(action: "InquirePriceModifyDiskBackupQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
