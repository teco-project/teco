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

extension Cfs {
    /// DescribeSnapshotOperationLogs请求参数结构体
    public struct DescribeSnapshotOperationLogsRequest: TCRequestModel {
        /// 文件系统快照ID
        public let snapshotId: String
        
        /// 起始时间
        public let startTime: String
        
        /// 结束时间
        public let endTime: String
        
        public init (snapshotId: String, startTime: String, endTime: String) {
            self.snapshotId = snapshotId
            self.startTime = startTime
            self.endTime = endTime
        }
        
        enum CodingKeys: String, CodingKey {
            case snapshotId = "SnapshotId"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }
    
    /// DescribeSnapshotOperationLogs返回参数结构体
    public struct DescribeSnapshotOperationLogsResponse: TCResponseModel {
        /// 快照ID
        public let snapshotId: String
        
        /// 操作日志
        public let snapshotOperates: [SnapshotOperateLog]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case snapshotId = "SnapshotId"
            case snapshotOperates = "SnapshotOperates"
            case requestId = "RequestId"
        }
    }
    
    /// 查询快照操作日志
    @inlinable
    public func describeSnapshotOperationLogs(_ input: DescribeSnapshotOperationLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSnapshotOperationLogsResponse > {
        self.client.execute(action: "DescribeSnapshotOperationLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询快照操作日志
    @inlinable
    public func describeSnapshotOperationLogs(_ input: DescribeSnapshotOperationLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotOperationLogsResponse {
        try await self.client.execute(action: "DescribeSnapshotOperationLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
