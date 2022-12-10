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

extension Rum {
    /// 删除星标项目
    ///
    /// 删除用户名下的星标项目
    @inlinable
    public func deleteStarProject(_ input: DeleteStarProjectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteStarProjectResponse > {
        self.client.execute(action: "DeleteStarProject", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除星标项目
    ///
    /// 删除用户名下的星标项目
    @inlinable
    public func deleteStarProject(_ input: DeleteStarProjectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStarProjectResponse {
        try await self.client.execute(action: "DeleteStarProject", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteStarProject请求参数结构体
    public struct DeleteStarProjectRequest: TCRequestModel {
        /// 实例ID：taw-123
        public let instanceID: String
        
        /// 项目ID
        public let id: Int64
        
        public init (instanceID: String, id: Int64) {
            self.instanceID = instanceID
            self.id = id
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceID = "InstanceID"
            case id = "ID"
        }
    }
    
    /// DeleteStarProject返回参数结构体
    public struct DeleteStarProjectResponse: TCResponseModel {
        /// 返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }
}