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

extension Iotexplorer {
    /// DescribeSpaceFenceEventList请求参数结构体
    public struct DescribeSpaceFenceEventListRequest: TCRequestModel {
        /// 位置空间Id
        public let spaceId: String

        /// 围栏告警信息的查询起始时间，Unix时间，单位为毫秒
        public let startTime: Int64

        /// 围栏告警信息的查询结束时间，Unix时间，单位为毫秒
        public let endTime: Int64

        /// 翻页偏移量，0起始
        public let offset: Int64?

        /// 最大返回结果数
        public let limit: Int64?

        public init(spaceId: String, startTime: Int64, endTime: Int64, offset: Int64? = nil, limit: Int64? = nil) {
            self.spaceId = spaceId
            self.startTime = startTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case spaceId = "SpaceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeSpaceFenceEventList返回参数结构体
    public struct DescribeSpaceFenceEventListResponse: TCResponseModel {
        /// 围栏告警事件列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [FenceEventItem]?

        /// 围栏告警事件总数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 获取位置空间中围栏告警事件列表
    @inlinable
    public func describeSpaceFenceEventList(_ input: DescribeSpaceFenceEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSpaceFenceEventListResponse> {
        self.client.execute(action: "DescribeSpaceFenceEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取位置空间中围栏告警事件列表
    @inlinable
    public func describeSpaceFenceEventList(_ input: DescribeSpaceFenceEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSpaceFenceEventListResponse {
        try await self.client.execute(action: "DescribeSpaceFenceEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取位置空间中围栏告警事件列表
    @inlinable
    public func describeSpaceFenceEventList(spaceId: String, startTime: Int64, endTime: Int64, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSpaceFenceEventListResponse> {
        let input = DescribeSpaceFenceEventListRequest(spaceId: spaceId, startTime: startTime, endTime: endTime, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeSpaceFenceEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取位置空间中围栏告警事件列表
    @inlinable
    public func describeSpaceFenceEventList(spaceId: String, startTime: Int64, endTime: Int64, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSpaceFenceEventListResponse {
        let input = DescribeSpaceFenceEventListRequest(spaceId: spaceId, startTime: startTime, endTime: endTime, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeSpaceFenceEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
