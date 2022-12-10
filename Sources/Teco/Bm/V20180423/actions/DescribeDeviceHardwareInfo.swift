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

extension Bm {
    /// 查询设备硬件配置信息
    ///
    /// 查询设备硬件配置信息，如 CPU 型号，内存大小，磁盘大小和数量
    @inlinable
    public func describeDeviceHardwareInfo(_ input: DescribeDeviceHardwareInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDeviceHardwareInfoResponse > {
        self.client.execute(action: "DescribeDeviceHardwareInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询设备硬件配置信息
    ///
    /// 查询设备硬件配置信息，如 CPU 型号，内存大小，磁盘大小和数量
    @inlinable
    public func describeDeviceHardwareInfo(_ input: DescribeDeviceHardwareInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceHardwareInfoResponse {
        try await self.client.execute(action: "DescribeDeviceHardwareInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDeviceHardwareInfo请求参数结构体
    public struct DescribeDeviceHardwareInfoRequest: TCRequestModel {
        /// 设备 ID 列表
        public let instanceIds: [String]
        
        public init (instanceIds: [String]) {
            self.instanceIds = instanceIds
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }
    
    /// DescribeDeviceHardwareInfo返回参数结构体
    public struct DescribeDeviceHardwareInfoResponse: TCResponseModel {
        /// 设备硬件配置信息
        public let deviceHardwareInfoSet: [DeviceHardwareInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case deviceHardwareInfoSet = "DeviceHardwareInfoSet"
            case requestId = "RequestId"
        }
    }
}