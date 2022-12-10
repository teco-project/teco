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
    /// 直播列表接口
    ///
    /// 直播列表接口
    @inlinable
    public func describeLiveChannelList(_ input: DescribeLiveChannelListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLiveChannelListResponse > {
        self.client.execute(action: "DescribeLiveChannelList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 直播列表接口
    ///
    /// 直播列表接口
    @inlinable
    public func describeLiveChannelList(_ input: DescribeLiveChannelListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveChannelListResponse {
        try await self.client.execute(action: "DescribeLiveChannelList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeLiveChannelList请求参数结构体
    public struct DescribeLiveChannelListRequest: TCRequestModel {
        /// 偏移量
        public let offset: Int64
        
        /// 最大数
        public let limit: Int64
        
        /// 直播频道类型，1：固定直播；2：移动直播
        public let liveChannelType: Int64?
        
        /// 直播录制计划ID, null: 直播录制计划为空
        public let recordPlanId: String?
        
        /// 频道名称 (支持模糊搜索)
        public let liveChannelName: String?
        
        public init (offset: Int64, limit: Int64, liveChannelType: Int64?, recordPlanId: String?, liveChannelName: String?) {
            self.offset = offset
            self.limit = limit
            self.liveChannelType = liveChannelType
            self.recordPlanId = recordPlanId
            self.liveChannelName = liveChannelName
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case liveChannelType = "LiveChannelType"
            case recordPlanId = "RecordPlanId"
            case liveChannelName = "LiveChannelName"
        }
    }
    
    /// DescribeLiveChannelList返回参数结构体
    public struct DescribeLiveChannelListResponse: TCResponseModel {
        /// 频道总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?
        
        /// 频道信息数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let liveChannels: [LiveChannelInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case liveChannels = "LiveChannels"
            case requestId = "RequestId"
        }
    }
}