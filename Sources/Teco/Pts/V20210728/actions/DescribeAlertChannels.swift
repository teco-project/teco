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

extension Pts {
    /// 查询告警通知接收组
    @inlinable
    public func describeAlertChannels(_ input: DescribeAlertChannelsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAlertChannelsResponse > {
        self.client.execute(action: "DescribeAlertChannels", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询告警通知接收组
    @inlinable
    public func describeAlertChannels(_ input: DescribeAlertChannelsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlertChannelsResponse {
        try await self.client.execute(action: "DescribeAlertChannels", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAlertChannels请求参数结构体
    public struct DescribeAlertChannelsRequest: TCRequestModel {
        /// 项目 ID 列表
        public let projectIds: [String]
        
        /// 偏移量，默认为0
        public let offset: UInt64?
        
        /// 返回数量，默认为20，最大为100
        public let limit: UInt64?
        
        /// Notice ID 列表
        public let noticeIds: [String]?
        
        /// 排序项
        public let orderBy: String?
        
        /// 是否正序
        public let ascend: Bool?
        
        public init (projectIds: [String], offset: UInt64?, limit: UInt64?, noticeIds: [String]?, orderBy: String?, ascend: Bool?) {
            self.projectIds = projectIds
            self.offset = offset
            self.limit = limit
            self.noticeIds = noticeIds
            self.orderBy = orderBy
            self.ascend = ascend
        }
        
        enum CodingKeys: String, CodingKey {
            case projectIds = "ProjectIds"
            case offset = "Offset"
            case limit = "Limit"
            case noticeIds = "NoticeIds"
            case orderBy = "OrderBy"
            case ascend = "Ascend"
        }
    }
    
    /// DescribeAlertChannels返回参数结构体
    public struct DescribeAlertChannelsResponse: TCResponseModel {
        /// 告警通知接收组列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alertChannelSet: [AlertChannelRecord]?
        
        /// 告警通知接收组数目
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case alertChannelSet = "AlertChannelSet"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
}
