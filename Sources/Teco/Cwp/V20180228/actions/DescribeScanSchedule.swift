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

extension Cwp {
    /// DescribeScanSchedule请求参数结构体
    public struct DescribeScanScheduleRequest: TCRequestModel {
        /// 任务id
        public let taskId: UInt64
        
        public init (taskId: UInt64) {
            self.taskId = taskId
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }
    
    /// DescribeScanSchedule返回参数结构体
    public struct DescribeScanScheduleResponse: TCResponseModel {
        /// 检测进度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let schedule: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case schedule = "Schedule"
            case requestId = "RequestId"
        }
    }
    
    /// 查询检测进度
    ///
    /// 根据taskid查询检测进度
    @inlinable
    public func describeScanSchedule(_ input: DescribeScanScheduleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeScanScheduleResponse > {
        self.client.execute(action: "DescribeScanSchedule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询检测进度
    ///
    /// 根据taskid查询检测进度
    @inlinable
    public func describeScanSchedule(_ input: DescribeScanScheduleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanScheduleResponse {
        try await self.client.execute(action: "DescribeScanSchedule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
