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

extension Kms {
    /// ScheduleKeyDeletion请求参数结构体
    public struct ScheduleKeyDeletionRequest: TCRequest {
        /// CMK的唯一标志
        public let keyId: String

        /// 计划删除时间区间[7,30]
        public let pendingWindowInDays: UInt64

        public init(keyId: String, pendingWindowInDays: UInt64) {
            self.keyId = keyId
            self.pendingWindowInDays = pendingWindowInDays
        }

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case pendingWindowInDays = "PendingWindowInDays"
        }
    }

    /// ScheduleKeyDeletion返回参数结构体
    public struct ScheduleKeyDeletionResponse: TCResponse {
        /// 计划删除执行时间
        public let deletionDate: UInt64

        /// 唯一标志被计划删除的CMK
        public let keyId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case deletionDate = "DeletionDate"
            case keyId = "KeyId"
            case requestId = "RequestId"
        }
    }

    /// CMK计划删除接口
    ///
    /// CMK计划删除接口，用于指定CMK删除的时间，可选时间区间为[7,30]天
    @inlinable
    public func scheduleKeyDeletion(_ input: ScheduleKeyDeletionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScheduleKeyDeletionResponse> {
        self.client.execute(action: "ScheduleKeyDeletion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// CMK计划删除接口
    ///
    /// CMK计划删除接口，用于指定CMK删除的时间，可选时间区间为[7,30]天
    @inlinable
    public func scheduleKeyDeletion(_ input: ScheduleKeyDeletionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScheduleKeyDeletionResponse {
        try await self.client.execute(action: "ScheduleKeyDeletion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// CMK计划删除接口
    ///
    /// CMK计划删除接口，用于指定CMK删除的时间，可选时间区间为[7,30]天
    @inlinable
    public func scheduleKeyDeletion(keyId: String, pendingWindowInDays: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScheduleKeyDeletionResponse> {
        self.scheduleKeyDeletion(.init(keyId: keyId, pendingWindowInDays: pendingWindowInDays), region: region, logger: logger, on: eventLoop)
    }

    /// CMK计划删除接口
    ///
    /// CMK计划删除接口，用于指定CMK删除的时间，可选时间区间为[7,30]天
    @inlinable
    public func scheduleKeyDeletion(keyId: String, pendingWindowInDays: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScheduleKeyDeletionResponse {
        try await self.scheduleKeyDeletion(.init(keyId: keyId, pendingWindowInDays: pendingWindowInDays), region: region, logger: logger, on: eventLoop)
    }
}
