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

extension Wedata {
    /// 查询任务脚本【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 查询任务脚本
    @inlinable
    public func describeTaskScript(_ input: DescribeTaskScriptRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTaskScriptResponse > {
        self.client.execute(action: "DescribeTaskScript", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询任务脚本【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 查询任务脚本
    @inlinable
    public func describeTaskScript(_ input: DescribeTaskScriptRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskScriptResponse {
        try await self.client.execute(action: "DescribeTaskScript", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTaskScript请求参数结构体
    public struct DescribeTaskScriptRequest: TCRequestModel {
        /// 项目Id
        public let projectId: String
        
        /// 任务ID
        public let taskId: String
        
        public init (projectId: String, taskId: String) {
            self.projectId = projectId
            self.taskId = taskId
        }
        
        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case taskId = "TaskId"
        }
    }
    
    /// DescribeTaskScript返回参数结构体
    public struct DescribeTaskScriptResponse: TCResponseModel {
        /// 任务脚本内容
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: TaskScriptContent
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}