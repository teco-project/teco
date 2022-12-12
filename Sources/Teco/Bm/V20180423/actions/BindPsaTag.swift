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
    /// BindPsaTag请求参数结构体
    public struct BindPsaTagRequest: TCRequestModel {
        /// 预授权规则ID
        public let psaId: String
        
        /// 需要绑定的标签key
        public let tagKey: String
        
        /// 需要绑定的标签value
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
    
    /// BindPsaTag返回参数结构体
    public struct BindPsaTagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 为预授权规则绑定标签
    @inlinable
    public func bindPsaTag(_ input: BindPsaTagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < BindPsaTagResponse > {
        self.client.execute(action: "BindPsaTag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 为预授权规则绑定标签
    @inlinable
    public func bindPsaTag(_ input: BindPsaTagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindPsaTagResponse {
        try await self.client.execute(action: "BindPsaTag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
