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

extension Lighthouse {
    /// InquirePriceRenewDisks请求参数结构体
    public struct InquirePriceRenewDisksRequest: TCRequestModel {
        /// 云硬盘ID列表。
        public let diskIds: [String]

        /// 续费云硬盘包年包月相关参数设置。
        public let renewDiskChargePrepaid: RenewDiskChargePrepaid

        public init(diskIds: [String], renewDiskChargePrepaid: RenewDiskChargePrepaid) {
            self.diskIds = diskIds
            self.renewDiskChargePrepaid = renewDiskChargePrepaid
        }

        enum CodingKeys: String, CodingKey {
            case diskIds = "DiskIds"
            case renewDiskChargePrepaid = "RenewDiskChargePrepaid"
        }
    }

    /// InquirePriceRenewDisks返回参数结构体
    public struct InquirePriceRenewDisksResponse: TCResponseModel {
        /// 云硬盘价格。
        public let diskPrice: DiskPrice

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case diskPrice = "DiskPrice"
            case requestId = "RequestId"
        }
    }

    /// 续费云硬盘询价
    ///
    /// 本接口（InquirePriceRenewDisks）用于续费云硬盘询价。
    @inlinable
    public func inquirePriceRenewDisks(_ input: InquirePriceRenewDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquirePriceRenewDisksResponse> {
        self.client.execute(action: "InquirePriceRenewDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 续费云硬盘询价
    ///
    /// 本接口（InquirePriceRenewDisks）用于续费云硬盘询价。
    @inlinable
    public func inquirePriceRenewDisks(_ input: InquirePriceRenewDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePriceRenewDisksResponse {
        try await self.client.execute(action: "InquirePriceRenewDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 续费云硬盘询价
    ///
    /// 本接口（InquirePriceRenewDisks）用于续费云硬盘询价。
    @inlinable
    public func inquirePriceRenewDisks(diskIds: [String], renewDiskChargePrepaid: RenewDiskChargePrepaid, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquirePriceRenewDisksResponse> {
        self.inquirePriceRenewDisks(InquirePriceRenewDisksRequest(diskIds: diskIds, renewDiskChargePrepaid: renewDiskChargePrepaid), region: region, logger: logger, on: eventLoop)
    }

    /// 续费云硬盘询价
    ///
    /// 本接口（InquirePriceRenewDisks）用于续费云硬盘询价。
    @inlinable
    public func inquirePriceRenewDisks(diskIds: [String], renewDiskChargePrepaid: RenewDiskChargePrepaid, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePriceRenewDisksResponse {
        try await self.inquirePriceRenewDisks(InquirePriceRenewDisksRequest(diskIds: diskIds, renewDiskChargePrepaid: renewDiskChargePrepaid), region: region, logger: logger, on: eventLoop)
    }
}
