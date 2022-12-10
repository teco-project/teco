//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Kms {
    /// CMK计划删除接口
    ///
    /// CMK计划删除接口，用于指定CMK删除的时间，可选时间区间为[7,30]天
    @inlinable
    public func scheduleKeyDeletion(_ input: ScheduleKeyDeletionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ScheduleKeyDeletionResponse > {
        self.client.execute(action: "ScheduleKeyDeletion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// CMK计划删除接口
    ///
    /// CMK计划删除接口，用于指定CMK删除的时间，可选时间区间为[7,30]天
    @inlinable
    public func scheduleKeyDeletion(_ input: ScheduleKeyDeletionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScheduleKeyDeletionResponse {
        try await self.client.execute(action: "ScheduleKeyDeletion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ScheduleKeyDeletion请求参数结构体
    public struct ScheduleKeyDeletionRequest: TCRequestModel {
        /// CMK的唯一标志
        public let keyId: String
        
        /// 计划删除时间区间[7,30]
        public let pendingWindowInDays: UInt64
        
        public init (keyId: String, pendingWindowInDays: UInt64) {
            self.keyId = keyId
            self.pendingWindowInDays = pendingWindowInDays
        }
        
        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case pendingWindowInDays = "PendingWindowInDays"
        }
    }
    
    /// ScheduleKeyDeletion返回参数结构体
    public struct ScheduleKeyDeletionResponse: TCResponseModel {
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
}