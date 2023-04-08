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

extension Rum {
    /// DescribeRumLogExport请求参数结构体
    public struct DescribeRumLogExportRequest: TCRequestModel {
        /// 导出标识name
        public let name: String

        /// 开始时间（必填）
        public let startTime: String

        /// 查询语句，参考控制台请求参数，语句长度最大为4096（必填）
        public let query: String

        /// 结束时间（必填）
        public let endTime: String

        /// 项目ID（必填）
        public let id: Int64

        /// field条件
        public let fields: [String]?

        public init(name: String, startTime: String, query: String, endTime: String, id: Int64, fields: [String]? = nil) {
            self.name = name
            self.startTime = startTime
            self.query = query
            self.endTime = endTime
            self.id = id
            self.fields = fields
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case startTime = "StartTime"
            case query = "Query"
            case endTime = "EndTime"
            case id = "ID"
            case fields = "Fields"
        }
    }

    /// DescribeRumLogExport返回参数结构体
    public struct DescribeRumLogExportResponse: TCResponseModel {
        /// 返回字符串
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 导出Rum日志列表
    ///
    /// 获取项目下的日志列表（实例创建的项目下的日志列表）
    @inlinable
    public func describeRumLogExport(_ input: DescribeRumLogExportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRumLogExportResponse> {
        self.client.execute(action: "DescribeRumLogExport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出Rum日志列表
    ///
    /// 获取项目下的日志列表（实例创建的项目下的日志列表）
    @inlinable
    public func describeRumLogExport(_ input: DescribeRumLogExportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRumLogExportResponse {
        try await self.client.execute(action: "DescribeRumLogExport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出Rum日志列表
    ///
    /// 获取项目下的日志列表（实例创建的项目下的日志列表）
    @inlinable
    public func describeRumLogExport(name: String, startTime: String, query: String, endTime: String, id: Int64, fields: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRumLogExportResponse> {
        self.describeRumLogExport(.init(name: name, startTime: startTime, query: query, endTime: endTime, id: id, fields: fields), region: region, logger: logger, on: eventLoop)
    }

    /// 导出Rum日志列表
    ///
    /// 获取项目下的日志列表（实例创建的项目下的日志列表）
    @inlinable
    public func describeRumLogExport(name: String, startTime: String, query: String, endTime: String, id: Int64, fields: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRumLogExportResponse {
        try await self.describeRumLogExport(.init(name: name, startTime: startTime, query: query, endTime: endTime, id: id, fields: fields), region: region, logger: logger, on: eventLoop)
    }
}
