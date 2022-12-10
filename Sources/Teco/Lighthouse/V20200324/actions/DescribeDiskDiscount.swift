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
    /// 查询云硬盘折扣信息
    ///
    /// 本接口(DescribeDiskDiscount)用于查询云硬盘折扣信息。
    @inlinable
    public func describeDiskDiscount(_ input: DescribeDiskDiscountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDiskDiscountResponse > {
        self.client.execute(action: "DescribeDiskDiscount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询云硬盘折扣信息
    ///
    /// 本接口(DescribeDiskDiscount)用于查询云硬盘折扣信息。
    @inlinable
    public func describeDiskDiscount(_ input: DescribeDiskDiscountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDiskDiscountResponse {
        try await self.client.execute(action: "DescribeDiskDiscount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDiskDiscount请求参数结构体
    public struct DescribeDiskDiscountRequest: TCRequestModel {
        /// 云硬盘类型, 取值: "CLOUD_PREMIUM"。
        public let diskType: String
        
        /// 云硬盘大小。
        public let diskSize: Int64
        
        /// 指定云硬盘备份点配额，不传时默认为不带备份点配额。目前只支持不带或设置1个云硬盘备份点配额。
        public let diskBackupQuota: Int64?
        
        public init (diskType: String, diskSize: Int64, diskBackupQuota: Int64?) {
            self.diskType = diskType
            self.diskSize = diskSize
            self.diskBackupQuota = diskBackupQuota
        }
        
        enum CodingKeys: String, CodingKey {
            case diskType = "DiskType"
            case diskSize = "DiskSize"
            case diskBackupQuota = "DiskBackupQuota"
        }
    }
    
    /// DescribeDiskDiscount返回参数结构体
    public struct DescribeDiskDiscountResponse: TCResponseModel {
        /// 币种：CNY人民币，USD 美元。
        public let currency: String
        
        /// 折扣梯度详情，每个梯度包含的信息有：时长，折扣数，总价，折扣价，折扣详情（用户折扣、官网折扣、最终折扣）。
        public let discountDetail: [DiscountDetail]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case currency = "Currency"
            case discountDetail = "DiscountDetail"
            case requestId = "RequestId"
        }
    }
}
