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

extension Tsf {
    /// 缩容虚拟机部署组
    ///
    /// 下线部署组所有机器实例
    @inlinable
    public func shrinkGroup(_ input: ShrinkGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ShrinkGroupResponse > {
        self.client.execute(action: "ShrinkGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 缩容虚拟机部署组
    ///
    /// 下线部署组所有机器实例
    @inlinable
    public func shrinkGroup(_ input: ShrinkGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ShrinkGroupResponse {
        try await self.client.execute(action: "ShrinkGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ShrinkGroup请求参数结构体
    public struct ShrinkGroupRequest: TCRequestModel {
        /// 部署组ID
        public let groupId: String
        
        public init (groupId: String) {
            self.groupId = groupId
        }
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }
    
    /// ShrinkGroup返回参数结构体
    public struct ShrinkGroupResponse: TCResponseModel {
        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TaskId
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}