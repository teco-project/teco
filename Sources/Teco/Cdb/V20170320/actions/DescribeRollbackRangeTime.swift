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
    /// 查询可回档时间
    ///
    /// 本接口(DescribeRollbackRangeTime)用于查询云数据库实例可回档的时间范围。
    @inlinable
    public func describeRollbackRangeTime(_ input: DescribeRollbackRangeTimeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRollbackRangeTimeResponse > {
        self.client.execute(action: "DescribeRollbackRangeTime", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询可回档时间
    ///
    /// 本接口(DescribeRollbackRangeTime)用于查询云数据库实例可回档的时间范围。
    @inlinable
    public func describeRollbackRangeTime(_ input: DescribeRollbackRangeTimeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRollbackRangeTimeResponse {
        try await self.client.execute(action: "DescribeRollbackRangeTime", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeRollbackRangeTime请求参数结构体
    public struct DescribeRollbackRangeTimeRequest: TCRequestModel {
        /// 实例 ID 列表，单个实例 ID 的格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceIds: [String]
        
        public init (instanceIds: [String]) {
            self.instanceIds = instanceIds
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }
    
    /// DescribeRollbackRangeTime返回参数结构体
    public struct DescribeRollbackRangeTimeResponse: TCResponseModel {
        /// 符合查询条件的实例总数。
        public let totalCount: Int64
        
        /// 返回的参数信息。
        public let items: [InstanceRollbackRangeTime]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }
}
