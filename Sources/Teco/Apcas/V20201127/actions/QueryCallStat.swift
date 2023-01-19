//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Apcas {
    /// QueryCallStat请求参数结构体
    public struct QueryCallStatRequest: TCRequestModel {
        /// 请求类型 1:人群特征洞察统计 2:购车意向预测统计
        public let type: UInt64

        /// 开始时间戳（毫秒）
        public let startTime: UInt64

        /// 结束时间戳（毫秒）
        public let endTime: UInt64

        public init(type: UInt64, startTime: UInt64, endTime: UInt64) {
            self.type = type
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// QueryCallStat返回参数结构体
    public struct QueryCallStatResponse: TCResponseModel {
        /// 调用量数组
        public let callSet: [CallStatItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case callSet = "CallSet"
            case requestId = "RequestId"
        }
    }

    /// 获取调用量统计
    ///
    /// 按时间维度获取调用量统计
    @inlinable
    public func queryCallStat(_ input: QueryCallStatRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryCallStatResponse> {
        self.client.execute(action: "QueryCallStat", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取调用量统计
    ///
    /// 按时间维度获取调用量统计
    @inlinable
    public func queryCallStat(_ input: QueryCallStatRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCallStatResponse {
        try await self.client.execute(action: "QueryCallStat", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取调用量统计
    ///
    /// 按时间维度获取调用量统计
    @inlinable
    public func queryCallStat(type: UInt64, startTime: UInt64, endTime: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryCallStatResponse> {
        self.queryCallStat(QueryCallStatRequest(type: type, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取调用量统计
    ///
    /// 按时间维度获取调用量统计
    @inlinable
    public func queryCallStat(type: UInt64, startTime: UInt64, endTime: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCallStatResponse {
        try await self.queryCallStat(QueryCallStatRequest(type: type, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
