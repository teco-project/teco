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
    /// 获取设备通道实时流地址
    ///
    /// 本接口(DescribeChannelLiveStreamURL)用于获取设备指定通道实时流地址，地址是动态生成，如重新播放需要调用此接口重新获取最新播放地址。
    /// 正常推流，如未设置对应录制计划，且180s无人观看此流，将会被自动掐断。
    @inlinable
    public func describeChannelLiveStreamURL(_ input: DescribeChannelLiveStreamURLRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeChannelLiveStreamURLResponse > {
        self.client.execute(action: "DescribeChannelLiveStreamURL", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取设备通道实时流地址
    ///
    /// 本接口(DescribeChannelLiveStreamURL)用于获取设备指定通道实时流地址，地址是动态生成，如重新播放需要调用此接口重新获取最新播放地址。
    /// 正常推流，如未设置对应录制计划，且180s无人观看此流，将会被自动掐断。
    @inlinable
    public func describeChannelLiveStreamURL(_ input: DescribeChannelLiveStreamURLRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChannelLiveStreamURLResponse {
        try await self.client.execute(action: "DescribeChannelLiveStreamURL", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeChannelLiveStreamURL请求参数结构体
    public struct DescribeChannelLiveStreamURLRequest: TCRequestModel {
        /// 设备唯一标识，必填参数
        public let deviceId: String
        
        /// 通道唯一标识（接口升级字段为必填），必填参数
        public let channelId: String
        
        public init (deviceId: String, channelId: String) {
            self.deviceId = deviceId
            self.channelId = channelId
        }
        
        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case channelId = "ChannelId"
        }
    }
    
    /// DescribeChannelLiveStreamURL返回参数结构体
    public struct DescribeChannelLiveStreamURLResponse: TCResponseModel {
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
