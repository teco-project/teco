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

extension Iotvideoindustry {
    /// 删除消息转发配置
    ///
    /// 删除消息转发配置
    @inlinable
    public func deleteMessageForward(_ input: DeleteMessageForwardRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteMessageForwardResponse > {
        self.client.execute(action: "DeleteMessageForward", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除消息转发配置
    ///
    /// 删除消息转发配置
    @inlinable
    public func deleteMessageForward(_ input: DeleteMessageForwardRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMessageForwardResponse {
        try await self.client.execute(action: "DeleteMessageForward", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteMessageForward请求参数结构体
    public struct DeleteMessageForwardRequest: TCRequestModel {
        /// 配置ID
        public let intId: Int64
        
        public init (intId: Int64) {
            self.intId = intId
        }
        
        enum CodingKeys: String, CodingKey {
            case intId = "IntId"
        }
    }
    
    /// DeleteMessageForward返回参数结构体
    public struct DeleteMessageForwardResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}