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

extension Wav {
    /// QueryExternalUserEventList请求参数结构体
    public struct QueryExternalUserEventListRequest: TCRequestModel {
        /// 查询开始时间， 单位秒
        public let beginTime: UInt64

        /// 查询结束时间， 单位秒
        public let endTime: UInt64

        /// 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        public let cursor: String?

        /// 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        public let limit: Int64?

        public init(beginTime: UInt64, endTime: UInt64, cursor: String? = nil, limit: Int64? = nil) {
            self.beginTime = beginTime
            self.endTime = endTime
            self.cursor = cursor
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case cursor = "Cursor"
            case limit = "Limit"
        }
    }

    /// QueryExternalUserEventList返回参数结构体
    public struct QueryExternalUserEventListResponse: TCResponseModel {
        /// 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextCursor: String?

        /// 外部联系人事件信息响应数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageData: [ExternalUserEventInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nextCursor = "NextCursor"
            case pageData = "PageData"
            case requestId = "RequestId"
        }
    }

    /// 查询外部联系人事件明细列表接口
    ///
    /// 通过接口拉取租户在指定时间范围内的外部联系人添加/删除明细，此接口提供的数据以天为维度，查询的时间范围为[StarTime, EndTime]，即前后均为闭区间，支持的最大查询跨度为365天；
    @inlinable
    public func queryExternalUserEventList(_ input: QueryExternalUserEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryExternalUserEventListResponse> {
        self.client.execute(action: "QueryExternalUserEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询外部联系人事件明细列表接口
    ///
    /// 通过接口拉取租户在指定时间范围内的外部联系人添加/删除明细，此接口提供的数据以天为维度，查询的时间范围为[StarTime, EndTime]，即前后均为闭区间，支持的最大查询跨度为365天；
    @inlinable
    public func queryExternalUserEventList(_ input: QueryExternalUserEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryExternalUserEventListResponse {
        try await self.client.execute(action: "QueryExternalUserEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询外部联系人事件明细列表接口
    ///
    /// 通过接口拉取租户在指定时间范围内的外部联系人添加/删除明细，此接口提供的数据以天为维度，查询的时间范围为[StarTime, EndTime]，即前后均为闭区间，支持的最大查询跨度为365天；
    @inlinable
    public func queryExternalUserEventList(beginTime: UInt64, endTime: UInt64, cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryExternalUserEventListResponse> {
        self.queryExternalUserEventList(QueryExternalUserEventListRequest(beginTime: beginTime, endTime: endTime, cursor: cursor, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询外部联系人事件明细列表接口
    ///
    /// 通过接口拉取租户在指定时间范围内的外部联系人添加/删除明细，此接口提供的数据以天为维度，查询的时间范围为[StarTime, EndTime]，即前后均为闭区间，支持的最大查询跨度为365天；
    @inlinable
    public func queryExternalUserEventList(beginTime: UInt64, endTime: UInt64, cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryExternalUserEventListResponse {
        try await self.queryExternalUserEventList(QueryExternalUserEventListRequest(beginTime: beginTime, endTime: endTime, cursor: cursor, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
