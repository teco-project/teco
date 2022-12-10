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

extension Bm {
    /// 查询设备库存
    @inlinable
    public func describeDeviceInventory(_ input: DescribeDeviceInventoryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDeviceInventoryResponse > {
        self.client.execute(action: "DescribeDeviceInventory", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询设备库存
    @inlinable
    public func describeDeviceInventory(_ input: DescribeDeviceInventoryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceInventoryResponse {
        try await self.client.execute(action: "DescribeDeviceInventory", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDeviceInventory请求参数结构体
    public struct DescribeDeviceInventoryRequest: TCRequestModel {
        /// 可用区
        public let zone: String
        
        /// 设备型号
        public let deviceClassCode: String?
        
        /// 私有网络ID
        public let vpcId: String?
        
        /// 子网ID
        public let subnetId: String?
        
        /// CPU型号ID，查询自定义机型时必填
        public let cpuId: UInt64?
        
        /// 内存大小，单位为G，查询自定义机型时必填
        public let memSize: UInt64?
        
        /// 是否有RAID卡，取值：1(有) 0(无)，查询自定义机型时必填
        public let containRaidCard: UInt64?
        
        /// 系统盘类型ID，查询自定义机型时必填
        public let systemDiskTypeId: UInt64?
        
        /// 系统盘数量，查询自定义机型时必填
        public let systemDiskCount: UInt64?
        
        /// 数据盘类型ID，查询自定义机型时可填
        public let dataDiskTypeId: UInt64?
        
        /// 数据盘数量，查询自定义机型时可填
        public let dataDiskCount: UInt64?
        
        public init (zone: String, deviceClassCode: String?, vpcId: String?, subnetId: String?, cpuId: UInt64?, memSize: UInt64?, containRaidCard: UInt64?, systemDiskTypeId: UInt64?, systemDiskCount: UInt64?, dataDiskTypeId: UInt64?, dataDiskCount: UInt64?) {
            self.zone = zone
            self.deviceClassCode = deviceClassCode
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.cpuId = cpuId
            self.memSize = memSize
            self.containRaidCard = containRaidCard
            self.systemDiskTypeId = systemDiskTypeId
            self.systemDiskCount = systemDiskCount
            self.dataDiskTypeId = dataDiskTypeId
            self.dataDiskCount = dataDiskCount
        }
        
        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case deviceClassCode = "DeviceClassCode"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case cpuId = "CpuId"
            case memSize = "MemSize"
            case containRaidCard = "ContainRaidCard"
            case systemDiskTypeId = "SystemDiskTypeId"
            case systemDiskCount = "SystemDiskCount"
            case dataDiskTypeId = "DataDiskTypeId"
            case dataDiskCount = "DataDiskCount"
        }
    }
    
    /// DescribeDeviceInventory返回参数结构体
    public struct DescribeDeviceInventoryResponse: TCResponseModel {
        /// 库存设备数量
        public let deviceCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case deviceCount = "DeviceCount"
            case requestId = "RequestId"
        }
    }
}
