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

extension Iotvideoindustry {
    /// 获取设备实时流地址（旧）
    ///
    /// 本接口(DescribeDeviceStreams)用于获取设备实时流地址。
    /// 请使用DescribeChannelStreamURL接口
    @inlinable
    public func describeDeviceStreams(_ input: DescribeDeviceStreamsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDeviceStreamsResponse > {
        self.client.execute(action: "DescribeDeviceStreams", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取设备实时流地址（旧）
    ///
    /// 本接口(DescribeDeviceStreams)用于获取设备实时流地址。
    /// 请使用DescribeChannelStreamURL接口
    @inlinable
    public func describeDeviceStreams(_ input: DescribeDeviceStreamsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceStreamsResponse {
        try await self.client.execute(action: "DescribeDeviceStreams", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDeviceStreams请求参数结构体
    public struct DescribeDeviceStreamsRequest: TCRequestModel {
        /// 设备唯一标识
        public let deviceId: String
        
        /// 流地址失效时间
        public let expireTime: UInt64
        
        /// 通道唯一标识（接口升级字段为必填）
        public let channelId: String?
        
        public init (deviceId: String, expireTime: UInt64, channelId: String?) {
            self.deviceId = deviceId
            self.expireTime = expireTime
            self.channelId = channelId
        }
        
        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case expireTime = "ExpireTime"
            case channelId = "ChannelId"
        }
    }
    
    /// DescribeDeviceStreams返回参数结构体
    public struct DescribeDeviceStreamsResponse: TCResponseModel {
        /// 设备实时流地址列表
        public let data: DescribeDeviceStreamsData
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}