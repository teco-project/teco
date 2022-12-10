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

extension Cdb {
    /// 查询维护时间窗口
    ///
    /// 本接口(DescribeTimeWindow)用于查询云数据库实例的维护时间窗口。
    @inlinable
    public func describeTimeWindow(_ input: DescribeTimeWindowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTimeWindowResponse > {
        self.client.execute(action: "DescribeTimeWindow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询维护时间窗口
    ///
    /// 本接口(DescribeTimeWindow)用于查询云数据库实例的维护时间窗口。
    @inlinable
    public func describeTimeWindow(_ input: DescribeTimeWindowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimeWindowResponse {
        try await self.client.execute(action: "DescribeTimeWindow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTimeWindow请求参数结构体
    public struct DescribeTimeWindowRequest: TCRequestModel {
        /// 实例ID，格式如：cdb-c1nl9rpv或者cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例ID相同。
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// DescribeTimeWindow返回参数结构体
    public struct DescribeTimeWindowResponse: TCResponseModel {
        /// 星期一的可维护时间列表。
        public let monday: [String]
        
        /// 星期二的可维护时间列表。
        public let tuesday: [String]
        
        /// 星期三的可维护时间列表。
        public let wednesday: [String]
        
        /// 星期四的可维护时间列表。
        public let thursday: [String]
        
        /// 星期五的可维护时间列表。
        public let friday: [String]
        
        /// 星期六的可维护时间列表。
        public let saturday: [String]
        
        /// 星期日的可维护时间列表。
        public let sunday: [String]
        
        /// 最大数据延迟阈值
        public let maxDelayTime: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case monday = "Monday"
            case tuesday = "Tuesday"
            case wednesday = "Wednesday"
            case thursday = "Thursday"
            case friday = "Friday"
            case saturday = "Saturday"
            case sunday = "Sunday"
            case maxDelayTime = "MaxDelayTime"
            case requestId = "RequestId"
        }
    }
}
