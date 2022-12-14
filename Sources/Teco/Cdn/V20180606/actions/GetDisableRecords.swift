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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Cdn {
    /// GetDisableRecords请求参数结构体
    public struct GetDisableRecordsRequest: TCRequestModel {
        /// 指定 URL 查询
        public let url: String?

        /// 开始时间，如：2018-12-12 10:24:00。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var startTime: Date?

        /// 结束时间，如：2018-12-14 10:24:00。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var endTime: Date?

        /// URL 当前状态
        /// disable：当前仍为禁用状态，访问返回 403
        /// enable：当前为可用状态，已解禁，可正常访问
        public let status: String?

        /// 分页查询偏移量，默认为 0
        public let offset: Int64?

        /// 分页查询限制数目，默认为20。
        public let limit: Int64?

        /// 任务ID，任务ID和起始时间需要至少填写一项。
        public let taskId: String?

        public init(url: String? = nil, startTime: Date? = nil, endTime: Date? = nil, status: String? = nil, offset: Int64? = nil, limit: Int64? = nil, taskId: String? = nil) {
            self.url = url
            self.startTime = startTime
            self.endTime = endTime
            self.status = status
            self.offset = offset
            self.limit = limit
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case status = "Status"
            case offset = "Offset"
            case limit = "Limit"
            case taskId = "TaskId"
        }
    }

    /// GetDisableRecords返回参数结构体
    public struct GetDisableRecordsResponse: TCResponseModel {
        /// 封禁历史记录
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let urlRecordList: [UrlRecord]?

        /// 任务总数，用于分页
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case urlRecordList = "UrlRecordList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 禁用历史查询
    ///
    /// GetDisableRecords 用于查询资源禁用历史，及 URL 当前状态。（接口尚在内测中，暂未全量开放使用）
    @inlinable
    public func getDisableRecords(_ input: GetDisableRecordsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetDisableRecordsResponse > {
        self.client.execute(action: "GetDisableRecords", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 禁用历史查询
    ///
    /// GetDisableRecords 用于查询资源禁用历史，及 URL 当前状态。（接口尚在内测中，暂未全量开放使用）
    @inlinable
    public func getDisableRecords(_ input: GetDisableRecordsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDisableRecordsResponse {
        try await self.client.execute(action: "GetDisableRecords", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 禁用历史查询
    ///
    /// GetDisableRecords 用于查询资源禁用历史，及 URL 当前状态。（接口尚在内测中，暂未全量开放使用）
    @inlinable
    public func getDisableRecords(url: String? = nil, startTime: Date? = nil, endTime: Date? = nil, status: String? = nil, offset: Int64? = nil, limit: Int64? = nil, taskId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetDisableRecordsResponse > {
        self.getDisableRecords(GetDisableRecordsRequest(url: url, startTime: startTime, endTime: endTime, status: status, offset: offset, limit: limit, taskId: taskId), logger: logger, on: eventLoop)
    }

    /// 禁用历史查询
    ///
    /// GetDisableRecords 用于查询资源禁用历史，及 URL 当前状态。（接口尚在内测中，暂未全量开放使用）
    @inlinable
    public func getDisableRecords(url: String? = nil, startTime: Date? = nil, endTime: Date? = nil, status: String? = nil, offset: Int64? = nil, limit: Int64? = nil, taskId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDisableRecordsResponse {
        try await self.getDisableRecords(GetDisableRecordsRequest(url: url, startTime: startTime, endTime: endTime, status: status, offset: offset, limit: limit, taskId: taskId), logger: logger, on: eventLoop)
    }
}
