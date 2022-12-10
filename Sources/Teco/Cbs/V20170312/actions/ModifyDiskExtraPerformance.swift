//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cbs {
    /// 调整云硬盘额外性能
    ///
    /// 本接口（ModifyDiskExtraPerformance）用于调整云硬盘额外的性能。
    /// * 目前仅支持极速型SSD云硬盘（CLOUD_TSSD）和高性能SSD云硬盘(CLOUD_HSSD)。
    @inlinable
    public func modifyDiskExtraPerformance(_ input: ModifyDiskExtraPerformanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDiskExtraPerformanceResponse > {
        self.client.execute(action: "ModifyDiskExtraPerformance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 调整云硬盘额外性能
    ///
    /// 本接口（ModifyDiskExtraPerformance）用于调整云硬盘额外的性能。
    /// * 目前仅支持极速型SSD云硬盘（CLOUD_TSSD）和高性能SSD云硬盘(CLOUD_HSSD)。
    @inlinable
    public func modifyDiskExtraPerformance(_ input: ModifyDiskExtraPerformanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDiskExtraPerformanceResponse {
        try await self.client.execute(action: "ModifyDiskExtraPerformance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyDiskExtraPerformance请求参数结构体
    public struct ModifyDiskExtraPerformanceRequest: TCRequestModel {
        /// 需要创建快照的云硬盘ID，可通过[DescribeDisks](/document/product/362/16315)接口查询。
        public let diskId: String
        
        /// 额外购买的云硬盘性能值，单位MB/s。
        public let throughputPerformance: UInt64
        
        public init (diskId: String, throughputPerformance: UInt64) {
            self.diskId = diskId
            self.throughputPerformance = throughputPerformance
        }
        
        enum CodingKeys: String, CodingKey {
            case diskId = "DiskId"
            case throughputPerformance = "ThroughputPerformance"
        }
    }
    
    /// ModifyDiskExtraPerformance返回参数结构体
    public struct ModifyDiskExtraPerformanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}