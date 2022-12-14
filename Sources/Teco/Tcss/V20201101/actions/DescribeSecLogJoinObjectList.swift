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

extension Tcss {
    /// DescribeSecLogJoinObjectList请求参数结构体
    public struct DescribeSecLogJoinObjectListRequest: TCRequestModel {
        /// 日志类型
        /// bash: "container_bash",
        /// 启动: "container_launch",
        /// "k8s": "k8s_api"
        public let logType: String

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Status- String - 是否必填：否 - 主机状态 </li>
        /// <li>HostIP- String - 是否必填：否 - 主机内网IP </li>
        /// <li>PublicIP- String - 是否必填：否 - 主机外网IP </li>
        /// <li>HostName- String - 是否必填：否 - 主机名称 </li>
        public let filters: [RunTimeFilters]?

        /// 排序字段
        public let by: String?

        /// 排序方式
        public let order: String?

        public init(logType: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, by: String? = nil, order: String? = nil) {
            self.logType = logType
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.by = by
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case logType = "LogType"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case by = "By"
            case order = "Order"
        }
    }

    /// DescribeSecLogJoinObjectList返回参数结构体
    public struct DescribeSecLogJoinObjectListResponse: TCResponseModel {
        /// 总数
        public let totalCount: UInt64

        /// 接入对象列表
        public let list: [SecLogJoinObjectInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }
    }

    /// 查询安全日志接入对象列表
    @inlinable
    public func describeSecLogJoinObjectList(_ input: DescribeSecLogJoinObjectListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSecLogJoinObjectListResponse > {
        self.client.execute(action: "DescribeSecLogJoinObjectList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询安全日志接入对象列表
    @inlinable
    public func describeSecLogJoinObjectList(_ input: DescribeSecLogJoinObjectListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecLogJoinObjectListResponse {
        try await self.client.execute(action: "DescribeSecLogJoinObjectList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询安全日志接入对象列表
    @inlinable
    public func describeSecLogJoinObjectList(logType: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, by: String? = nil, order: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSecLogJoinObjectListResponse > {
        self.describeSecLogJoinObjectList(DescribeSecLogJoinObjectListRequest(logType: logType, limit: limit, offset: offset, filters: filters, by: by, order: order), logger: logger, on: eventLoop)
    }

    /// 查询安全日志接入对象列表
    @inlinable
    public func describeSecLogJoinObjectList(logType: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, by: String? = nil, order: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecLogJoinObjectListResponse {
        try await self.describeSecLogJoinObjectList(DescribeSecLogJoinObjectListRequest(logType: logType, limit: limit, offset: offset, filters: filters, by: by, order: order), logger: logger, on: eventLoop)
    }
}
