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

extension Redis {
    /// DescribeSlowLog请求参数结构体
    public struct DescribeSlowLogRequest: TCRequestModel {
        /// 实例Id。
        public let instanceId: String

        /// 开始时间。
        public let beginTime: String

        /// 结束时间。
        public let endTime: String

        /// 慢查询平均执行时间阈值（单位：微秒）。
        public let minQueryTime: Int64?

        /// 每个页面展示的慢查询条数，默认值为20。
        public let limit: Int64?

        /// 慢查询条数的偏移量，取Limit整数倍。
        public let offset: Int64?

        /// 节点所属角色。<ul><li>master：主节点。</li><li>slave：从节点。</li></ul>
        public let role: String?

        public init(instanceId: String, beginTime: String, endTime: String, minQueryTime: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, role: String? = nil) {
            self.instanceId = instanceId
            self.beginTime = beginTime
            self.endTime = endTime
            self.minQueryTime = minQueryTime
            self.limit = limit
            self.offset = offset
            self.role = role
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case minQueryTime = "MinQueryTime"
            case limit = "Limit"
            case offset = "Offset"
            case role = "Role"
        }
    }

    /// DescribeSlowLog返回参数结构体
    public struct DescribeSlowLogResponse: TCResponseModel {
        /// 慢查询总数。
        public let totalCount: Int64

        /// 慢查询详情。
        public let instanceSlowlogDetail: [InstanceSlowlogDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceSlowlogDetail = "InstanceSlowlogDetail"
            case requestId = "RequestId"
        }
    }

    /// 查询实例慢查询记录
    ///
    /// 本接口（DescribeSlowLog）查询实例慢查询记录。
    @inlinable
    public func describeSlowLog(_ input: DescribeSlowLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSlowLogResponse > {
        self.client.execute(action: "DescribeSlowLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例慢查询记录
    ///
    /// 本接口（DescribeSlowLog）查询实例慢查询记录。
    @inlinable
    public func describeSlowLog(_ input: DescribeSlowLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowLogResponse {
        try await self.client.execute(action: "DescribeSlowLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例慢查询记录
    ///
    /// 本接口（DescribeSlowLog）查询实例慢查询记录。
    @inlinable
    public func describeSlowLog(instanceId: String, beginTime: String, endTime: String, minQueryTime: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, role: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSlowLogResponse > {
        self.describeSlowLog(DescribeSlowLogRequest(instanceId: instanceId, beginTime: beginTime, endTime: endTime, minQueryTime: minQueryTime, limit: limit, offset: offset, role: role), logger: logger, on: eventLoop)
    }

    /// 查询实例慢查询记录
    ///
    /// 本接口（DescribeSlowLog）查询实例慢查询记录。
    @inlinable
    public func describeSlowLog(instanceId: String, beginTime: String, endTime: String, minQueryTime: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, role: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowLogResponse {
        try await self.describeSlowLog(DescribeSlowLogRequest(instanceId: instanceId, beginTime: beginTime, endTime: endTime, minQueryTime: minQueryTime, limit: limit, offset: offset, role: role), logger: logger, on: eventLoop)
    }
}
