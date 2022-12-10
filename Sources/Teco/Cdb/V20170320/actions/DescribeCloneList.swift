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

extension Cdb {
    /// 查询克隆任务列表
    ///
    /// 本接口(DescribeCloneList) 用于查询用户实例的克隆任务列表。
    @inlinable
    public func describeCloneList(_ input: DescribeCloneListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCloneListResponse > {
        self.client.execute(action: "DescribeCloneList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询克隆任务列表
    ///
    /// 本接口(DescribeCloneList) 用于查询用户实例的克隆任务列表。
    @inlinable
    public func describeCloneList(_ input: DescribeCloneListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloneListResponse {
        try await self.client.execute(action: "DescribeCloneList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeCloneList请求参数结构体
    public struct DescribeCloneListRequest: TCRequestModel {
        /// 查询指定源实例的克隆任务列表。
        public let instanceId: String
        
        /// 分页查询时的偏移量，默认值为0。
        public let offset: Int64?
        
        /// 分页查询时的每页条目数，默认值为20。
        public let limit: Int64?
        
        public init (instanceId: String, offset: Int64?, limit: Int64?) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeCloneList返回参数结构体
    public struct DescribeCloneListResponse: TCResponseModel {
        /// 满足条件的条目数。
        public let totalCount: Int64
        
        /// 克隆任务列表。
        public let items: [CloneItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }
}