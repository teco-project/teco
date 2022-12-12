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

extension Tcb {
    /// DescribeActivityRecord请求参数结构体
    public struct DescribeActivityRecordRequest: TCRequestModel {
        /// 渠道加密token
        public let channelToken: String
        
        /// 渠道来源，每个来源对应不同secretKey
        public let channel: String
        
        /// 活动id列表
        public let activityIdList: [Int64]?
        
        /// 过滤状态码，已废弃
        public let status: Int64?
        
        /// 状态码过滤数组，空数组时不过滤
        public let statuses: [Int64]?
        
        /// 根据是否软删除进行过滤，[0]未删除, [1] 删除，不传不过滤
        public let isDeletedList: [Int64]?
        
        public init (channelToken: String, channel: String, activityIdList: [Int64]? = nil, status: Int64? = nil, statuses: [Int64]? = nil, isDeletedList: [Int64]? = nil) {
            self.channelToken = channelToken
            self.channel = channel
            self.activityIdList = activityIdList
            self.status = status
            self.statuses = statuses
            self.isDeletedList = isDeletedList
        }
        
        enum CodingKeys: String, CodingKey {
            case channelToken = "ChannelToken"
            case channel = "Channel"
            case activityIdList = "ActivityIdList"
            case status = "Status"
            case statuses = "Statuses"
            case isDeletedList = "IsDeletedList"
        }
    }
    
    /// DescribeActivityRecord返回参数结构体
    public struct DescribeActivityRecordResponse: TCResponseModel {
        /// 活动记录详情
        public let activityRecords: [ActivityRecordItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case activityRecords = "ActivityRecords"
            case requestId = "RequestId"
        }
    }
    
    /// 查询活动记录信息
    @inlinable
    public func describeActivityRecord(_ input: DescribeActivityRecordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeActivityRecordResponse > {
        self.client.execute(action: "DescribeActivityRecord", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询活动记录信息
    @inlinable
    public func describeActivityRecord(_ input: DescribeActivityRecordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeActivityRecordResponse {
        try await self.client.execute(action: "DescribeActivityRecord", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
