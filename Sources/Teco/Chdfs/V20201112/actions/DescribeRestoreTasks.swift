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

extension Chdfs {
    /// 查看回热任务列表
    ///
    /// 通过文件系统ID查看回热任务列表。
    @inlinable
    public func describeRestoreTasks(_ input: DescribeRestoreTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRestoreTasksResponse > {
        self.client.execute(action: "DescribeRestoreTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查看回热任务列表
    ///
    /// 通过文件系统ID查看回热任务列表。
    @inlinable
    public func describeRestoreTasks(_ input: DescribeRestoreTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRestoreTasksResponse {
        try await self.client.execute(action: "DescribeRestoreTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeRestoreTasks请求参数结构体
    public struct DescribeRestoreTasksRequest: TCRequestModel {
        /// 文件系统ID
        public let fileSystemId: String
        
        public init (fileSystemId: String) {
            self.fileSystemId = fileSystemId
        }
        
        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
        }
    }
    
    /// DescribeRestoreTasks返回参数结构体
    public struct DescribeRestoreTasksResponse: TCResponseModel {
        /// 回热任务列表
        public let restoreTasks: [RestoreTask]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case restoreTasks = "RestoreTasks"
            case requestId = "RequestId"
        }
    }
}
