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

extension Cwp {
    /// 删除检索模板
    @inlinable
    public func deleteSearchTemplate(_ input: DeleteSearchTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteSearchTemplateResponse > {
        self.client.execute(action: "DeleteSearchTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除检索模板
    @inlinable
    public func deleteSearchTemplate(_ input: DeleteSearchTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSearchTemplateResponse {
        try await self.client.execute(action: "DeleteSearchTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteSearchTemplate请求参数结构体
    public struct DeleteSearchTemplateRequest: TCRequestModel {
        /// 模板ID
        public let id: UInt64
        
        public init (id: UInt64) {
            self.id = id
        }
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }
    
    /// DeleteSearchTemplate返回参数结构体
    public struct DeleteSearchTemplateResponse: TCResponseModel {
        /// 0：成功，非0：失败
        public let status: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }
}
