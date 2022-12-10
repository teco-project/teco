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
    /// 查询机型RAID方式以及系统盘大小
    ///
    /// 查询机型支持的RAID方式， 并返回系统盘的分区和逻辑盘的列表
    @inlinable
    public func describeDeviceClassPartition(_ input: DescribeDeviceClassPartitionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDeviceClassPartitionResponse > {
        self.client.execute(action: "DescribeDeviceClassPartition", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询机型RAID方式以及系统盘大小
    ///
    /// 查询机型支持的RAID方式， 并返回系统盘的分区和逻辑盘的列表
    @inlinable
    public func describeDeviceClassPartition(_ input: DescribeDeviceClassPartitionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceClassPartitionResponse {
        try await self.client.execute(action: "DescribeDeviceClassPartition", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDeviceClassPartition请求参数结构体
    public struct DescribeDeviceClassPartitionRequest: TCRequestModel {
        /// 设备类型代号。代号通过接口[查询设备型号(DescribeDeviceClass)](https://cloud.tencent.com/document/api/386/32911)查询。标准机型需要传入此参数。虽是可选参数，但DeviceClassCode和InstanceId参数，必须要填写一个。
        public let deviceClassCode: String?
        
        /// 需要查询自定义机型RAID信息时，传入自定义机型实例ID。InstanceId存在时其余参数失效。
        public let instanceId: String?
        
        /// CPU型号ID，查询自定义机型时需要传入
        public let cpuId: UInt64?
        
        /// 内存大小，单位为G，查询自定义机型时需要传入
        public let memSize: UInt64?
        
        /// 是否有RAID卡，取值：1(有) 0(无)。查询自定义机型时需要传入
        public let containRaidCard: UInt64?
        
        /// 系统盘类型ID，查询自定义机型时需要传入
        public let systemDiskTypeId: UInt64?
        
        /// 系统盘数量，查询自定义机型时需要传入
        public let systemDiskCount: UInt64?
        
        /// 数据盘类型ID，查询自定义机型时可传入
        public let dataDiskTypeId: UInt64?
        
        /// 数据盘数量，查询自定义机型时可传入
        public let dataDiskCount: UInt64?
        
        public init (deviceClassCode: String?, instanceId: String?, cpuId: UInt64?, memSize: UInt64?, containRaidCard: UInt64?, systemDiskTypeId: UInt64?, systemDiskCount: UInt64?, dataDiskTypeId: UInt64?, dataDiskCount: UInt64?) {
            self.deviceClassCode = deviceClassCode
            self.instanceId = instanceId
            self.cpuId = cpuId
            self.memSize = memSize
            self.containRaidCard = containRaidCard
            self.systemDiskTypeId = systemDiskTypeId
            self.systemDiskCount = systemDiskCount
            self.dataDiskTypeId = dataDiskTypeId
            self.dataDiskCount = dataDiskCount
        }
        
        enum CodingKeys: String, CodingKey {
            case deviceClassCode = "DeviceClassCode"
            case instanceId = "InstanceId"
            case cpuId = "CpuId"
            case memSize = "MemSize"
            case containRaidCard = "ContainRaidCard"
            case systemDiskTypeId = "SystemDiskTypeId"
            case systemDiskCount = "SystemDiskCount"
            case dataDiskTypeId = "DataDiskTypeId"
            case dataDiskCount = "DataDiskCount"
        }
    }
    
    /// DescribeDeviceClassPartition返回参数结构体
    public struct DescribeDeviceClassPartitionResponse: TCResponseModel {
        /// 支持的RAID格式列表
        public let deviceClassPartitionInfoSet: [DeviceClassPartitionInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case deviceClassPartitionInfoSet = "DeviceClassPartitionInfoSet"
            case requestId = "RequestId"
        }
    }
}
