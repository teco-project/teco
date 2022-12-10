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

extension Clb {
    /// 获取目标组列表
    @inlinable
    public func describeTargetGroupList(_ input: DescribeTargetGroupListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTargetGroupListResponse > {
        self.client.execute(action: "DescribeTargetGroupList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取目标组列表
    @inlinable
    public func describeTargetGroupList(_ input: DescribeTargetGroupListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTargetGroupListResponse {
        try await self.client.execute(action: "DescribeTargetGroupList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTargetGroupList请求参数结构体
    public struct DescribeTargetGroupListRequest: TCRequestModel {
        /// 目标组ID数组。
        public let targetGroupIds: [String]?
        
        /// 过滤条件数组，支持TargetGroupVpcId和TargetGroupName。与TargetGroupIds互斥，优先使用目标组ID。
        public let filters: [Filter]?
        
        /// 显示的偏移起始量。
        public let offset: UInt64?
        
        /// 显示条数限制，默认为20。
        public let limit: UInt64?
        
        public init (targetGroupIds: [String]?, filters: [Filter]?, offset: UInt64?, limit: UInt64?) {
            self.targetGroupIds = targetGroupIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case targetGroupIds = "TargetGroupIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeTargetGroupList返回参数结构体
    public struct DescribeTargetGroupListResponse: TCResponseModel {
        /// 显示的结果数量。
        public let totalCount: UInt64
        
        /// 显示的目标组信息集合。
        public let targetGroupSet: [TargetGroupInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case targetGroupSet = "TargetGroupSet"
            case requestId = "RequestId"
        }
    }
}
