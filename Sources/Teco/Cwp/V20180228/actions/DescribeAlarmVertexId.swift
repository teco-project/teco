//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

extension Cwp {
    /// DescribeAlarmVertexId请求参数结构体
    public struct DescribeAlarmVertexIdRequest: TCRequestModel {
        /// 机器uuid
        public let uuid: String

        /// 开始时间戳
        public let startTime: Int64

        /// 结束时间戳
        public let endTime: Int64

        public init(uuid: String, startTime: Int64, endTime: Int64) {
            self.uuid = uuid
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeAlarmVertexId返回参数结构体
    public struct DescribeAlarmVertexIdResponse: TCResponseModel {
        /// 告警点id列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alarmVertexIds: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case alarmVertexIds = "AlarmVertexIds"
            case requestId = "RequestId"
        }
    }

    /// 查询告警点id列表
    @inlinable
    public func describeAlarmVertexId(_ input: DescribeAlarmVertexIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmVertexIdResponse> {
        self.client.execute(action: "DescribeAlarmVertexId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询告警点id列表
    @inlinable
    public func describeAlarmVertexId(_ input: DescribeAlarmVertexIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmVertexIdResponse {
        try await self.client.execute(action: "DescribeAlarmVertexId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询告警点id列表
    @inlinable
    public func describeAlarmVertexId(uuid: String, startTime: Int64, endTime: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmVertexIdResponse> {
        self.describeAlarmVertexId(.init(uuid: uuid, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询告警点id列表
    @inlinable
    public func describeAlarmVertexId(uuid: String, startTime: Int64, endTime: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmVertexIdResponse {
        try await self.describeAlarmVertexId(.init(uuid: uuid, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
