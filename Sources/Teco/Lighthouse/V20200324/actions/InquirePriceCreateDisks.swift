//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// 新购云硬盘询价
    ///
    /// 本接口（InquirePriceCreateDisks）用于新购云硬盘询价。
    @inlinable
    public func inquirePriceCreateDisks(_ input: InquirePriceCreateDisksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InquirePriceCreateDisksResponse > {
        self.client.execute(action: "InquirePriceCreateDisks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 新购云硬盘询价
    ///
    /// 本接口（InquirePriceCreateDisks）用于新购云硬盘询价。
    @inlinable
    public func inquirePriceCreateDisks(_ input: InquirePriceCreateDisksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePriceCreateDisksResponse {
        try await self.client.execute(action: "InquirePriceCreateDisks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// InquirePriceCreateDisks请求参数结构体
    public struct InquirePriceCreateDisksRequest: TCRequestModel {
        /// 云硬盘大小, 单位: GB。
        public let diskSize: Int64
        
        /// 云硬盘介质类型。取值: "CLOUD_PREMIUM"(高性能云盘), "CLOUD_SSD"(SSD云硬盘)。
        public let diskType: String
        
        /// 新购云硬盘包年包月相关参数设置。
        public let diskChargePrepaid: DiskChargePrepaid
        
        /// 云硬盘个数, 默认值: 1。
        public let diskCount: Int64?
        
        /// 指定云硬盘备份点配额，不传时默认为不带备份点配额。目前只支持不带或设置1个云硬盘备份点配额。
        public let diskBackupQuota: Int64?
        
        public init (diskSize: Int64, diskType: String, diskChargePrepaid: DiskChargePrepaid, diskCount: Int64?, diskBackupQuota: Int64?) {
            self.diskSize = diskSize
            self.diskType = diskType
            self.diskChargePrepaid = diskChargePrepaid
            self.diskCount = diskCount
            self.diskBackupQuota = diskBackupQuota
        }
        
        enum CodingKeys: String, CodingKey {
            case diskSize = "DiskSize"
            case diskType = "DiskType"
            case diskChargePrepaid = "DiskChargePrepaid"
            case diskCount = "DiskCount"
            case diskBackupQuota = "DiskBackupQuota"
        }
    }
    
    /// InquirePriceCreateDisks返回参数结构体
    public struct InquirePriceCreateDisksResponse: TCResponseModel {
        /// 云硬盘价格。
        public let diskPrice: DiskPrice
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case diskPrice = "DiskPrice"
            case requestId = "RequestId"
        }
    }
}
