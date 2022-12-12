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
    /// DeleteLoginWhiteList请求参数结构体
    public struct DeleteLoginWhiteListRequest: TCRequestModel {
        /// 白名单ID (最大 100 条)
        public let ids: [UInt64]
        
        public init (ids: [UInt64]) {
            self.ids = ids
        }
        
        enum CodingKeys: String, CodingKey {
            case ids = "Ids"
        }
    }
    
    /// DeleteLoginWhiteList返回参数结构体
    public struct DeleteLoginWhiteListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除异地登录白名单规则
    ///
    /// 本接口用于删除异地登录白名单规则。
    @inlinable
    public func deleteLoginWhiteList(_ input: DeleteLoginWhiteListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteLoginWhiteListResponse > {
        self.client.execute(action: "DeleteLoginWhiteList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除异地登录白名单规则
    ///
    /// 本接口用于删除异地登录白名单规则。
    @inlinable
    public func deleteLoginWhiteList(_ input: DeleteLoginWhiteListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLoginWhiteListResponse {
        try await self.client.execute(action: "DeleteLoginWhiteList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
