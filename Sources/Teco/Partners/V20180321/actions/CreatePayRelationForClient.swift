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

extension Partners {
    /// CreatePayRelationForClient请求参数结构体
    public struct CreatePayRelationForClientRequest: TCRequestModel {
        /// 客户账号ID
        public let clientUin: String
        
        public init (clientUin: String) {
            self.clientUin = clientUin
        }
        
        enum CodingKeys: String, CodingKey {
            case clientUin = "ClientUin"
        }
    }
    
    /// CreatePayRelationForClient返回参数结构体
    public struct CreatePayRelationForClientResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 合作伙伴为客户创建强代付关系
    @inlinable
    public func createPayRelationForClient(_ input: CreatePayRelationForClientRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreatePayRelationForClientResponse > {
        self.client.execute(action: "CreatePayRelationForClient", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 合作伙伴为客户创建强代付关系
    @inlinable
    public func createPayRelationForClient(_ input: CreatePayRelationForClientRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePayRelationForClientResponse {
        try await self.client.execute(action: "CreatePayRelationForClient", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
