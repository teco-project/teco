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

extension Dayu {
    /// CreateNetReturn请求参数结构体
    public struct CreateNetReturnRequest: TCRequestModel {
        /// 大禹子产品代号（net表示高防IP专业版）
        public let business: String
        
        /// 资源实例ID
        public let id: String
        
        public init (business: String, id: String) {
            self.business = business
            self.id = id
        }
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
        }
    }
    
    /// CreateNetReturn返回参数结构体
    public struct CreateNetReturnResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 一键切回
    ///
    /// 高防IP专业版一键切回源站
    @inlinable
    public func createNetReturn(_ input: CreateNetReturnRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateNetReturnResponse > {
        self.client.execute(action: "CreateNetReturn", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 一键切回
    ///
    /// 高防IP专业版一键切回源站
    @inlinable
    public func createNetReturn(_ input: CreateNetReturnRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNetReturnResponse {
        try await self.client.execute(action: "CreateNetReturn", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
