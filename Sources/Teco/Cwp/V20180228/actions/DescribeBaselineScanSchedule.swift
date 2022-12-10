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
    /// 基线检测进度查询
    ///
    /// 根据任务id查询基线检测进度
    @inlinable
    public func describeBaselineScanSchedule(_ input: DescribeBaselineScanScheduleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBaselineScanScheduleResponse > {
        self.client.execute(action: "DescribeBaselineScanSchedule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 基线检测进度查询
    ///
    /// 根据任务id查询基线检测进度
    @inlinable
    public func describeBaselineScanSchedule(_ input: DescribeBaselineScanScheduleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineScanScheduleResponse {
        try await self.client.execute(action: "DescribeBaselineScanSchedule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBaselineScanSchedule请求参数结构体
    public struct DescribeBaselineScanScheduleRequest: TCRequestModel {
        /// 任务id
        public let taskId: UInt64
        
        public init (taskId: UInt64) {
            self.taskId = taskId
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }
    
    /// DescribeBaselineScanSchedule返回参数结构体
    public struct DescribeBaselineScanScheduleResponse: TCResponseModel {
        /// 检测进度(百分比)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let schedule: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case schedule = "Schedule"
            case requestId = "RequestId"
        }
    }
}
