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

import TecoCore

extension Cloudaudit {
    /// DescribeAuditTrack请求参数结构体
    public struct DescribeAuditTrackRequest: TCRequestModel {
        /// 跟踪集 ID
        public let trackId: UInt64

        public init(trackId: UInt64) {
            self.trackId = trackId
        }

        enum CodingKeys: String, CodingKey {
            case trackId = "TrackId"
        }
    }

    /// DescribeAuditTrack返回参数结构体
    public struct DescribeAuditTrackResponse: TCResponseModel {
        /// 跟踪集名称
        public let name: String

        /// 跟踪事件类型（读：Read；写：Write；全部：*）
        public let actionType: String

        /// 跟踪事件所属产品（如：cos，全部：*）
        public let resourceType: String

        /// 跟踪集状态（未开启：0；开启：1）
        public let status: UInt64

        /// 跟踪事件接口名列表（全部：[*]）
        public let eventNames: [String]

        /// 数据投递存储（目前支持 cos、cls）
        public let storage: Storage

        /// 跟踪集创建时间
        public let createTime: String

        /// 是否开启将集团成员操作日志投递到集团管理账号或者可信服务管理账号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let trackForAllMembers: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case actionType = "ActionType"
            case resourceType = "ResourceType"
            case status = "Status"
            case eventNames = "EventNames"
            case storage = "Storage"
            case createTime = "CreateTime"
            case trackForAllMembers = "TrackForAllMembers"
            case requestId = "RequestId"
        }
    }

    /// 查询云审计跟踪集详情
    @inlinable
    public func describeAuditTrack(_ input: DescribeAuditTrackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuditTrackResponse> {
        self.client.execute(action: "DescribeAuditTrack", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云审计跟踪集详情
    @inlinable
    public func describeAuditTrack(_ input: DescribeAuditTrackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditTrackResponse {
        try await self.client.execute(action: "DescribeAuditTrack", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云审计跟踪集详情
    @inlinable
    public func describeAuditTrack(trackId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuditTrackResponse> {
        self.describeAuditTrack(.init(trackId: trackId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云审计跟踪集详情
    @inlinable
    public func describeAuditTrack(trackId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditTrackResponse {
        try await self.describeAuditTrack(.init(trackId: trackId), region: region, logger: logger, on: eventLoop)
    }
}
