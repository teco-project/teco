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

extension Tcss {
    /// 下发刷新任务
    ///
    /// 下发刷新任务，会刷新资产信息
    @inlinable
    public func createRefreshTask(_ input: CreateRefreshTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateRefreshTaskResponse > {
        self.client.execute(action: "CreateRefreshTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 下发刷新任务
    ///
    /// 下发刷新任务，会刷新资产信息
    @inlinable
    public func createRefreshTask(_ input: CreateRefreshTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRefreshTaskResponse {
        try await self.client.execute(action: "CreateRefreshTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateRefreshTask请求参数结构体
    public struct CreateRefreshTaskRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// CreateRefreshTask返回参数结构体
    public struct CreateRefreshTaskResponse: TCResponseModel {
        /// 返回创建的集群检查任务的ID，为0表示创建失败。
        public let taskId: UInt64
        
        /// 创建检查任务的结果，"Succ"为成功，"Failed"为失败
        public let createResult: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case createResult = "CreateResult"
            case requestId = "RequestId"
        }
    }
}