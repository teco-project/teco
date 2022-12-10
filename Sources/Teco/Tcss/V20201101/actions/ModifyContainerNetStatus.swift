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
    /// 隔离容器网络状态
    ///
    /// 隔离容器网络状态
    @inlinable
    public func modifyContainerNetStatus(_ input: ModifyContainerNetStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyContainerNetStatusResponse > {
        self.client.execute(action: "ModifyContainerNetStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 隔离容器网络状态
    ///
    /// 隔离容器网络状态
    @inlinable
    public func modifyContainerNetStatus(_ input: ModifyContainerNetStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyContainerNetStatusResponse {
        try await self.client.execute(action: "ModifyContainerNetStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyContainerNetStatus请求参数结构体
    public struct ModifyContainerNetStatusRequest: TCRequestModel {
        /// 容器ID
        public let containerID: String
        
        /// 状态(
        /// 隔离容器: EVENT_ISOLATE_CONTAINER
        /// 恢复容器: EVENT_RESOTRE_CONTAINER
        /// )
        public let status: String
        
        public init (containerID: String, status: String) {
            self.containerID = containerID
            self.status = status
        }
        
        enum CodingKeys: String, CodingKey {
            case containerID = "ContainerID"
            case status = "Status"
        }
    }
    
    /// ModifyContainerNetStatus返回参数结构体
    public struct ModifyContainerNetStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}