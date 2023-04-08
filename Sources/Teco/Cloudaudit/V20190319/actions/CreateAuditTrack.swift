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
    /// CreateAuditTrack请求参数结构体
    public struct CreateAuditTrackRequest: TCRequestModel {
        /// 跟踪集名称，仅支持大小写字母、数字、-以及_的组合，3-48个字符
        public let name: String

        /// 跟踪事件类型（读：Read；写：Write；全部：*）
        public let actionType: String

        /// 跟踪事件所属产品（支持全部产品或单个产品，如：cos，全部：*）
        public let resourceType: String

        /// 跟踪集状态（未开启：0；开启：1）
        public let status: UInt64

        /// 跟踪事件接口名列表（ResourceType为 * 时，EventNames必须为全部：["*"]；指定ResourceType时，支持全部接口：["*"]；支持部分接口：["cos", "cls"]，接口列表上限10个）
        public let eventNames: [String]

        /// 数据投递存储（目前支持 cos、cls）
        public let storage: Storage

        /// 是否开启将集团成员操作日志投递到集团管理账号或者可信服务管理账号(0：未开启，1：开启，只能集团管理账号或者可信服务管理账号开启此项功能)
        public let trackForAllMembers: UInt64?

        public init(name: String, actionType: String, resourceType: String, status: UInt64, eventNames: [String], storage: Storage, trackForAllMembers: UInt64? = nil) {
            self.name = name
            self.actionType = actionType
            self.resourceType = resourceType
            self.status = status
            self.eventNames = eventNames
            self.storage = storage
            self.trackForAllMembers = trackForAllMembers
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case actionType = "ActionType"
            case resourceType = "ResourceType"
            case status = "Status"
            case eventNames = "EventNames"
            case storage = "Storage"
            case trackForAllMembers = "TrackForAllMembers"
        }
    }

    /// CreateAuditTrack返回参数结构体
    public struct CreateAuditTrackResponse: TCResponseModel {
        /// 跟踪集 ID
        public let trackId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case trackId = "TrackId"
            case requestId = "RequestId"
        }
    }

    /// 创建云审计跟踪集
    ///
    /// 创建跟踪集
    @inlinable
    public func createAuditTrack(_ input: CreateAuditTrackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAuditTrackResponse> {
        self.client.execute(action: "CreateAuditTrack", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建云审计跟踪集
    ///
    /// 创建跟踪集
    @inlinable
    public func createAuditTrack(_ input: CreateAuditTrackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAuditTrackResponse {
        try await self.client.execute(action: "CreateAuditTrack", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建云审计跟踪集
    ///
    /// 创建跟踪集
    @inlinable
    public func createAuditTrack(name: String, actionType: String, resourceType: String, status: UInt64, eventNames: [String], storage: Storage, trackForAllMembers: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAuditTrackResponse> {
        self.createAuditTrack(.init(name: name, actionType: actionType, resourceType: resourceType, status: status, eventNames: eventNames, storage: storage, trackForAllMembers: trackForAllMembers), region: region, logger: logger, on: eventLoop)
    }

    /// 创建云审计跟踪集
    ///
    /// 创建跟踪集
    @inlinable
    public func createAuditTrack(name: String, actionType: String, resourceType: String, status: UInt64, eventNames: [String], storage: Storage, trackForAllMembers: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAuditTrackResponse {
        try await self.createAuditTrack(.init(name: name, actionType: actionType, resourceType: resourceType, status: status, eventNames: eventNames, storage: storage, trackForAllMembers: trackForAllMembers), region: region, logger: logger, on: eventLoop)
    }
}
