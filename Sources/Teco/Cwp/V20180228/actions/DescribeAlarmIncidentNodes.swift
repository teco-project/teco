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

import Logging
import NIOCore
import TecoCore

extension Cwp {
    /// DescribeAlarmIncidentNodes请求参数结构体
    public struct DescribeAlarmIncidentNodesRequest: TCRequestModel {
        /// 机器uuid
        public let uuid: String

        /// 告警vid
        public let alarmVid: String

        /// 告警时间
        public let alarmTime: Int64

        /// 告警来源表ID
        public let tableId: Int64?

        public init(uuid: String, alarmVid: String, alarmTime: Int64, tableId: Int64? = nil) {
            self.uuid = uuid
            self.alarmVid = alarmVid
            self.alarmTime = alarmTime
            self.tableId = tableId
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case alarmVid = "AlarmVid"
            case alarmTime = "AlarmTime"
            case tableId = "TableId"
        }
    }

    /// DescribeAlarmIncidentNodes返回参数结构体
    public struct DescribeAlarmIncidentNodesResponse: TCResponseModel {
        /// 告警点所在事件的所有节点信息,可能包含多事件
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let incidentNodes: [IncidentVertexInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case incidentNodes = "IncidentNodes"
            case requestId = "RequestId"
        }
    }

    /// 获取告警点所在事件的所有节点信息
    @inlinable
    public func describeAlarmIncidentNodes(_ input: DescribeAlarmIncidentNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmIncidentNodesResponse> {
        self.client.execute(action: "DescribeAlarmIncidentNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取告警点所在事件的所有节点信息
    @inlinable
    public func describeAlarmIncidentNodes(_ input: DescribeAlarmIncidentNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmIncidentNodesResponse {
        try await self.client.execute(action: "DescribeAlarmIncidentNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取告警点所在事件的所有节点信息
    @inlinable
    public func describeAlarmIncidentNodes(uuid: String, alarmVid: String, alarmTime: Int64, tableId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmIncidentNodesResponse> {
        self.describeAlarmIncidentNodes(.init(uuid: uuid, alarmVid: alarmVid, alarmTime: alarmTime, tableId: tableId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取告警点所在事件的所有节点信息
    @inlinable
    public func describeAlarmIncidentNodes(uuid: String, alarmVid: String, alarmTime: Int64, tableId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmIncidentNodesResponse {
        try await self.describeAlarmIncidentNodes(.init(uuid: uuid, alarmVid: alarmVid, alarmTime: alarmTime, tableId: tableId), region: region, logger: logger, on: eventLoop)
    }
}
