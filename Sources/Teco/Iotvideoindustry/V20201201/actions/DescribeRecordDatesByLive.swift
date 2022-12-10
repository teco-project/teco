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
    /// 直播录像存储日期列表
    @inlinable
    public func describeRecordDatesByLive(_ input: DescribeRecordDatesByLiveRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRecordDatesByLiveResponse > {
        self.client.execute(action: "DescribeRecordDatesByLive", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 直播录像存储日期列表
    @inlinable
    public func describeRecordDatesByLive(_ input: DescribeRecordDatesByLiveRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordDatesByLiveResponse {
        try await self.client.execute(action: "DescribeRecordDatesByLive", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeRecordDatesByLive请求参数结构体
    public struct DescribeRecordDatesByLiveRequest: TCRequestModel {
        /// 直播频道ID
        public let liveChannelId: String
        
        /// 分页值，本地录制时参数无效
        public let offset: Int64
        
        /// 限制值，本地录制时参数无效
        public let limit: Int64
        
        public init (liveChannelId: String, offset: Int64, limit: Int64) {
            self.liveChannelId = liveChannelId
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case liveChannelId = "LiveChannelId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeRecordDatesByLive返回参数结构体
    public struct DescribeRecordDatesByLiveResponse: TCResponseModel {
        /// 录制日期数组
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
