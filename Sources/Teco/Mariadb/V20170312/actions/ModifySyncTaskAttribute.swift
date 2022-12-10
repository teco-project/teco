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

extension Mariadb {
    /// 修改同步任务的属性
    ///
    /// 本接口 (ModifySyncTaskAttribute) 用于修改同步任务的属性（目前只支持修改任务名称）
    @inlinable
    public func modifySyncTaskAttribute(_ input: ModifySyncTaskAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifySyncTaskAttributeResponse > {
        self.client.execute(action: "ModifySyncTaskAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改同步任务的属性
    ///
    /// 本接口 (ModifySyncTaskAttribute) 用于修改同步任务的属性（目前只支持修改任务名称）
    @inlinable
    public func modifySyncTaskAttribute(_ input: ModifySyncTaskAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySyncTaskAttributeResponse {
        try await self.client.execute(action: "ModifySyncTaskAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifySyncTaskAttribute请求参数结构体
    public struct ModifySyncTaskAttributeRequest: TCRequestModel {
        /// 一个或多个待操作的任务ID。可通过DescribeSyncTasks API返回值中的TaskId获取。每次请求允许操作的任务数量上限是100。
        public let taskIds: [String]
        
        /// 任务名称。可任意命名，但不得超过100个字符。
        public let taskName: String?
        
        public init (taskIds: [String], taskName: String?) {
            self.taskIds = taskIds
            self.taskName = taskName
        }
        
        enum CodingKeys: String, CodingKey {
            case taskIds = "TaskIds"
            case taskName = "TaskName"
        }
    }
    
    /// ModifySyncTaskAttribute返回参数结构体
    public struct ModifySyncTaskAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}