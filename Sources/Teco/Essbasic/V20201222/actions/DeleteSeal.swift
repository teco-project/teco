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

extension Essbasic {
    /// 删除印章
    ///
    /// 此接口 (DeleteSeal) 用于删除指定ID的印章。
    /// 注意：默认印章不支持删除
    @inlinable
    public func deleteSeal(_ input: DeleteSealRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteSealResponse > {
        self.client.execute(action: "DeleteSeal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除印章
    ///
    /// 此接口 (DeleteSeal) 用于删除指定ID的印章。
    /// 注意：默认印章不支持删除
    @inlinable
    public func deleteSeal(_ input: DeleteSealRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSealResponse {
        try await self.client.execute(action: "DeleteSeal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteSeal请求参数结构体
    public struct DeleteSealRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller
        
        /// 印章ID
        public let sealId: String
        
        /// 请求删除印章的客户端IP
        public let sourceIp: String
        
        /// 用户唯一标识，默认为空时删除企业印章，如非空则删除个人印章
        public let userId: String?
        
        public init (caller: Caller, sealId: String, sourceIp: String, userId: String?) {
            self.caller = caller
            self.sealId = sealId
            self.sourceIp = sourceIp
            self.userId = userId
        }
        
        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case sealId = "SealId"
            case sourceIp = "SourceIp"
            case userId = "UserId"
        }
    }
    
    /// DeleteSeal返回参数结构体
    public struct DeleteSealResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}