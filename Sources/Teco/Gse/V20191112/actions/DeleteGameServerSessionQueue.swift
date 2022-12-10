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

extension Gse {
    /// 删除游戏服务器会话队列
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DeleteGameServerSessionQueue）用于删除游戏服务器会话队列。
    @inlinable
    public func deleteGameServerSessionQueue(_ input: DeleteGameServerSessionQueueRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteGameServerSessionQueueResponse > {
        self.client.execute(action: "DeleteGameServerSessionQueue", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除游戏服务器会话队列
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DeleteGameServerSessionQueue）用于删除游戏服务器会话队列。
    @inlinable
    public func deleteGameServerSessionQueue(_ input: DeleteGameServerSessionQueueRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGameServerSessionQueueResponse {
        try await self.client.execute(action: "DeleteGameServerSessionQueue", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteGameServerSessionQueue请求参数结构体
    public struct DeleteGameServerSessionQueueRequest: TCRequestModel {
        /// 游戏服务器会话队列名字，长度1~128
        public let name: String
        
        public init (name: String) {
            self.name = name
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }
    
    /// DeleteGameServerSessionQueue返回参数结构体
    public struct DeleteGameServerSessionQueueResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}