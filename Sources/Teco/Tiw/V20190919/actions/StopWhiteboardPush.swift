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

extension Tiw {
    /// 结束白板推流
    ///
    /// 停止白板推流任务
    @inlinable
    public func stopWhiteboardPush(_ input: StopWhiteboardPushRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopWhiteboardPushResponse > {
        self.client.execute(action: "StopWhiteboardPush", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 结束白板推流
    ///
    /// 停止白板推流任务
    @inlinable
    public func stopWhiteboardPush(_ input: StopWhiteboardPushRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopWhiteboardPushResponse {
        try await self.client.execute(action: "StopWhiteboardPush", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// StopWhiteboardPush请求参数结构体
    public struct StopWhiteboardPushRequest: TCRequestModel {
        /// 客户的SdkAppId
        public let sdkAppId: Int64
        
        /// 需要停止的白板推流任务 Id
        public let taskId: String
        
        public init (sdkAppId: Int64, taskId: String) {
            self.sdkAppId = sdkAppId
            self.taskId = taskId
        }
        
        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case taskId = "TaskId"
        }
    }
    
    /// StopWhiteboardPush返回参数结构体
    public struct StopWhiteboardPushResponse: TCResponseModel {
        /// 备份任务相关参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let backup: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case backup = "Backup"
            case requestId = "RequestId"
        }
    }
}
