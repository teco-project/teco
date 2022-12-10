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

extension Bm {
    /// 解除标签与预授权规则的绑定
    @inlinable
    public func unbindPsaTag(_ input: UnbindPsaTagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UnbindPsaTagResponse > {
        self.client.execute(action: "UnbindPsaTag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 解除标签与预授权规则的绑定
    @inlinable
    public func unbindPsaTag(_ input: UnbindPsaTagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindPsaTagResponse {
        try await self.client.execute(action: "UnbindPsaTag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UnbindPsaTag请求参数结构体
    public struct UnbindPsaTagRequest: TCRequestModel {
        /// 预授权规则ID
        public let psaId: String
        
        /// 需要解绑的标签key
        public let tagKey: String
        
        /// 需要解绑的标签value
        public let tagValue: String
        
        public init (psaId: String, tagKey: String, tagValue: String) {
            self.psaId = psaId
            self.tagKey = tagKey
            self.tagValue = tagValue
        }
        
        enum CodingKeys: String, CodingKey {
            case psaId = "PsaId"
            case tagKey = "TagKey"
            case tagValue = "TagValue"
        }
    }
    
    /// UnbindPsaTag返回参数结构体
    public struct UnbindPsaTagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
