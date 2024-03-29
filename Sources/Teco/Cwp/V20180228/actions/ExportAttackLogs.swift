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
    /// ExportAttackLogs请求参数结构体
    public struct ExportAttackLogsRequest: TCRequest {
        /// 过滤条件。
        /// - HttpMethod - String - 是否必填：否 - 攻击方法(POST|GET)
        /// - DateRange - String - 是否必填：否 - 时间范围(存储最近3个月的数据)，如最近一个月["2019-11-17", "2019-12-17"]
        /// - VulType - String 威胁类型 - 是否必填: 否
        /// - SrcIp - String 攻击源IP - 是否必填: 否
        /// - DstIp - String 攻击目标IP - 是否必填: 否
        /// - SrcPort - String 攻击源端口 - 是否必填: 否
        /// - DstPort - String 攻击目标端口 - 是否必填: 否
        public let filters: [Filters]?

        /// 主机安全客户端ID
        public let uuid: String?

        /// 云主机机器ID
        public let quuid: String?

        public init(filters: [Filters]? = nil, uuid: String? = nil, quuid: String? = nil) {
            self.filters = filters
            self.uuid = uuid
            self.quuid = quuid
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case uuid = "Uuid"
            case quuid = "Quuid"
        }
    }

    /// ExportAttackLogs返回参数结构体
    public struct ExportAttackLogsResponse: TCResponse {
        /// 已废弃
        public let downloadUrl: String

        /// 任务ID,需要到接口“异步导出任务”ExportTasks获取DownloadUrl下载地址
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 导出网络攻击日志
    @inlinable
    public func exportAttackLogs(_ input: ExportAttackLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportAttackLogsResponse> {
        self.client.execute(action: "ExportAttackLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出网络攻击日志
    @inlinable
    public func exportAttackLogs(_ input: ExportAttackLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportAttackLogsResponse {
        try await self.client.execute(action: "ExportAttackLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出网络攻击日志
    @inlinable
    public func exportAttackLogs(filters: [Filters]? = nil, uuid: String? = nil, quuid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportAttackLogsResponse> {
        self.exportAttackLogs(.init(filters: filters, uuid: uuid, quuid: quuid), region: region, logger: logger, on: eventLoop)
    }

    /// 导出网络攻击日志
    @inlinable
    public func exportAttackLogs(filters: [Filters]? = nil, uuid: String? = nil, quuid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportAttackLogsResponse {
        try await self.exportAttackLogs(.init(filters: filters, uuid: uuid, quuid: quuid), region: region, logger: logger, on: eventLoop)
    }
}
