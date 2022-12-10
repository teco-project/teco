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

extension Cdc {
    /// 查询专用集群支持的可用区列表
    @inlinable
    public func describeDedicatedSupportedZones(_ input: DescribeDedicatedSupportedZonesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDedicatedSupportedZonesResponse > {
        self.client.execute(action: "DescribeDedicatedSupportedZones", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询专用集群支持的可用区列表
    @inlinable
    public func describeDedicatedSupportedZones(_ input: DescribeDedicatedSupportedZonesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDedicatedSupportedZonesResponse {
        try await self.client.execute(action: "DescribeDedicatedSupportedZones", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDedicatedSupportedZones请求参数结构体
    public struct DescribeDedicatedSupportedZonesRequest: TCRequestModel {
        /// 传入region列表
        public let regions: [Int64]?
        
        public init (regions: [Int64]?) {
            self.regions = regions
        }
        
        enum CodingKeys: String, CodingKey {
            case regions = "Regions"
        }
    }
    
    /// DescribeDedicatedSupportedZones返回参数结构体
    public struct DescribeDedicatedSupportedZonesResponse: TCResponseModel {
        /// 支持的可用区列表
        public let zoneSet: [RegionZoneInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case zoneSet = "ZoneSet"
            case requestId = "RequestId"
        }
    }
}
