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
    /// 获取设备录像日期列表
    ///
    /// 本接口(DescribeRecordDatesByChannel)用于查询设备含有录像文件的日期列表。
    @inlinable
    public func describeRecordDatesByChannel(_ input: DescribeRecordDatesByChannelRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRecordDatesByChannelResponse > {
        self.client.execute(action: "DescribeRecordDatesByChannel", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取设备录像日期列表
    ///
    /// 本接口(DescribeRecordDatesByChannel)用于查询设备含有录像文件的日期列表。
    @inlinable
    public func describeRecordDatesByChannel(_ input: DescribeRecordDatesByChannelRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordDatesByChannelResponse {
        try await self.client.execute(action: "DescribeRecordDatesByChannel", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeRecordDatesByChannel请求参数结构体
    public struct DescribeRecordDatesByChannelRequest: TCRequestModel {
        /// 设备唯一标识
        public let deviceId: String
        
        /// 通道唯一标识
        public let channelId: String
        
        /// 1: 云端录制 2: 本地录制
        public let type: Int64
        
        /// 限制量，默认200
        public let limit: Int64?
        
        /// 偏移量，默认0
        public let offset: Int64?
        
        public init (deviceId: String, channelId: String, type: Int64, limit: Int64?, offset: Int64?) {
            self.deviceId = deviceId
            self.channelId = channelId
            self.type = type
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case channelId = "ChannelId"
            case type = "Type"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeRecordDatesByChannel返回参数结构体
    public struct DescribeRecordDatesByChannelResponse: TCResponseModel {
        /// 含有录像文件的日期列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dates: [String]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dates = "Dates"
            case requestId = "RequestId"
        }
    }
}
