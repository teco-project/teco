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

@_exported import struct Foundation.Date

extension Iotcloud {
    /// DescribeFirmwareTaskDevices请求参数结构体
    public struct DescribeFirmwareTaskDevicesRequest: TCRequestModel {
        /// 产品ID
        public let productID: String
        
        /// 固件版本
        public let firmwareVersion: String?
        
        /// 筛选条件
        public let filters: [SearchKeyword]?
        
        /// 查询偏移量
        public let offset: UInt64?
        
        /// 查询的数量
        public let limit: UInt64?
        
        public init (productID: String, firmwareVersion: String? = nil, filters: [SearchKeyword]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.productID = productID
            self.firmwareVersion = firmwareVersion
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case firmwareVersion = "FirmwareVersion"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeFirmwareTaskDevices返回参数结构体
    public struct DescribeFirmwareTaskDevicesResponse: TCResponseModel {
        /// 固件升级任务的设备总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?
        
        /// 固件升级任务的设备列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let devices: [DeviceUpdateStatus]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case devices = "Devices"
            case requestId = "RequestId"
        }
    }
    
    /// 查询固件升级任务的设备列表
    @inlinable
    public func describeFirmwareTaskDevices(_ input: DescribeFirmwareTaskDevicesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFirmwareTaskDevicesResponse > {
        self.client.execute(action: "DescribeFirmwareTaskDevices", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询固件升级任务的设备列表
    @inlinable
    public func describeFirmwareTaskDevices(_ input: DescribeFirmwareTaskDevicesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFirmwareTaskDevicesResponse {
        try await self.client.execute(action: "DescribeFirmwareTaskDevices", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
