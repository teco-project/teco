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

extension Cfg {
    /// 获取演练过程日志
    ///
    /// 获取演练过程中的所有日志
    @inlinable
    public func describeTaskExecuteLogs(_ input: DescribeTaskExecuteLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTaskExecuteLogsResponse > {
        self.client.execute(action: "DescribeTaskExecuteLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取演练过程日志
    ///
    /// 获取演练过程中的所有日志
    @inlinable
    public func describeTaskExecuteLogs(_ input: DescribeTaskExecuteLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskExecuteLogsResponse {
        try await self.client.execute(action: "DescribeTaskExecuteLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTaskExecuteLogs请求参数结构体
    public struct DescribeTaskExecuteLogsRequest: TCRequestModel {
        /// 任务ID
        public let taskId: UInt64
        
        /// 返回的内容行数
        public let limit: UInt64
        
        /// 日志起始的行数。
        public let offset: UInt64
        
        public init (taskId: UInt64, limit: UInt64, offset: UInt64) {
            self.taskId = taskId
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeTaskExecuteLogs返回参数结构体
    public struct DescribeTaskExecuteLogsResponse: TCResponseModel {
        /// 日志数据
        public let logMessage: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case logMessage = "LogMessage"
            case requestId = "RequestId"
        }
    }
}
