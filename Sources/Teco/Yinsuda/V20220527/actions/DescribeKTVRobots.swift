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

extension Yinsuda {
    /// 获取机器人信息
    ///
    /// 获取机器人列表，支持 Id、状态等过滤条件。
    @inlinable
    public func describeKTVRobots(_ input: DescribeKTVRobotsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeKTVRobotsResponse > {
        self.client.execute(action: "DescribeKTVRobots", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取机器人信息
    ///
    /// 获取机器人列表，支持 Id、状态等过滤条件。
    @inlinable
    public func describeKTVRobots(_ input: DescribeKTVRobotsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVRobotsResponse {
        try await self.client.execute(action: "DescribeKTVRobots", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeKTVRobots请求参数结构体
    public struct DescribeKTVRobotsRequest: TCRequestModel {
        /// 应用名称。
        public let appName: String
        
        /// 用户标识。
        public let userId: String
        
        /// 机器人Id列表。
        public let robotIds: [String]?
        
        /// 机器人状态，取值有：
        /// <li>Play：播放</li>
        /// <li>Pause：暂停</li>
        /// <li>Destroy：销毁</li>
        public let statuses: [String]?
        
        /// 匹配创建时间在此时间段内的机器人。
        /// <li>包含所指定的头尾时间点。</li>
        public let createTime: TimeRange
        
        /// 分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条。
        public let offset: Int64?
        
        /// 分页返回的起始偏移量，默认值：10。
        public let limit: Int64?
        
        public init (appName: String, userId: String, robotIds: [String]?, statuses: [String]?, createTime: TimeRange, offset: Int64?, limit: Int64?) {
            self.appName = appName
            self.userId = userId
            self.robotIds = robotIds
            self.statuses = statuses
            self.createTime = createTime
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case userId = "UserId"
            case robotIds = "RobotIds"
            case statuses = "Statuses"
            case createTime = "CreateTime"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeKTVRobots返回参数结构体
    public struct DescribeKTVRobotsResponse: TCResponseModel {
        /// 机器人总数。
        public let totalCount: Int64
        
        /// 机器人信息集合。
        public let ktvRobotInfoSet: [KTVRobotInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case ktvRobotInfoSet = "KTVRobotInfoSet"
            case requestId = "RequestId"
        }
    }
}