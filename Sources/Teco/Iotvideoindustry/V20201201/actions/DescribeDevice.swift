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

extension Iotvideoindustry {
    /// DescribeDevice请求参数结构体
    public struct DescribeDeviceRequest: TCRequestModel {
        /// 设备ID
        public let deviceId: String
        
        public init (deviceId: String) {
            self.deviceId = deviceId
        }
        
        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
        }
    }
    
    /// DescribeDevice返回参数结构体
    public struct DescribeDeviceResponse: TCResponseModel {
        /// 设备详情信息
        public let device: AllDeviceInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case device = "Device"
            case requestId = "RequestId"
        }
    }
    
    /// 获取设备详情
    ///
    /// 获取指定设备详细信息
    @inlinable
    public func describeDevice(_ input: DescribeDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDeviceResponse > {
        self.client.execute(action: "DescribeDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取设备详情
    ///
    /// 获取指定设备详细信息
    @inlinable
    public func describeDevice(_ input: DescribeDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceResponse {
        try await self.client.execute(action: "DescribeDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
